; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_fcp_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_fcp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i32 }
%struct.nvme_fc_remote_port = type { i32 }
%struct.nvmefc_fcp_req = type { %struct.fcloop_ini_fcpreq* }
%struct.fcloop_ini_fcpreq = type { i32, %struct.fcloop_fcpreq* }
%struct.fcloop_fcpreq = type { i32, i32, i32 }

@INI_IO_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, i8*, %struct.nvmefc_fcp_req*)* @fcloop_fcp_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcloop_fcp_abort(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, i8* %2, %struct.nvmefc_fcp_req* %3) #0 {
  %5 = alloca %struct.nvme_fc_local_port*, align 8
  %6 = alloca %struct.nvme_fc_remote_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvmefc_fcp_req*, align 8
  %9 = alloca %struct.fcloop_ini_fcpreq*, align 8
  %10 = alloca %struct.fcloop_fcpreq*, align 8
  %11 = alloca i32, align 4
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %5, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.nvmefc_fcp_req* %3, %struct.nvmefc_fcp_req** %8, align 8
  %12 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %13 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %12, i32 0, i32 0
  %14 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %13, align 8
  store %struct.fcloop_ini_fcpreq* %14, %struct.fcloop_ini_fcpreq** %9, align 8
  store i32 1, i32* %11, align 4
  %15 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %9, align 8
  %16 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %9, align 8
  %19 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %18, i32 0, i32 1
  %20 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %19, align 8
  store %struct.fcloop_fcpreq* %20, %struct.fcloop_fcpreq** %10, align 8
  %21 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %22 = icmp ne %struct.fcloop_fcpreq* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %25 = call i32 @fcloop_tfcp_req_get(%struct.fcloop_fcpreq* %24)
  br label %26

26:                                               ; preds = %23, %4
  %27 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %9, align 8
  %28 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %31 = icmp ne %struct.fcloop_fcpreq* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %67

33:                                               ; preds = %26
  %34 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %35 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %34, i32 0, i32 2
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %38 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %45 [
    i32 128, label %40
    i32 130, label %40
    i32 129, label %44
  ]

40:                                               ; preds = %33, %33
  %41 = load i32, i32* @INI_IO_ABORTED, align 4
  %42 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %43 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %50

44:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %50

45:                                               ; preds = %33
  %46 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %47 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = call i32 @WARN_ON(i32 1)
  br label %67

50:                                               ; preds = %44, %40
  %51 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %52 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %58 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %57, i32 0, i32 1
  %59 = call i32 @schedule_work(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  br label %67

64:                                               ; preds = %50
  %65 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %10, align 8
  %66 = call i32 @fcloop_tfcp_req_put(%struct.fcloop_fcpreq* %65)
  br label %67

67:                                               ; preds = %32, %45, %64, %56
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fcloop_tfcp_req_get(%struct.fcloop_fcpreq*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @fcloop_tfcp_req_put(%struct.fcloop_fcpreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
