; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_alloc_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_alloc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_work_evt = type { i32, i32, i32 }
%struct.scsi_qla_host = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@QLA_EVT_FLAG_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.qla_work_evt*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_work_evt*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @QLA_VHA_MARK_BUSY(%struct.scsi_qla_host* %8, i64 %9)
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.qla_work_evt* null, %struct.qla_work_evt** %3, align 8
  br label %33

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.qla_work_evt* @kzalloc(i32 12, i32 %15)
  store %struct.qla_work_evt* %16, %struct.qla_work_evt** %6, align 8
  %17 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %18 = icmp ne %struct.qla_work_evt* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %21 = call i32 @QLA_VHA_MARK_NOT_BUSY(%struct.scsi_qla_host* %20)
  store %struct.qla_work_evt* null, %struct.qla_work_evt** %3, align 8
  br label %33

22:                                               ; preds = %14
  %23 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %24 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %23, i32 0, i32 2
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %28 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @QLA_EVT_FLAG_FREE, align 4
  %30 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %31 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  store %struct.qla_work_evt* %32, %struct.qla_work_evt** %3, align 8
  br label %33

33:                                               ; preds = %22, %19, %13
  %34 = load %struct.qla_work_evt*, %struct.qla_work_evt** %3, align 8
  ret %struct.qla_work_evt* %34
}

declare dso_local i32 @QLA_VHA_MARK_BUSY(%struct.scsi_qla_host*, i64) #1

declare dso_local %struct.qla_work_evt* @kzalloc(i32, i32) #1

declare dso_local i32 @QLA_VHA_MARK_NOT_BUSY(%struct.scsi_qla_host*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
