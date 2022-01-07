; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_lcd_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_lcd_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.corgi_lcd = type { i32 }

@PICTRL_ADRS = common dso_local global i32 0, align 4
@PICTRL_POWER_DOWN = common dso_local global i32 0, align 4
@PICTRL_INIOFF = common dso_local global i32 0, align 4
@PICTRL_INIT_STATE = common dso_local global i32 0, align 4
@PICTRL_COM_SIGNAL_OFF = common dso_local global i32 0, align 4
@PICTRL_DAC_SIGNAL_OFF = common dso_local global i32 0, align 4
@POWERREG0_ADRS = common dso_local global i32 0, align 4
@POWER0_COM_DCLK = common dso_local global i32 0, align 4
@POWER0_COM_DOUT = common dso_local global i32 0, align 4
@POWER0_DAC_OFF = common dso_local global i32 0, align 4
@POWER0_COM_OFF = common dso_local global i32 0, align 4
@POWER0_VCC5_OFF = common dso_local global i32 0, align 4
@POWERREG1_ADRS = common dso_local global i32 0, align 4
@POWER1_VW_OFF = common dso_local global i32 0, align 4
@POWER1_GVSS_OFF = common dso_local global i32 0, align 4
@POWER1_VDD_OFF = common dso_local global i32 0, align 4
@POWER1_VDD_ON = common dso_local global i32 0, align 4
@POWER0_DAC_ON = common dso_local global i32 0, align 4
@sharpsl_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DEFAULT_COMADJ = common dso_local global i32 0, align 4
@POWER0_VCC5_ON = common dso_local global i32 0, align 4
@POWER1_GVSS_ON = common dso_local global i32 0, align 4
@POWER0_COM_ON = common dso_local global i32 0, align 4
@POWER1_VW_ON = common dso_local global i32 0, align 4
@POLCTRL_ADRS = common dso_local global i32 0, align 4
@POLCTRL_SYNC_POL_RISE = common dso_local global i32 0, align 4
@POLCTRL_EN_POL_RISE = common dso_local global i32 0, align 4
@POLCTRL_DATA_POL_RISE = common dso_local global i32 0, align 4
@POLCTRL_SYNC_ACT_L = common dso_local global i32 0, align 4
@POLCTRL_EN_ACT_H = common dso_local global i32 0, align 4
@RESCTL_ADRS = common dso_local global i32 0, align 4
@RESCTL_VGA = common dso_local global i32 0, align 4
@RESCTL_QVGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.corgi_lcd*)* @corgi_lcd_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corgi_lcd_power_on(%struct.corgi_lcd* %0) #0 {
  %2 = alloca %struct.corgi_lcd*, align 8
  %3 = alloca i32, align 4
  store %struct.corgi_lcd* %0, %struct.corgi_lcd** %2, align 8
  %4 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %5 = load i32, i32* @PICTRL_ADRS, align 4
  %6 = load i32, i32* @PICTRL_POWER_DOWN, align 4
  %7 = load i32, i32* @PICTRL_INIOFF, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PICTRL_INIT_STATE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PICTRL_COM_SIGNAL_OFF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PICTRL_DAC_SIGNAL_OFF, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %4, i32 %5, i32 %14)
  %16 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %17 = load i32, i32* @POWERREG0_ADRS, align 4
  %18 = load i32, i32* @POWER0_COM_DCLK, align 4
  %19 = load i32, i32* @POWER0_COM_DOUT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @POWER0_DAC_OFF, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @POWER0_COM_OFF, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %16, i32 %17, i32 %26)
  %28 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %29 = load i32, i32* @POWERREG1_ADRS, align 4
  %30 = load i32, i32* @POWER1_VW_OFF, align 4
  %31 = load i32, i32* @POWER1_GVSS_OFF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @POWER1_VDD_OFF, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %28, i32 %29, i32 %34)
  %36 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %37 = load i32, i32* @POWERREG1_ADRS, align 4
  %38 = load i32, i32* @POWER1_VW_OFF, align 4
  %39 = load i32, i32* @POWER1_GVSS_OFF, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @POWER1_VDD_ON, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %36, i32 %37, i32 %42)
  %44 = call i32 @mdelay(i32 3)
  %45 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %46 = load i32, i32* @POWERREG0_ADRS, align 4
  %47 = load i32, i32* @POWER0_COM_DCLK, align 4
  %48 = load i32, i32* @POWER0_COM_DOUT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @POWER0_DAC_ON, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @POWER0_COM_OFF, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %45, i32 %46, i32 %55)
  %57 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %58 = load i32, i32* @PICTRL_ADRS, align 4
  %59 = load i32, i32* @PICTRL_INIT_STATE, align 4
  %60 = load i32, i32* @PICTRL_COM_SIGNAL_OFF, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %57, i32 %58, i32 %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_param, i32 0, i32 0), align 4
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %1
  %67 = load i32, i32* @DEFAULT_COMADJ, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %1
  %69 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %70 = load i32, i32* @POWER0_DAC_ON, align 4
  %71 = load i32, i32* @POWER0_COM_OFF, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @POWER0_VCC5_OFF, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @lcdtg_set_common_voltage(%struct.corgi_lcd* %69, i32 %74, i32 %75)
  %77 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %78 = load i32, i32* @POWERREG0_ADRS, align 4
  %79 = load i32, i32* @POWER0_COM_DCLK, align 4
  %80 = load i32, i32* @POWER0_COM_DOUT, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @POWER0_DAC_ON, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @POWER0_COM_OFF, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @POWER0_VCC5_ON, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %77, i32 %78, i32 %87)
  %89 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %90 = load i32, i32* @POWERREG1_ADRS, align 4
  %91 = load i32, i32* @POWER1_VW_OFF, align 4
  %92 = load i32, i32* @POWER1_GVSS_ON, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @POWER1_VDD_ON, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %89, i32 %90, i32 %95)
  %97 = call i32 @mdelay(i32 2)
  %98 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %99 = load i32, i32* @PICTRL_ADRS, align 4
  %100 = load i32, i32* @PICTRL_INIT_STATE, align 4
  %101 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %98, i32 %99, i32 %100)
  %102 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %103 = load i32, i32* @POWERREG0_ADRS, align 4
  %104 = load i32, i32* @POWER0_COM_DCLK, align 4
  %105 = load i32, i32* @POWER0_COM_DOUT, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @POWER0_DAC_ON, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @POWER0_COM_ON, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @POWER0_VCC5_ON, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %102, i32 %103, i32 %112)
  %114 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %115 = load i32, i32* @POWERREG1_ADRS, align 4
  %116 = load i32, i32* @POWER1_VW_ON, align 4
  %117 = load i32, i32* @POWER1_GVSS_ON, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @POWER1_VDD_ON, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %114, i32 %115, i32 %120)
  %122 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %123 = load i32, i32* @PICTRL_ADRS, align 4
  %124 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %122, i32 %123, i32 0)
  %125 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %126 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %127 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @lcdtg_set_phadadj(%struct.corgi_lcd* %125, i32 %128)
  %130 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %131 = load i32, i32* @POLCTRL_ADRS, align 4
  %132 = load i32, i32* @POLCTRL_SYNC_POL_RISE, align 4
  %133 = load i32, i32* @POLCTRL_EN_POL_RISE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @POLCTRL_DATA_POL_RISE, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @POLCTRL_SYNC_ACT_L, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @POLCTRL_EN_ACT_H, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %130, i32 %131, i32 %140)
  %142 = call i32 @udelay(i32 1000)
  %143 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %144 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %152 [
    i32 128, label %146
    i32 129, label %151
  ]

146:                                              ; preds = %68
  %147 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %148 = load i32, i32* @RESCTL_ADRS, align 4
  %149 = load i32, i32* @RESCTL_VGA, align 4
  %150 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %147, i32 %148, i32 %149)
  br label %157

151:                                              ; preds = %68
  br label %152

152:                                              ; preds = %68, %151
  %153 = load %struct.corgi_lcd*, %struct.corgi_lcd** %2, align 8
  %154 = load i32, i32* @RESCTL_ADRS, align 4
  %155 = load i32, i32* @RESCTL_QVGA, align 4
  %156 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %146
  ret void
}

declare dso_local i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @lcdtg_set_common_voltage(%struct.corgi_lcd*, i32, i32) #1

declare dso_local i32 @lcdtg_set_phadadj(%struct.corgi_lcd*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
