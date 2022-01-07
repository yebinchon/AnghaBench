; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_set_color_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_set_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omapfb_color_key*)* }
%struct.omapfb_color_key = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*, %struct.omapfb_color_key*)* @omapfb_set_color_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_set_color_key(%struct.omapfb_device* %0, %struct.omapfb_color_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb_device*, align 8
  %5 = alloca %struct.omapfb_color_key*, align 8
  %6 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %4, align 8
  store %struct.omapfb_color_key* %1, %struct.omapfb_color_key** %5, align 8
  %7 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %8 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.omapfb_color_key*)*, i32 (%struct.omapfb_color_key*)** %10, align 8
  %12 = icmp ne i32 (%struct.omapfb_color_key*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %18 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %17)
  %19 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %20 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.omapfb_color_key*)*, i32 (%struct.omapfb_color_key*)** %22, align 8
  %24 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %5, align 8
  %25 = call i32 %23(%struct.omapfb_color_key* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %27 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
