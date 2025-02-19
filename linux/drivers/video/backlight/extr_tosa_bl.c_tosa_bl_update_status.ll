; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_bl.c_tosa_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_bl.c_tosa_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.backlight_properties }
%struct.backlight_properties = type { i32, i32, i32 }
%struct.tosa_bl_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @tosa_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.backlight_properties*, align 8
  %4 = alloca %struct.tosa_bl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 0
  store %struct.backlight_properties* %8, %struct.backlight_properties** %3, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %10 = call %struct.tosa_bl_data* @bl_get_data(%struct.backlight_device* %9)
  store %struct.tosa_bl_data* %10, %struct.tosa_bl_data** %4, align 8
  %11 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %12 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %15 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @max(i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %19 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tosa_bl_set_backlight(%struct.tosa_bl_data* %25, i32 %26)
  ret i32 0
}

declare dso_local %struct.tosa_bl_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @tosa_bl_set_backlight(%struct.tosa_bl_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
