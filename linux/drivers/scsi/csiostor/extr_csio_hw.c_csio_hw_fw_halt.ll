; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_fw_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_fw_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i32 }

@PCIE_FW_MASTER_M = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@PIORSTMODE_F = common dso_local global i32 0, align 4
@PIORST_F = common dso_local global i32 0, align 4
@FW_RESET_CMD_HALT_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Issue of RESET command failed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CIM_BOOT_CFG_A = common dso_local global i32 0, align 4
@UPCRST_F = common dso_local global i32 0, align 4
@PCIE_FW_A = common dso_local global i32 0, align 4
@PCIE_FW_HALT_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i64, i64)* @csio_hw_fw_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_fw_halt(%struct.csio_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_mb*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @PCIE_FW_MASTER_M, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %3
  %14 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %15 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.csio_mb* @mempool_alloc(i32 %16, i32 %17)
  store %struct.csio_mb* %18, %struct.csio_mb** %9, align 8
  %19 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %20 = icmp ne %struct.csio_mb* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %23 = load i32, i32* @n_err_nomem, align 4
  %24 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %22, i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %13
  %28 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %29 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %30 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %31 = load i32, i32* @PIORSTMODE_F, align 4
  %32 = load i32, i32* @PIORST_F, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FW_RESET_CMD_HALT_F, align 4
  %35 = call i32 @csio_mb_reset(%struct.csio_hw* %28, %struct.csio_mb* %29, i32 %30, i32 %33, i32 %34, i32* null)
  %36 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %37 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %38 = call i64 @csio_mb_issue(%struct.csio_hw* %36, %struct.csio_mb* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %27
  %41 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %42 = call i32 @csio_err(%struct.csio_hw* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %44 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %45 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mempool_free(%struct.csio_mb* %43, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %84

50:                                               ; preds = %27
  %51 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %52 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %54 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %55 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mempool_free(%struct.csio_mb* %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %3
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61, %58
  %65 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %66 = load i32, i32* @CIM_BOOT_CFG_A, align 4
  %67 = load i32, i32* @UPCRST_F, align 4
  %68 = load i32, i32* @UPCRST_F, align 4
  %69 = call i32 @csio_set_reg_field(%struct.csio_hw* %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %71 = load i32, i32* @PCIE_FW_A, align 4
  %72 = load i32, i32* @PCIE_FW_HALT_F, align 4
  %73 = load i32, i32* @PCIE_FW_HALT_F, align 4
  %74 = call i32 @csio_set_reg_field(%struct.csio_hw* %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %61
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %40, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mb_reset(%struct.csio_hw*, %struct.csio_mb*, i32, i32, i32, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_mb_fw_retval(%struct.csio_mb*) #1

declare dso_local i32 @csio_set_reg_field(%struct.csio_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
