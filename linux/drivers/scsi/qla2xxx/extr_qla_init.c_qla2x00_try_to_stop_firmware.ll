; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_try_to_stop_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_try_to_stop_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_TIMEOUT = common dso_local global i32 0, align 4
@QLA_INVALID_COMMAND = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Attempting retry of stop-firmware command.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_try_to_stop_firmware(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %92

15:                                               ; preds = %1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %92

20:                                               ; preds = %15
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %92

26:                                               ; preds = %20
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %92

33:                                               ; preds = %26
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = call i32 @qla2x00_stop_firmware(%struct.TYPE_12__* %34)
  store i32 %35, i32* %3, align 4
  store i32 5, i32* %4, align 4
  br label %36

36:                                               ; preds = %83, %33
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @QLA_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @QLA_FUNCTION_TIMEOUT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @QLA_INVALID_COMMAND, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %44, %40, %36
  %52 = phi i1 [ false, %44 ], [ false, %40 ], [ false, %36 ], [ %50, %48 ]
  br i1 %52, label %53, label %86

53:                                               ; preds = %51
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = call i32 %58(%struct.TYPE_12__* %59)
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = call i32 %65(%struct.TYPE_12__* %66)
  %68 = load i32, i32* @QLA_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %83

71:                                               ; preds = %53
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = call i32 @qla2x00_setup_chip(%struct.TYPE_12__* %72)
  %74 = load i32, i32* @QLA_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @ql_log_info, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = call i32 @ql_log(i32 %78, %struct.TYPE_12__* %79, i32 32789, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = call i32 @qla2x00_stop_firmware(%struct.TYPE_12__* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %76, %70
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %4, align 4
  br label %36

86:                                               ; preds = %51
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %88 = call i32 @QLA_FW_STOPPED(%struct.qla_hw_data* %87)
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %32, %25, %19, %14
  ret void
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_stop_firmware(%struct.TYPE_12__*) #1

declare dso_local i32 @qla2x00_setup_chip(%struct.TYPE_12__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @QLA_FW_STOPPED(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
