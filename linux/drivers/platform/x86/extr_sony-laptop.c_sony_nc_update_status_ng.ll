; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_update_status_ng.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_update_status_ng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sony_backlight_props = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @sony_nc_update_status_ng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_nc_update_status_ng(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sony_backlight_props*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call i64 @bl_get_data(%struct.backlight_device* %7)
  %9 = inttoptr i64 %8 to %struct.sony_backlight_props*
  store %struct.sony_backlight_props* %9, %struct.sony_backlight_props** %6, align 8
  %10 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %11 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %6, align 8
  %15 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %6, align 8
  %19 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %6, align 8
  %22 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %23, %25
  %27 = call i64 @sony_call_snc_handle(i32 %20, i32 %26, i32* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @bl_get_data(%struct.backlight_device*) #1

declare dso_local i64 @sony_call_snc_handle(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
