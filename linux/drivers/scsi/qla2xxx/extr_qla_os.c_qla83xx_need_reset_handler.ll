; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_need_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_need_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@QLA83XX_IDC_DRIVER_ACK = common dso_local global i32 0, align 4
@QLA83XX_IDC_DRV_PRESENCE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"RESET ACK TIMEOUT! drv_presence=0x%x drv_ack=0x%x\0A\00", align 1
@QLA83XX_IDC_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_COLD = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"HW State: COLD/RE-INIT.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @qla83xx_need_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla83xx_need_reset_handler(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %3, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = mul i64 %13, %14
  %16 = add i64 %10, %15
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %1, %50
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = load i32, i32* @QLA83XX_IDC_DRIVER_ACK, align 4
  %20 = call i32 @qla83xx_rd_reg(%struct.TYPE_8__* %18, i32 %19, i32* %4)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load i32, i32* @QLA83XX_IDC_DRV_PRESENCE, align 4
  %23 = call i32 @qla83xx_rd_reg(%struct.TYPE_8__* %21, i32 %22, i32* %5)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %56

30:                                               ; preds = %17
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @time_after_eq(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* @ql_log_warn, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %36, %struct.TYPE_8__* %37, i32 45159, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = load i32, i32* @QLA83XX_IDC_DRV_PRESENCE, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @qla83xx_wr_reg(%struct.TYPE_8__* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %35
  br label %56

50:                                               ; preds = %30
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = call i32 @qla83xx_idc_unlock(%struct.TYPE_8__* %51, i32 0)
  %53 = call i32 @msleep(i32 1000)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = call i32 @qla83xx_idc_lock(%struct.TYPE_8__* %54, i32 0)
  br label %17

56:                                               ; preds = %49, %29
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = load i32, i32* @QLA83XX_IDC_DEV_STATE, align 4
  %59 = load i32, i32* @QLA8XXX_DEV_COLD, align 4
  %60 = call i32 @qla83xx_wr_reg(%struct.TYPE_8__* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @ql_log_info, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %61, %struct.TYPE_8__* %62, i32 45160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @qla83xx_rd_reg(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @qla83xx_idc_unlock(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla83xx_idc_lock(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
