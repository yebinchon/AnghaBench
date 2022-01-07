; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/xilinx/extr_xlnx_vcu.c_xvcu_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/xilinx/extr_xlnx_vcu.c_xvcu_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvcu_device = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to set pll info\0A\00", align 1
@VCU_PLL_CTRL = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_BYPASS_MASK = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_BYPASS_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_RESET_MASK = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_RESET_SHIFT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@VCU_PLL_STATUS = common dso_local global i32 0, align 4
@VCU_PLL_STATUS_LOCK_STATUS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PLL is not locked\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvcu_device*)* @xvcu_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvcu_set_pll(%struct.xvcu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xvcu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xvcu_device* %0, %struct.xvcu_device** %3, align 8
  %7 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %8 = call i32 @xvcu_set_vcu_pll_info(%struct.xvcu_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %13 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %19 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VCU_PLL_CTRL, align 4
  %22 = load i32, i32* @VCU_PLL_CTRL_BYPASS_MASK, align 4
  %23 = load i32, i32* @VCU_PLL_CTRL_BYPASS_SHIFT, align 4
  %24 = call i32 @xvcu_write_field_reg(i32 %20, i32 %21, i32 1, i32 %22, i32 %23)
  %25 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %26 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VCU_PLL_CTRL, align 4
  %29 = load i32, i32* @VCU_PLL_CTRL_RESET_MASK, align 4
  %30 = load i32, i32* @VCU_PLL_CTRL_RESET_SHIFT, align 4
  %31 = call i32 @xvcu_write_field_reg(i32 %27, i32 %28, i32 1, i32 %29, i32 %30)
  %32 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %33 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VCU_PLL_CTRL, align 4
  %36 = load i32, i32* @VCU_PLL_CTRL_RESET_MASK, align 4
  %37 = load i32, i32* @VCU_PLL_CTRL_RESET_SHIFT, align 4
  %38 = call i32 @xvcu_write_field_reg(i32 %34, i32 %35, i32 0, i32 %36, i32 %37)
  %39 = load i64, i64* @jiffies, align 8
  %40 = call i64 @msecs_to_jiffies(i32 2000)
  %41 = add i64 %39, %40
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %61, %17
  %43 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %44 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VCU_PLL_STATUS, align 4
  %47 = call i32 @xvcu_read(i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @VCU_PLL_STATUS_LOCK_STATUS_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %54 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VCU_PLL_CTRL, align 4
  %57 = load i32, i32* @VCU_PLL_CTRL_BYPASS_MASK, align 4
  %58 = load i32, i32* @VCU_PLL_CTRL_BYPASS_SHIFT, align 4
  %59 = call i32 @xvcu_write_field_reg(i32 %55, i32 %56, i32 0, i32 %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %74

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @time_after(i64 %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %42, label %67

67:                                               ; preds = %61
  %68 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %69 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %52, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @xvcu_set_vcu_pll_info(%struct.xvcu_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @xvcu_write_field_reg(i32, i32, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @xvcu_read(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
