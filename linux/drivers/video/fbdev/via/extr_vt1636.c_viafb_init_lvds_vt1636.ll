; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_viafb_init_lvds_vt1636.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_viafb_init_lvds_vt1636.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i64, i64 }
%struct.lvds_chip_information = type { i32 }

@common_init_data = common dso_local global i32* null, align 8
@dual_channel_enable_data = common dso_local global i32 0, align 4
@single_channel_enable_data = common dso_local global i32 0, align 4
@dithering_enable_data = common dso_local global i32 0, align 4
@dithering_disable_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_init_lvds_vt1636(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1) #0 {
  %3 = alloca %struct.lvds_setting_information*, align 8
  %4 = alloca %struct.lvds_chip_information*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %3, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %4, align 8
  %7 = load i32*, i32** @common_init_data, align 8
  %8 = call i32 @ARRAY_SIZE(i32* %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %15 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %16 = load i32*, i32** @common_init_data, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %14, %struct.lvds_chip_information* %15, i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %27 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %32 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %33 = load i32, i32* @dual_channel_enable_data, align 4
  %34 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %31, %struct.lvds_chip_information* %32, i32 %33)
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %37 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %38 = load i32, i32* @single_channel_enable_data, align 4
  %39 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %36, %struct.lvds_chip_information* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %42 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %47 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %48 = load i32, i32* @dithering_enable_data, align 4
  %49 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %46, %struct.lvds_chip_information* %47, i32 %48)
  br label %55

50:                                               ; preds = %40
  %51 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %52 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %53 = load i32, i32* @dithering_disable_data, align 4
  %54 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %51, %struct.lvds_chip_information* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information*, %struct.lvds_chip_information*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
