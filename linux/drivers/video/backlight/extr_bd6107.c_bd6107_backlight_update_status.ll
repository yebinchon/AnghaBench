; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_bd6107.c_bd6107_backlight_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_bd6107.c_bd6107_backlight_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.bd6107 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@BD6107_PORTSEL = common dso_local global i32 0, align 4
@BD6107_MAINCNT1 = common dso_local global i32 0, align 4
@BD6107_LEDCNT1 = common dso_local global i32 0, align 4
@BD6107_LEDCNT1_LEDONOFF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @bd6107_backlight_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd6107_backlight_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.bd6107*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.bd6107* @bl_get_data(%struct.backlight_device* %5)
  store %struct.bd6107* %6, %struct.bd6107** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %12 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %1
  %18 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %19 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %30 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24, %17, %1
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load %struct.bd6107*, %struct.bd6107** %3, align 8
  %40 = load i32, i32* @BD6107_PORTSEL, align 4
  %41 = call i32 @BD6107_PORTSEL_LEDM(i32 2)
  %42 = call i32 @BD6107_PORTSEL_LEDM(i32 1)
  %43 = or i32 %41, %42
  %44 = call i32 @BD6107_PORTSEL_LEDM(i32 0)
  %45 = or i32 %43, %44
  %46 = call i32 @bd6107_write(%struct.bd6107* %39, i32 %40, i32 %45)
  %47 = load %struct.bd6107*, %struct.bd6107** %3, align 8
  %48 = load i32, i32* @BD6107_MAINCNT1, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bd6107_write(%struct.bd6107* %47, i32 %48, i32 %49)
  %51 = load %struct.bd6107*, %struct.bd6107** %3, align 8
  %52 = load i32, i32* @BD6107_LEDCNT1, align 4
  %53 = load i32, i32* @BD6107_LEDCNT1_LEDONOFF1, align 4
  %54 = call i32 @bd6107_write(%struct.bd6107* %51, i32 %52, i32 %53)
  br label %69

55:                                               ; preds = %35
  %56 = load %struct.bd6107*, %struct.bd6107** %3, align 8
  %57 = getelementptr inbounds %struct.bd6107, %struct.bd6107* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gpio_set_value(i32 %60, i32 0)
  %62 = call i32 @msleep(i32 24)
  %63 = load %struct.bd6107*, %struct.bd6107** %3, align 8
  %64 = getelementptr inbounds %struct.bd6107, %struct.bd6107* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gpio_set_value(i32 %67, i32 1)
  br label %69

69:                                               ; preds = %55, %38
  ret i32 0
}

declare dso_local %struct.bd6107* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @bd6107_write(%struct.bd6107*, i32, i32) #1

declare dso_local i32 @BD6107_PORTSEL_LEDM(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
