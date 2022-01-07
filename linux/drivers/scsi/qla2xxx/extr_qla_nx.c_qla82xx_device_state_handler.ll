; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_device_state_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_device_state_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.qla_hw_data* }
%struct.TYPE_12__ = type { i32 }
%struct.qla_hw_data = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA82XX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Device state is 0x%x = %s.\0A\00", align 1
@MAX_STATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Device init failed.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql2xdontresethba = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_device_state_handler(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %9 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %14 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = call i32 @qla82xx_set_drv_active(%struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = call i32 @qla82xx_set_idc_version(%struct.TYPE_14__* %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %27 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %28 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @ql_log_info, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MAX_STATES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4
  %38 = call i8* @qdev_state(i32 %37)
  br label %40

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i8* [ %38, %36 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ql_log(i32 %30, %struct.TYPE_14__* %31, i32 155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %41)
  %43 = load i64, i64* @jiffies, align 8
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HZ, align 8
  %48 = mul i64 %46, %47
  %49 = add i64 %43, %48
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %40, %161
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @time_after_eq(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @ql_log_fatal, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ql_log(i32 %56, %struct.TYPE_14__* %57, i32 156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %59, i32* %5, align 4
  br label %164

60:                                               ; preds = %50
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %62 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %63 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %61, i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %60
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 5
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32, i32* @ql_log_info, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @MAX_STATES, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %3, align 4
  %81 = call i8* @qdev_state(i32 %80)
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i8* [ %81, %79 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %82 ]
  %85 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ql_log(i32 %73, %struct.TYPE_14__* %74, i32 157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %84)
  br label %86

86:                                               ; preds = %83, %69
  %87 = load i32, i32* %3, align 4
  switch i32 %87, label %155 [
    i32 128, label %88
    i32 134, label %92
    i32 132, label %95
    i32 130, label %101
    i32 131, label %121
    i32 129, label %131
    i32 133, label %151
  ]

88:                                               ; preds = %86
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %165

92:                                               ; preds = %86
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = call i32 @qla82xx_device_bootstrap(%struct.TYPE_14__* %93)
  store i32 %94, i32* %5, align 4
  br label %161

95:                                               ; preds = %86
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %97 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %96)
  %98 = call i32 @msleep(i32 1000)
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %100 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %99)
  br label %161

101:                                              ; preds = %86
  %102 = load i32, i32* @ql2xdontresethba, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %106 = call i32 @qla82xx_need_reset_handler(%struct.TYPE_14__* %105)
  br label %113

107:                                              ; preds = %101
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %109 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %108)
  %110 = call i32 @msleep(i32 1000)
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %112 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %111)
  br label %113

113:                                              ; preds = %107, %104
  %114 = load i64, i64* @jiffies, align 8
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @HZ, align 8
  %119 = mul i64 %117, %118
  %120 = add i64 %114, %119
  store i64 %120, i64* %6, align 8
  br label %161

121:                                              ; preds = %86
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %123 = call i32 @qla82xx_need_qsnt_handler(%struct.TYPE_14__* %122)
  %124 = load i64, i64* @jiffies, align 8
  %125 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %126 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @HZ, align 8
  %129 = mul i64 %127, %128
  %130 = add i64 %124, %129
  store i64 %130, i64* %6, align 8
  br label %161

131:                                              ; preds = %86
  %132 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %133 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %165

138:                                              ; preds = %131
  %139 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %140 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %139)
  %141 = call i32 @msleep(i32 1000)
  %142 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %143 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %142)
  %144 = load i64, i64* @jiffies, align 8
  %145 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %146 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @HZ, align 8
  %149 = mul i64 %147, %148
  %150 = add i64 %144, %149
  store i64 %150, i64* %6, align 8
  br label %161

151:                                              ; preds = %86
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %153 = call i32 @qla8xxx_dev_failed_handler(%struct.TYPE_14__* %152)
  %154 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %154, i32* %5, align 4
  br label %168

155:                                              ; preds = %86
  %156 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %157 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %156)
  %158 = call i32 @msleep(i32 1000)
  %159 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %160 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %159)
  br label %161

161:                                              ; preds = %155, %138, %121, %113, %95, %92
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %50

164:                                              ; preds = %55
  br label %165

165:                                              ; preds = %164, %137, %88
  %166 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %167 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %166)
  br label %168

168:                                              ; preds = %165, %151
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @qla82xx_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_set_drv_active(%struct.TYPE_14__*) #1

declare dso_local i32 @qla82xx_set_idc_version(%struct.TYPE_14__*) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i8* @qdev_state(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @qla82xx_device_bootstrap(%struct.TYPE_14__*) #1

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla82xx_need_reset_handler(%struct.TYPE_14__*) #1

declare dso_local i32 @qla82xx_need_qsnt_handler(%struct.TYPE_14__*) #1

declare dso_local i32 @qla8xxx_dev_failed_handler(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
