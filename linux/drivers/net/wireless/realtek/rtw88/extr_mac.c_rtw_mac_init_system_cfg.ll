; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_mac_init_system_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_mac_init_system_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_CPU_DMEM_CON = common dso_local global i32 0, align 4
@BIT_WL_PLATFORM_RST = common dso_local global i32 0, align 4
@BIT_DDMA_EN = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@REG_CR_EXT = common dso_local global i64 0, align 8
@REG_MCUFW_CTRL = common dso_local global i32 0, align 4
@BIT_BOOT_FSPI_EN = common dso_local global i32 0, align 4
@REG_GPIO_MUXCFG = common dso_local global i32 0, align 4
@BIT_FSPI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_mac_init_system_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_mac_init_system_cfg(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = load i32, i32* @REG_CPU_DMEM_CON, align 4
  %14 = call i32 @rtw_read32(%struct.rtw_dev* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @BIT_WL_PLATFORM_RST, align 4
  %16 = load i32, i32* @BIT_DDMA_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %21 = load i32, i32* @REG_CPU_DMEM_CON, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rtw_write32(%struct.rtw_dev* %20, i32 %21, i32 %22)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %25 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %26 = add nsw i64 %25, 1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @rtw_write8(%struct.rtw_dev* %24, i64 %26, i32 %27)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %30 = load i64, i64* @REG_CR_EXT, align 8
  %31 = add nsw i64 %30, 3
  %32 = call i32 @rtw_read8(%struct.rtw_dev* %29, i64 %31)
  %33 = and i32 %32, 240
  %34 = or i32 %33, 12
  store i32 %34, i32* %4, align 4
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %36 = load i64, i64* @REG_CR_EXT, align 8
  %37 = add nsw i64 %36, 3
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @rtw_write8(%struct.rtw_dev* %35, i64 %37, i32 %38)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %42 = call i32 @rtw_read32(%struct.rtw_dev* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @BIT_BOOT_FSPI_EN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %1
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %49 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @BIT_BOOT_FSPI_EN, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @rtw_write32(%struct.rtw_dev* %48, i32 %49, i32 %53)
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %56 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %57 = call i32 @rtw_read32(%struct.rtw_dev* %55, i32 %56)
  %58 = load i32, i32* @BIT_FSPI_EN, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  store i32 %60, i32* %5, align 4
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %62 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @rtw_write32(%struct.rtw_dev* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %47, %1
  ret i32 0
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
