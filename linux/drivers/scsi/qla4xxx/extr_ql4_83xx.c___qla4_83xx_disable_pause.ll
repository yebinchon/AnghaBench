; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_83xx.c___qla4_83xx_disable_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_83xx.c___qla4_83xx_disable_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA83XX_SRE_SHIM_CONTROL = common dso_local global i64 0, align 8
@QLA83XX_SET_PAUSE_VAL = common dso_local global i32 0, align 4
@QLA83XX_PORT0_RXB_PAUSE_THRS = common dso_local global i64 0, align 8
@QLA83XX_PORT1_RXB_PAUSE_THRS = common dso_local global i64 0, align 8
@QLA83XX_PORT0_RXB_TC_MAX_CELL = common dso_local global i64 0, align 8
@QLA83XX_SET_TC_MAX_CELL_VAL = common dso_local global i32 0, align 4
@QLA83XX_PORT1_RXB_TC_MAX_CELL = common dso_local global i64 0, align 8
@QLA83XX_PORT2_IFB_PAUSE_THRS = common dso_local global i64 0, align 8
@QLA83XX_PORT3_IFB_PAUSE_THRS = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Disabled pause frames successfully.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @__qla4_83xx_disable_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qla4_83xx_disable_pause(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %4 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %5 = load i64, i64* @QLA83XX_SRE_SHIM_CONTROL, align 8
  %6 = load i32, i32* @QLA83XX_SET_PAUSE_VAL, align 4
  %7 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %4, i64 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = load i64, i64* @QLA83XX_PORT0_RXB_PAUSE_THRS, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = load i32, i32* @QLA83XX_SET_PAUSE_VAL, align 4
  %19 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %12, i64 %17, i32 %18)
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %21 = load i64, i64* @QLA83XX_PORT1_RXB_PAUSE_THRS, align 8
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = load i32, i32* @QLA83XX_SET_PAUSE_VAL, align 4
  %27 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %20, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %8

31:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %37 = load i64, i64* @QLA83XX_PORT0_RXB_TC_MAX_CELL, align 8
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* @QLA83XX_SET_TC_MAX_CELL_VAL, align 4
  %43 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %36, i64 %41, i32 %42)
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %45 = load i64, i64* @QLA83XX_PORT1_RXB_TC_MAX_CELL, align 8
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = load i32, i32* @QLA83XX_SET_TC_MAX_CELL_VAL, align 4
  %51 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %44, i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %57 = load i64, i64* @QLA83XX_PORT2_IFB_PAUSE_THRS, align 8
  %58 = load i32, i32* @QLA83XX_SET_PAUSE_VAL, align 4
  %59 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %56, i64 %57, i32 %58)
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %61 = load i64, i64* @QLA83XX_PORT3_IFB_PAUSE_THRS, align 8
  %62 = load i32, i32* @QLA83XX_SET_PAUSE_VAL, align 4
  %63 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %60, i64 %61, i32 %62)
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %66 = call i32 @ql4_printk(i32 %64, %struct.scsi_qla_host* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host*, i64, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
