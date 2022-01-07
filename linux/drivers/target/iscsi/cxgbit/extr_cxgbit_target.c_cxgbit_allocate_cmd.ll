; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_allocate_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_allocate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32 }
%struct.cxgbit_sock = type { %struct.TYPE_4__, %struct.iscsi_conn* }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_conn = type { i32 }
%struct.cxgbi_ppm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cxgbit_cmd = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate iscsi_cmd + cxgbit_cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cmd* (%struct.cxgbit_sock*)* @cxgbit_allocate_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cmd* @cxgbit_allocate_cmd(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca %struct.iscsi_cmd*, align 8
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.cxgbi_ppm*, align 8
  %6 = alloca %struct.cxgbit_cmd*, align 8
  %7 = alloca %struct.iscsi_cmd*, align 8
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  %8 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %8, i32 0, i32 1
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_conn* %10, %struct.iscsi_conn** %4, align 8
  %11 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %12 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.cxgbi_ppm* @cdev2ppm(i32 %14)
  store %struct.cxgbi_ppm* %15, %struct.cxgbi_ppm** %5, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %17 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %18 = call %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %16, i32 %17)
  store %struct.iscsi_cmd* %18, %struct.iscsi_cmd** %7, align 8
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %20 = icmp ne %struct.iscsi_cmd* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %2, align 8
  br label %36

23:                                               ; preds = %1
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %25 = call %struct.cxgbit_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %24)
  store %struct.cxgbit_cmd* %25, %struct.cxgbit_cmd** %6, align 8
  %26 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %5, align 8
  %27 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  store %struct.iscsi_cmd* %35, %struct.iscsi_cmd** %2, align 8
  br label %36

36:                                               ; preds = %23, %21
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  ret %struct.iscsi_cmd* %37
}

declare dso_local %struct.cxgbi_ppm* @cdev2ppm(i32) #1

declare dso_local %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.cxgbit_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
