; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_device_bootstrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_device_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA82XX_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"HW State: INITIALIZING.\0A\00", align 1
@QLA82XX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_INITIALIZING = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"HW State: FAILED.\0A\00", align 1
@QLA8XXX_DEV_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"HW State: READY.\0A\00", align 1
@QLA8XXX_DEV_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @qla82xx_device_bootstrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_device_bootstrap(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %15 = call i32 @qla82xx_need_reset(%struct.qla_hw_data* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %26 = call i32 @qla82xx_rom_lock_recovery(%struct.qla_hw_data* %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %30 = load i32, i32* @QLA82XX_PEG_ALIVE_COUNTER, align 4
  %31 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %29, i32 %30)
  store i64 %31, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %46, %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = call i32 @msleep(i32 200)
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %38 = load i32, i32* @QLA82XX_PEG_ALIVE_COUNTER, align 4
  %39 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %37, i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %44, i32* %4, align 4
  br label %81

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %32

49:                                               ; preds = %32
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %51 = call i32 @qla82xx_rom_lock_recovery(%struct.qla_hw_data* %50)
  br label %52

52:                                               ; preds = %49, %27
  %53 = load i32, i32* @ql_log_info, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32 @ql_log(i32 %53, %struct.TYPE_7__* %54, i32 158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %57 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %58 = load i32, i32* @QLA8XXX_DEV_INITIALIZING, align 4
  %59 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %56, i32 %57, i32 %58)
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %61 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = call i32 @qla82xx_start_firmware(%struct.TYPE_7__* %62)
  store i32 %63, i32* %4, align 4
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %65 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @QLA_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %52
  %70 = load i32, i32* @ql_log_fatal, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = call i32 @ql_log(i32 %70, %struct.TYPE_7__* %71, i32 173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %74 = call i32 @qla82xx_clear_drv_active(%struct.qla_hw_data* %73)
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %76 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %77 = load i32, i32* @QLA8XXX_DEV_FAILED, align 4
  %78 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %90

80:                                               ; preds = %52
  br label %81

81:                                               ; preds = %80, %43
  %82 = load i32, i32* @ql_log_info, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = call i32 @ql_log(i32 %82, %struct.TYPE_7__* %83, i32 174, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %86 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %87 = load i32, i32* @QLA8XXX_DEV_READY, align 4
  %88 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %81, %69
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @qla82xx_need_reset(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_rom_lock_recovery(%struct.qla_hw_data*) #1

declare dso_local i64 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_start_firmware(%struct.TYPE_7__*) #1

declare dso_local i32 @qla82xx_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_clear_drv_active(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
