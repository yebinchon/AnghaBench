; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8357_lcd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8357_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.hx8357_data = type { i32*, i64 }

@hx8357_seq_power = common dso_local global i32 0, align 4
@hx8357_seq_vcom = common dso_local global i32 0, align 4
@hx8357_seq_power_normal = common dso_local global i32 0, align 4
@hx8357_seq_panel_driving = common dso_local global i32 0, align 4
@hx8357_seq_display_frame = common dso_local global i32 0, align 4
@hx8357_seq_panel_related = common dso_local global i32 0, align 4
@hx8357_seq_undefined1 = common dso_local global i32 0, align 4
@hx8357_seq_undefined2 = common dso_local global i32 0, align 4
@hx8357_seq_gamma = common dso_local global i32 0, align 4
@hx8357_seq_address_mode = common dso_local global i32 0, align 4
@hx8357_seq_pixel_format = common dso_local global i32 0, align 4
@hx8357_seq_column_address = common dso_local global i32 0, align 4
@hx8357_seq_page_address = common dso_local global i32 0, align 4
@hx8357_seq_rgb = common dso_local global i32 0, align 4
@hx8357_seq_display_mode = common dso_local global i32 0, align 4
@HX8357_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@HX8357_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@HX8357_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*)* @hx8357_lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx8357_lcd_init(%struct.lcd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca %struct.hx8357_data*, align 8
  %5 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  %6 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %7 = call %struct.hx8357_data* @lcd_get_data(%struct.lcd_device* %6)
  store %struct.hx8357_data* %7, %struct.hx8357_data** %4, align 8
  %8 = load %struct.hx8357_data*, %struct.hx8357_data** %4, align 8
  %9 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.hx8357_data*, %struct.hx8357_data** %4, align 8
  %14 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpio_set_value_cansleep(i32 %17, i32 1)
  %19 = load %struct.hx8357_data*, %struct.hx8357_data** %4, align 8
  %20 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpio_set_value_cansleep(i32 %23, i32 0)
  %25 = load %struct.hx8357_data*, %struct.hx8357_data** %4, align 8
  %26 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpio_set_value_cansleep(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %12, %1
  %32 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %33 = load i32, i32* @hx8357_seq_power, align 4
  %34 = load i32, i32* @hx8357_seq_power, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %32, i32 %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %208

41:                                               ; preds = %31
  %42 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %43 = load i32, i32* @hx8357_seq_vcom, align 4
  %44 = load i32, i32* @hx8357_seq_vcom, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %42, i32 %43, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %208

51:                                               ; preds = %41
  %52 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %53 = load i32, i32* @hx8357_seq_power_normal, align 4
  %54 = load i32, i32* @hx8357_seq_power_normal, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %52, i32 %53, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %208

61:                                               ; preds = %51
  %62 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %63 = load i32, i32* @hx8357_seq_panel_driving, align 4
  %64 = load i32, i32* @hx8357_seq_panel_driving, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %62, i32 %63, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %208

71:                                               ; preds = %61
  %72 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %73 = load i32, i32* @hx8357_seq_display_frame, align 4
  %74 = load i32, i32* @hx8357_seq_display_frame, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %72, i32 %73, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %208

81:                                               ; preds = %71
  %82 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %83 = load i32, i32* @hx8357_seq_panel_related, align 4
  %84 = load i32, i32* @hx8357_seq_panel_related, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %82, i32 %83, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %208

91:                                               ; preds = %81
  %92 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %93 = load i32, i32* @hx8357_seq_undefined1, align 4
  %94 = load i32, i32* @hx8357_seq_undefined1, align 4
  %95 = call i32 @ARRAY_SIZE(i32 %94)
  %96 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %92, i32 %93, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %208

101:                                              ; preds = %91
  %102 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %103 = load i32, i32* @hx8357_seq_undefined2, align 4
  %104 = load i32, i32* @hx8357_seq_undefined2, align 4
  %105 = call i32 @ARRAY_SIZE(i32 %104)
  %106 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %102, i32 %103, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %208

111:                                              ; preds = %101
  %112 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %113 = load i32, i32* @hx8357_seq_gamma, align 4
  %114 = load i32, i32* @hx8357_seq_gamma, align 4
  %115 = call i32 @ARRAY_SIZE(i32 %114)
  %116 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %112, i32 %113, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %208

121:                                              ; preds = %111
  %122 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %123 = load i32, i32* @hx8357_seq_address_mode, align 4
  %124 = load i32, i32* @hx8357_seq_address_mode, align 4
  %125 = call i32 @ARRAY_SIZE(i32 %124)
  %126 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %122, i32 %123, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %208

131:                                              ; preds = %121
  %132 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %133 = load i32, i32* @hx8357_seq_pixel_format, align 4
  %134 = load i32, i32* @hx8357_seq_pixel_format, align 4
  %135 = call i32 @ARRAY_SIZE(i32 %134)
  %136 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %132, i32 %133, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %208

141:                                              ; preds = %131
  %142 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %143 = load i32, i32* @hx8357_seq_column_address, align 4
  %144 = load i32, i32* @hx8357_seq_column_address, align 4
  %145 = call i32 @ARRAY_SIZE(i32 %144)
  %146 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %142, i32 %143, i32 %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %208

151:                                              ; preds = %141
  %152 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %153 = load i32, i32* @hx8357_seq_page_address, align 4
  %154 = load i32, i32* @hx8357_seq_page_address, align 4
  %155 = call i32 @ARRAY_SIZE(i32 %154)
  %156 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %152, i32 %153, i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i32, i32* %5, align 4
  store i32 %160, i32* %2, align 4
  br label %208

161:                                              ; preds = %151
  %162 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %163 = load i32, i32* @hx8357_seq_rgb, align 4
  %164 = load i32, i32* @hx8357_seq_rgb, align 4
  %165 = call i32 @ARRAY_SIZE(i32 %164)
  %166 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %162, i32 %163, i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %208

171:                                              ; preds = %161
  %172 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %173 = load i32, i32* @hx8357_seq_display_mode, align 4
  %174 = load i32, i32* @hx8357_seq_display_mode, align 4
  %175 = call i32 @ARRAY_SIZE(i32 %174)
  %176 = call i32 @hx8357_spi_write_array(%struct.lcd_device* %172, i32 %173, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %2, align 4
  br label %208

181:                                              ; preds = %171
  %182 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %183 = load i32, i32* @HX8357_EXIT_SLEEP_MODE, align 4
  %184 = call i32 @hx8357_spi_write_byte(%struct.lcd_device* %182, i32 %183)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* %5, align 4
  store i32 %188, i32* %2, align 4
  br label %208

189:                                              ; preds = %181
  %190 = call i32 @msleep(i32 120)
  %191 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %192 = load i32, i32* @HX8357_SET_DISPLAY_ON, align 4
  %193 = call i32 @hx8357_spi_write_byte(%struct.lcd_device* %191, i32 %192)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* %2, align 4
  br label %208

198:                                              ; preds = %189
  %199 = call i32 @usleep_range(i32 5000, i32 7000)
  %200 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %201 = load i32, i32* @HX8357_WRITE_MEMORY_START, align 4
  %202 = call i32 @hx8357_spi_write_byte(%struct.lcd_device* %200, i32 %201)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %2, align 4
  br label %208

207:                                              ; preds = %198
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %205, %196, %187, %179, %169, %159, %149, %139, %129, %119, %109, %99, %89, %79, %69, %59, %49, %39
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.hx8357_data* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @hx8357_spi_write_array(%struct.lcd_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @hx8357_spi_write_byte(%struct.lcd_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
