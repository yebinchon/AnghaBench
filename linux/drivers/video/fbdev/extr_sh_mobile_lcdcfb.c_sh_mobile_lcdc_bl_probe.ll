; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.sh_mobile_lcdc_chan = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@sh_mobile_lcdc_bl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unable to register backlight device: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.backlight_device* (%struct.device*, %struct.sh_mobile_lcdc_chan*)* @sh_mobile_lcdc_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.backlight_device* @sh_mobile_lcdc_bl_probe(%struct.device* %0, %struct.sh_mobile_lcdc_chan* %1) #0 {
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sh_mobile_lcdc_chan* %1, %struct.sh_mobile_lcdc_chan** %5, align 8
  %7 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %15 = call %struct.backlight_device* @backlight_device_register(i32 %12, %struct.device* %13, %struct.sh_mobile_lcdc_chan* %14, i32* @sh_mobile_lcdc_bl_ops, i32* null)
  store %struct.backlight_device* %15, %struct.backlight_device** %6, align 8
  %16 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %17 = call i64 @IS_ERR(%struct.backlight_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.backlight_device* %21)
  %23 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.backlight_device* null, %struct.backlight_device** %3, align 8
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %26 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %32 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %35 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %39 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %42 = call i32 @backlight_update_status(%struct.backlight_device* %41)
  %43 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  store %struct.backlight_device* %43, %struct.backlight_device** %3, align 8
  br label %44

44:                                               ; preds = %24, %19
  %45 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  ret %struct.backlight_device* %45
}

declare dso_local %struct.backlight_device* @backlight_device_register(i32, %struct.device*, %struct.sh_mobile_lcdc_chan*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
