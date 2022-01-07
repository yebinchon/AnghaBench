; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.fb_info = type { %struct.TYPE_3__, i32, %struct.ssd1307fb_par* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ssd1307fb_par = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@SSD1307FB_DISPLAY_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ssd1307fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssd1307fb_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.ssd1307fb_par*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.fb_info* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %8, align 8
  store %struct.ssd1307fb_par* %9, %struct.ssd1307fb_par** %4, align 8
  %10 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %4, align 8
  %11 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SSD1307FB_DISPLAY_OFF, align 4
  %14 = call i32 @ssd1307fb_write_cmd(i32 %12, i32 %13)
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @backlight_device_unregister(i32 %17)
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = call i32 @unregister_framebuffer(%struct.fb_info* %19)
  %21 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %4, align 8
  %22 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %4, align 8
  %29 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pwm_disable(i32 %30)
  %32 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %4, align 8
  %33 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pwm_put(i32 %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = call i32 @fb_deferred_io_cleanup(%struct.fb_info* %37)
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__va(i32 %42)
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @get_order(i32 %47)
  %49 = call i32 @__free_pages(i32 %43, i32 %48)
  %50 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %51 = call i32 @framebuffer_release(%struct.fb_info* %50)
  ret i32 0
}

declare dso_local %struct.fb_info* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ssd1307fb_write_cmd(i32, i32) #1

declare dso_local i32 @backlight_device_unregister(i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @pwm_disable(i32) #1

declare dso_local i32 @pwm_put(i32) #1

declare dso_local i32 @fb_deferred_io_cleanup(%struct.fb_info*) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @__va(i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
