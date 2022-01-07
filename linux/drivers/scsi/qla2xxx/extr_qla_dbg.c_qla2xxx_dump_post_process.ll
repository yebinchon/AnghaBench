; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla2xxx_dump_post_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla2xxx_dump_post_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Failed to dump firmware (%x), dump status flags (0x%lx).\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Firmware dump saved to temp buffer (%ld/%p), dump status flags (0x%lx).\0A\00", align 1
@QLA_UEVENT_CODE_FW_DUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2xxx_dump_post_process(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @QLA_SUCCESS, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @ql_log_warn, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, %struct.TYPE_5__*, i32, i8*, i32, i32, ...) @ql_log(i32 %13, %struct.TYPE_5__* %14, i32 53248, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load i32, i32* @ql_log_info, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, %struct.TYPE_5__*, i32, i8*, i32, i32, ...) @ql_log(i32 %23, %struct.TYPE_5__* %24, i32 53249, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %33)
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i32, i32* @QLA_UEVENT_CODE_FW_DUMP, align 4
  %39 = call i32 @qla2x00_post_uevent_work(%struct.TYPE_5__* %37, i32 %38)
  br label %40

40:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @ql_log(i32, %struct.TYPE_5__*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @qla2x00_post_uevent_work(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
