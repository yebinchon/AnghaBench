; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_wait_for_vport_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_wait_for_vport_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_host_attrs = type { i64 }

@QEDF_LOG_NPIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Entered.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Waiting for all vports to be reaped.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*)* @qedf_wait_for_vport_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_wait_for_vport_destroy(%struct.qedf_ctx* %0) #0 {
  %2 = alloca %struct.qedf_ctx*, align 8
  %3 = alloca %struct.fc_host_attrs*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %2, align 8
  %4 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.fc_host_attrs* @shost_to_fc_host(i32 %8)
  store %struct.fc_host_attrs* %9, %struct.fc_host_attrs** %3, align 8
  %10 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* @QEDF_LOG_NPIV, align 4
  %13 = call i32 @QEDF_INFO(i32* %11, i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %19, %1
  %15 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %3, align 8
  %16 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* @QEDF_LOG_NPIV, align 4
  %23 = call i32 @QEDF_INFO(i32* %21, i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @msleep(i32 1000)
  br label %14

25:                                               ; preds = %14
  ret void
}

declare dso_local %struct.fc_host_attrs* @shost_to_fc_host(i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
