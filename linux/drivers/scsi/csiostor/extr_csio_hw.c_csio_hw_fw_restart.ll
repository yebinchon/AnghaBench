; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_fw_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_fw_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@PCIE_FW_A = common dso_local global i32 0, align 4
@PCIE_FW_HALT_F = common dso_local global i32 0, align 4
@PCIE_FW_MASTER_M = common dso_local global i64 0, align 8
@CIM_BOOT_CFG_A = common dso_local global i32 0, align 4
@UPCRST_F = common dso_local global i32 0, align 4
@PIORSTMODE_F = common dso_local global i32 0, align 4
@PIORST_F = common dso_local global i32 0, align 4
@PL_RST_A = common dso_local global i32 0, align 4
@FW_CMD_MAX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i64, i64)* @csio_hw_fw_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_fw_restart(%struct.csio_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %13 = load i32, i32* @PCIE_FW_A, align 4
  %14 = load i32, i32* @PCIE_FW_HALT_F, align 4
  %15 = call i32 @csio_set_reg_field(%struct.csio_hw* %12, i32 %13, i32 %14, i32 0)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @PCIE_FW_MASTER_M, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %21 = load i32, i32* @CIM_BOOT_CFG_A, align 4
  %22 = load i32, i32* @UPCRST_F, align 4
  %23 = call i32 @csio_set_reg_field(%struct.csio_hw* %20, i32 %21, i32 %22, i32 0)
  %24 = call i32 @msleep(i32 100)
  %25 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %26 = call i64 @csio_do_reset(%struct.csio_hw* %25, i32 1)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %63

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %11
  %31 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %32 = load i32, i32* @PIORSTMODE_F, align 4
  %33 = load i32, i32* @PIORST_F, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PL_RST_A, align 4
  %36 = call i32 @csio_wr_reg32(%struct.csio_hw* %31, i32 %34, i32 %35)
  %37 = call i32 @msleep(i32 2000)
  br label %62

38:                                               ; preds = %3
  %39 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %40 = load i32, i32* @CIM_BOOT_CFG_A, align 4
  %41 = load i32, i32* @UPCRST_F, align 4
  %42 = call i32 @csio_set_reg_field(%struct.csio_hw* %39, i32 %40, i32 %41, i32 0)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %55, %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @FW_CMD_MAX_TIMEOUT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %49 = load i32, i32* @PCIE_FW_A, align 4
  %50 = call i32 @csio_rd_reg32(%struct.csio_hw* %48, i32 %49)
  %51 = load i32, i32* @PCIE_FW_HALT_F, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %63

55:                                               ; preds = %47
  %56 = call i32 @msleep(i32 100)
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 100
  store i32 %58, i32* %8, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %59, %54, %28
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @csio_set_reg_field(%struct.csio_hw*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @csio_do_reset(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
