; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_abort_isp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_abort_isp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, %struct.qla_hw_data* }
%struct.TYPE_16__ = type { i32 }
%struct.qla_hw_data = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { {}* }
%struct.TYPE_14__ = type { i32, i64 }

@DFLG_DEV_FAILED = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Device in failed state, exiting.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ISP_ABORT_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"ISP error recover failed - board disabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ISP abort - retry remaining %d.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@MAX_RETRIES_OF_ISP_ABORT = common dso_local global i64 0, align 8
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"ISP error recovery - retrying (%d) more times.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_abort_isp(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 -1, i32* %4, align 4
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DFLG_DEV_FAILED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @ql_log_warn, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %16, %struct.TYPE_17__* %17, i32 32804, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %19, i32* %2, align 4
  br label %137

20:                                               ; preds = %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = call i32 @qla82xx_set_reset_owner(%struct.TYPE_17__* %26)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %29 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %28)
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %31 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = call i32 @qla82xx_device_state_handler(%struct.TYPE_17__* %34)
  store i32 %35, i32* %4, align 4
  br label %50

36:                                               ; preds = %20
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %38 = call i64 @IS_QLA8044(%struct.qla_hw_data* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %42 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = call i32 @qla83xx_reset_ownership(%struct.TYPE_17__* %43)
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %46 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = call i32 @qla8044_device_state_handler(%struct.TYPE_17__* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %40, %36
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %52 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %51)
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %54 = call i32 @qla82xx_clear_rst_ready(%struct.qla_hw_data* %53)
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %56 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @QLA_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = call i32 @qla82xx_restart_isp(%struct.TYPE_17__* %67)
  br label %69

69:                                               ; preds = %60, %50
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %135

72:                                               ; preds = %69
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = call i64 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %72
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load i32, i32* @ql_log_warn, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %89 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %87, %struct.TYPE_17__* %88, i32 32807, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = bitcast {}** %93 to i32 (%struct.TYPE_17__*)**
  %95 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = call i32 %95(%struct.TYPE_17__* %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = call i32 @clear_bit(i32 %101, i32* %103)
  %105 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %105, i32* %4, align 4
  br label %118

106:                                              ; preds = %81
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %108 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %108, align 8
  %111 = load i32, i32* @ql_log_warn, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %114 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %111, %struct.TYPE_17__* %112, i32 32822, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %106, %86
  br label %134

119:                                              ; preds = %72
  %120 = load i64, i64* @MAX_RETRIES_OF_ISP_ABORT, align 8
  %121 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %122 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @ql_dbg_taskm, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %126 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ql_dbg(i32 %123, %struct.TYPE_17__* %124, i32 32809, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %127)
  %129 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = call i32 @set_bit(i32 %129, i32* %131)
  %133 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %119, %118
  br label %135

135:                                              ; preds = %134, %69
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %15
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @ql_log(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @qla82xx_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_set_reset_owner(%struct.TYPE_17__*) #1

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_device_state_handler(%struct.TYPE_17__*) #1

declare dso_local i64 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla83xx_reset_ownership(%struct.TYPE_17__*) #1

declare dso_local i32 @qla8044_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_device_state_handler(%struct.TYPE_17__*) #1

declare dso_local i32 @qla82xx_clear_rst_ready(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_restart_isp(%struct.TYPE_17__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_17__*, i32, i8*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
