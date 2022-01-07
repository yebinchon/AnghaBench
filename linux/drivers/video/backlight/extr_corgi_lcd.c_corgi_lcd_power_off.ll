; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_lcd_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_lcd_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_lcd = type { i32 }

@POWERREG1_ADRS = common dso_local global i32 0, align 4
@POWER1_VW_OFF = common dso_local global i32 0, align 4
@POWER1_GVSS_ON = common dso_local global i32 0, align 4
@POWER1_VDD_ON = common dso_local global i32 0, align 4
@PICTRL_ADRS = common dso_local global i32 0, align 4
@PICTRL_COM_SIGNAL_OFF = common dso_local global i32 0, align 4
@POWERREG0_ADRS = common dso_local global i32 0, align 4
@POWER0_DAC_ON = common dso_local global i32 0, align 4
@POWER0_COM_OFF = common dso_local global i32 0, align 4
@POWER0_VCC5_ON = common dso_local global i32 0, align 4
@POWER1_GVSS_OFF = common dso_local global i32 0, align 4
@POWER0_VCC5_OFF = common dso_local global i32 0, align 4
@PICTRL_INIOFF = common dso_local global i32 0, align 4
@PICTRL_DAC_SIGNAL_OFF = common dso_local global i32 0, align 4
@PICTRL_POWER_DOWN = common dso_local global i32 0, align 4
@POWER0_DAC_OFF = common dso_local global i32 0, align 4
@POWER1_VDD_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.corgi_lcd*)* @corgi_lcd_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corgi_lcd_power_off(%struct.corgi_lcd* %0) #0 {
  %2 = alloca %struct.corgi_lcd*, align 8
  store %struct.corgi_lcd* %0, %struct.corgi_lcd** %2, align 8
  %3 = call i32 @msleep(i32 34)
  %4 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %5 = load i32, i32* @POWERREG1_ADRS, align 4
  %6 = load i32, i32* @POWER1_VW_OFF, align 4
  %7 = load i32, i32* @POWER1_GVSS_ON, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @POWER1_VDD_ON, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %4, i32 %5, i32 %10)
  %12 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %13 = load i32, i32* @PICTRL_ADRS, align 4
  %14 = load i32, i32* @PICTRL_COM_SIGNAL_OFF, align 4
  %15 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %12, i32 %13, i32 %14)
  %16 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %17 = load i32, i32* @POWERREG0_ADRS, align 4
  %18 = load i32, i32* @POWER0_DAC_ON, align 4
  %19 = load i32, i32* @POWER0_COM_OFF, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @POWER0_VCC5_ON, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %16, i32 %17, i32 %22)
  %24 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %25 = load i32, i32* @POWER0_DAC_ON, align 4
  %26 = load i32, i32* @POWER0_COM_OFF, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @POWER0_VCC5_ON, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @lcdtg_set_common_voltage(%struct.corgi_lcd* %24, i32 %29, i32 0)
  %31 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %32 = load i32, i32* @POWERREG1_ADRS, align 4
  %33 = load i32, i32* @POWER1_VW_OFF, align 4
  %34 = load i32, i32* @POWER1_GVSS_OFF, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @POWER1_VDD_ON, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %31, i32 %32, i32 %37)
  %39 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %40 = load i32, i32* @POWERREG0_ADRS, align 4
  %41 = load i32, i32* @POWER0_DAC_ON, align 4
  %42 = load i32, i32* @POWER0_COM_OFF, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %39, i32 %40, i32 %45)
  %47 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %48 = load i32, i32* @PICTRL_ADRS, align 4
  %49 = load i32, i32* @PICTRL_INIOFF, align 4
  %50 = load i32, i32* @PICTRL_DAC_SIGNAL_OFF, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PICTRL_POWER_DOWN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PICTRL_COM_SIGNAL_OFF, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %47, i32 %48, i32 %55)
  %57 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %58 = load i32, i32* @POWERREG0_ADRS, align 4
  %59 = load i32, i32* @POWER0_DAC_OFF, align 4
  %60 = load i32, i32* @POWER0_COM_OFF, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %57, i32 %58, i32 %63)
  %65 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %66 = load i32, i32* @POWERREG1_ADRS, align 4
  %67 = load i32, i32* @POWER1_VW_OFF, align 4
  %68 = load i32, i32* @POWER1_GVSS_OFF, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @POWER1_VDD_OFF, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %65, i32 %66, i32 %71)
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd*, i32, i32) #1

declare dso_local i32 @lcdtg_set_common_voltage(%struct.corgi_lcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
