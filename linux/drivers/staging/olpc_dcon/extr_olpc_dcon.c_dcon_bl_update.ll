; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_bl_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_bl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.dcon_priv = type { i64, i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @dcon_bl_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_bl_update(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.dcon_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.dcon_priv* @bl_get_data(%struct.backlight_device* %5)
  store %struct.dcon_priv* %6, %struct.dcon_priv** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 15
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @dcon_set_backlight(%struct.dcon_priv* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %32 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %37 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %38 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @dcon_sleep(%struct.dcon_priv* %36, i32 %46)
  br label %48

48:                                               ; preds = %35, %30
  ret i32 0
}

declare dso_local %struct.dcon_priv* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @dcon_set_backlight(%struct.dcon_priv*, i64) #1

declare dso_local i32 @dcon_sleep(%struct.dcon_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
