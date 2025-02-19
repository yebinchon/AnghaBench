; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_generic_bl.c_genericbl_send_intensity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_generic_bl.c_genericbl_send_intensity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)*, i32 (i32)* }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@bl_machinfo = common dso_local global %struct.TYPE_4__* null, align 8
@genericbl_intensity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @genericbl_send_intensity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genericbl_send_intensity(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %4 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %5 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %17 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bl_machinfo, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 %36(i32 %37)
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* @genericbl_intensity, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bl_machinfo, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (...)*, i32 (...)** %41, align 8
  %43 = icmp ne i32 (...)* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bl_machinfo, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (...)*, i32 (...)** %46, align 8
  %48 = call i32 (...) %47()
  br label %49

49:                                               ; preds = %44, %33
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
