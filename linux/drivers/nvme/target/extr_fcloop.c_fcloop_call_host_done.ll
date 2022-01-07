; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_call_host_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_call_host_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmefc_fcp_req = type { i32, i32 (%struct.nvmefc_fcp_req*)*, %struct.fcloop_ini_fcpreq* }
%struct.fcloop_ini_fcpreq = type { i32, i32* }
%struct.fcloop_fcpreq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmefc_fcp_req*, %struct.fcloop_fcpreq*, i32)* @fcloop_call_host_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcloop_call_host_done(%struct.nvmefc_fcp_req* %0, %struct.fcloop_fcpreq* %1, i32 %2) #0 {
  %4 = alloca %struct.nvmefc_fcp_req*, align 8
  %5 = alloca %struct.fcloop_fcpreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fcloop_ini_fcpreq*, align 8
  store %struct.nvmefc_fcp_req* %0, %struct.nvmefc_fcp_req** %4, align 8
  store %struct.fcloop_fcpreq* %1, %struct.fcloop_fcpreq** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.fcloop_ini_fcpreq* null, %struct.fcloop_ini_fcpreq** %7, align 8
  %8 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %4, align 8
  %9 = icmp ne %struct.nvmefc_fcp_req* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %4, align 8
  %12 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %11, i32 0, i32 2
  %13 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %12, align 8
  store %struct.fcloop_ini_fcpreq* %13, %struct.fcloop_ini_fcpreq** %7, align 8
  %14 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %7, align 8
  %15 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %7, align 8
  %18 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %7, align 8
  %20 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %4, align 8
  %24 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %4, align 8
  %26 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %25, i32 0, i32 1
  %27 = load i32 (%struct.nvmefc_fcp_req*)*, i32 (%struct.nvmefc_fcp_req*)** %26, align 8
  %28 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %4, align 8
  %29 = call i32 %27(%struct.nvmefc_fcp_req* %28)
  br label %30

30:                                               ; preds = %10, %3
  %31 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %5, align 8
  %32 = call i32 @fcloop_tfcp_req_put(%struct.fcloop_fcpreq* %31)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fcloop_tfcp_req_put(%struct.fcloop_fcpreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
