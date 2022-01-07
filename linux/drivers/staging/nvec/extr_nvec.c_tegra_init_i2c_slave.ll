; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_tegra_init_i2c_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_tegra_init_i2c_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_chip = type { i32, i32, i64, i32, i32 }

@I2C_CNFG_NEW_MASTER_SFM = common dso_local global i32 0, align 4
@I2C_CNFG_PACKET_MODE_EN = common dso_local global i32 0, align 4
@I2C_CNFG_DEBOUNCE_CNT_SHIFT = common dso_local global i32 0, align 4
@I2C_CNFG = common dso_local global i64 0, align 8
@I2C_SL_NEWSL = common dso_local global i32 0, align 4
@I2C_SL_CNFG = common dso_local global i64 0, align 8
@I2C_SL_DELAY_COUNT = common dso_local global i64 0, align 8
@I2C_SL_ADDR1 = common dso_local global i64 0, align 8
@I2C_SL_ADDR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvec_chip*)* @tegra_init_i2c_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_init_i2c_slave(%struct.nvec_chip* %0) #0 {
  %2 = alloca %struct.nvec_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.nvec_chip* %0, %struct.nvec_chip** %2, align 8
  %4 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %5 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @clk_prepare_enable(i32 %6)
  %8 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %9 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @reset_control_assert(i32 %10)
  %12 = call i32 @udelay(i32 2)
  %13 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %14 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @reset_control_deassert(i32 %15)
  %17 = load i32, i32* @I2C_CNFG_NEW_MASTER_SFM, align 4
  %18 = load i32, i32* @I2C_CNFG_PACKET_MODE_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @I2C_CNFG_DEBOUNCE_CNT_SHIFT, align 4
  %21 = shl i32 2, %20
  %22 = or i32 %19, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %25 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @I2C_CNFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %31 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clk_set_rate(i32 %32, i32 640000)
  %34 = load i32, i32* @I2C_SL_NEWSL, align 4
  %35 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %36 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @I2C_SL_CNFG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %42 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @I2C_SL_DELAY_COUNT, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 30, i64 %45)
  %47 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %48 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 1
  %51 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %52 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @I2C_SL_ADDR1, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %58 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @I2C_SL_ADDR2, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %64 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @enable_irq(i32 %65)
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
