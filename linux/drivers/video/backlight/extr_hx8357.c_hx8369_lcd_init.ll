; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8369_lcd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8369_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }

@hx8369_seq_extension_command = common dso_local global i32 0, align 4
@hx8369_seq_display_related = common dso_local global i32 0, align 4
@hx8369_seq_panel_waveform_cycle = common dso_local global i32 0, align 4
@hx8369_seq_set_address_mode = common dso_local global i32 0, align 4
@hx8369_seq_vcom = common dso_local global i32 0, align 4
@hx8369_seq_gip = common dso_local global i32 0, align 4
@hx8369_seq_power = common dso_local global i32 0, align 4
@HX8357_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@hx8369_seq_gamma_curve_related = common dso_local global i32 0, align 4
@hx8369_seq_write_CABC_control = common dso_local global i32 0, align 4
@hx8369_seq_write_CABC_control_setting = common dso_local global i32 0, align 4
@hx8369_seq_write_CABC_min_brightness = common dso_local global i32 0, align 4
@hx8369_seq_set_display_brightness = common dso_local global i32 0, align 4
@HX8357_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*)* @hx8369_lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx8369_lcd_init(%struct.lcd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  %5 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %6 = load i32, i32* @hx8369_seq_extension_command, align 4
  %7 = load i32, i32* @hx8369_seq_extension_command, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %5, i32 %6, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %154

14:                                               ; preds = %1
  %15 = call i32 @usleep_range(i32 10000, i32 12000)
  %16 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %17 = load i32, i32* @hx8369_seq_display_related, align 4
  %18 = load i32, i32* @hx8369_seq_display_related, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %16, i32 %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %154

25:                                               ; preds = %14
  %26 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %27 = load i32, i32* @hx8369_seq_panel_waveform_cycle, align 4
  %28 = load i32, i32* @hx8369_seq_panel_waveform_cycle, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %26, i32 %27, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %154

35:                                               ; preds = %25
  %36 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %37 = load i32, i32* @hx8369_seq_set_address_mode, align 4
  %38 = load i32, i32* @hx8369_seq_set_address_mode, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %36, i32 %37, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %154

45:                                               ; preds = %35
  %46 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %47 = load i32, i32* @hx8369_seq_vcom, align 4
  %48 = load i32, i32* @hx8369_seq_vcom, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %46, i32 %47, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %154

55:                                               ; preds = %45
  %56 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %57 = load i32, i32* @hx8369_seq_gip, align 4
  %58 = load i32, i32* @hx8369_seq_gip, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %56, i32 %57, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %154

65:                                               ; preds = %55
  %66 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %67 = load i32, i32* @hx8369_seq_power, align 4
  %68 = load i32, i32* @hx8369_seq_power, align 4
  %69 = call i32 @ARRAY_SIZE(i32 %68)
  %70 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %66, i32 %67, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %154

75:                                               ; preds = %65
  %76 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %77 = load i32, i32* @HX8357_EXIT_SLEEP_MODE, align 4
  %78 = call i32 @hx8357_spi_write_byte(%struct.lcd_device* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %154

83:                                               ; preds = %75
  %84 = call i32 @msleep(i32 120)
  %85 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %86 = load i32, i32* @hx8369_seq_gamma_curve_related, align 4
  %87 = load i32, i32* @hx8369_seq_gamma_curve_related, align 4
  %88 = call i32 @ARRAY_SIZE(i32 %87)
  %89 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %85, i32 %86, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %154

94:                                               ; preds = %83
  %95 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %96 = load i32, i32* @HX8357_EXIT_SLEEP_MODE, align 4
  %97 = call i32 @hx8357_spi_write_byte(%struct.lcd_device* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %154

102:                                              ; preds = %94
  %103 = call i32 @usleep_range(i32 1000, i32 1200)
  %104 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %105 = load i32, i32* @hx8369_seq_write_CABC_control, align 4
  %106 = load i32, i32* @hx8369_seq_write_CABC_control, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %104, i32 %105, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %154

113:                                              ; preds = %102
  %114 = call i32 @usleep_range(i32 10000, i32 12000)
  %115 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %116 = load i32, i32* @hx8369_seq_write_CABC_control_setting, align 4
  %117 = load i32, i32* @hx8369_seq_write_CABC_control_setting, align 4
  %118 = call i32 @ARRAY_SIZE(i32 %117)
  %119 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %115, i32 %116, i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %154

124:                                              ; preds = %113
  %125 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %126 = load i32, i32* @hx8369_seq_write_CABC_min_brightness, align 4
  %127 = load i32, i32* @hx8369_seq_write_CABC_min_brightness, align 4
  %128 = call i32 @ARRAY_SIZE(i32 %127)
  %129 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %125, i32 %126, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %154

134:                                              ; preds = %124
  %135 = call i32 @usleep_range(i32 10000, i32 12000)
  %136 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %137 = load i32, i32* @hx8369_seq_set_display_brightness, align 4
  %138 = load i32, i32* @hx8369_seq_set_display_brightness, align 4
  %139 = call i32 @ARRAY_SIZE(i32 %138)
  %140 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %136, i32 %137, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %154

145:                                              ; preds = %134
  %146 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %147 = load i32, i32* @HX8357_SET_DISPLAY_ON, align 4
  %148 = call i32 @hx8357_spi_write_byte(%struct.lcd_device* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %154

153:                                              ; preds = %145
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %151, %143, %132, %122, %111, %100, %92, %81, %73, %63, %53, %43, %33, %23, %12
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @hx8357_spi_write_array(%struct.lcd_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hx8357_spi_write_byte(%struct.lcd_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
