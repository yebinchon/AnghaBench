; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_device_state_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_device_state_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA8044_CRB_DEV_STATE_INDEX = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Device state is 0x%x = %s\0A\00", align 1
@MAX_STATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: Device Init Failed 0x%x = %s\0A\00", align 1
@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"HW State: QUIESCENT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla8044_device_state_handler(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %7 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %6, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %12 = call i32 @qla8044_update_idc_reg(%struct.scsi_qla_host* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %155

17:                                               ; preds = %1
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %19 = load i32, i32* @QLA8044_CRB_DEV_STATE_INDEX, align 4
  %20 = call i32 @qla8044_rd_direct(%struct.scsi_qla_host* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @ql_dbg_p3p, align 4
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MAX_STATES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @qdev_state(i32 %28)
  br label %31

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i8* [ %29, %27 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = call i32 @ql_dbg(i32 %21, %struct.scsi_qla_host* %22, i32 45262, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %32)
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HZ, align 8
  %39 = mul i64 %37, %38
  %40 = add i64 %34, %39
  store i64 %40, i64* %5, align 8
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %42 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %41)
  br label %43

43:                                               ; preds = %31, %151
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @time_after_eq(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %50 = call i32 @qla8044_check_drv_active(%struct.scsi_qla_host* %49)
  %51 = load i32, i32* @QLA_SUCCESS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* @ql_log_warn, align 4
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %56 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @MAX_STATES, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %3, align 4
  %63 = call i8* @qdev_state(i32 %62)
  br label %65

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i8* [ %63, %61 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %64 ]
  %67 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %54, %struct.scsi_qla_host* %55, i32 45263, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57, i8* %66)
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %69 = load i32, i32* @QLA8044_CRB_DEV_STATE_INDEX, align 4
  %70 = call i32 @qla8044_wr_direct(%struct.scsi_qla_host* %68, i32 %69, i32 133)
  br label %71

71:                                               ; preds = %65, %48
  br label %72

72:                                               ; preds = %71, %43
  %73 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %74 = load i32, i32* @QLA8044_CRB_DEV_STATE_INDEX, align 4
  %75 = call i32 @qla8044_rd_direct(%struct.scsi_qla_host* %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @ql_log_info, align 4
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @MAX_STATES, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %3, align 4
  %84 = call i8* @qdev_state(i32 %83)
  br label %86

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i8* [ %84, %82 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %85 ]
  %88 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %76, %struct.scsi_qla_host* %77, i32 45264, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %78, i8* %87)
  %89 = load i32, i32* %3, align 4
  switch i32 %89, label %143 [
    i32 128, label %90
    i32 134, label %94
    i32 132, label %97
    i32 130, label %103
    i32 131, label %106
    i32 129, label %116
    i32 133, label %132
  ]

90:                                               ; preds = %86
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %152

94:                                               ; preds = %86
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %96 = call i32 @qla8044_device_bootstrap(%struct.scsi_qla_host* %95)
  store i32 %96, i32* %4, align 4
  br label %151

97:                                               ; preds = %86
  %98 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %99 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %98)
  %100 = call i32 @msleep(i32 1000)
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %102 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %101)
  br label %151

103:                                              ; preds = %86
  %104 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %105 = call i32 @qla8044_need_reset_handler(%struct.scsi_qla_host* %104)
  br label %151

106:                                              ; preds = %86
  %107 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %108 = call i32 @qla8044_need_qsnt_handler(%struct.scsi_qla_host* %107)
  %109 = load i64, i64* @jiffies, align 8
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %111 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @HZ, align 8
  %114 = mul i64 %112, %113
  %115 = add i64 %109, %114
  store i64 %115, i64* %5, align 8
  br label %151

116:                                              ; preds = %86
  %117 = load i32, i32* @ql_log_info, align 4
  %118 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %119 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %117, %struct.scsi_qla_host* %118, i32 45265, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %121 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %120)
  %122 = call i32 @msleep(i32 1000)
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %124 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %123)
  %125 = load i64, i64* @jiffies, align 8
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %127 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @HZ, align 8
  %130 = mul i64 %128, %129
  %131 = add i64 %125, %130
  store i64 %131, i64* %5, align 8
  br label %151

132:                                              ; preds = %86
  %133 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %134 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  %136 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %137 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %136)
  %138 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %139 = call i32 @qla8xxx_dev_failed_handler(%struct.scsi_qla_host* %138)
  %140 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %140, i32* %4, align 4
  %141 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %142 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %141)
  br label %152

143:                                              ; preds = %86
  %144 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %145 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %144)
  %146 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %147 = call i32 @qla8xxx_dev_failed_handler(%struct.scsi_qla_host* %146)
  %148 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %148, i32* %4, align 4
  %149 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %150 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %149)
  br label %152

151:                                              ; preds = %116, %106, %103, %97, %94
  br label %43

152:                                              ; preds = %143, %132, %90
  %153 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %154 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %153)
  br label %155

155:                                              ; preds = %152, %16
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @qla8044_update_idc_reg(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i8*) #1

declare dso_local i8* @qdev_state(i32) #1

declare dso_local i32 @qla8044_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @qla8044_check_drv_active(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @qla8044_wr_direct(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @qla8044_device_bootstrap(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla8044_need_reset_handler(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_need_qsnt_handler(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8xxx_dev_failed_handler(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
