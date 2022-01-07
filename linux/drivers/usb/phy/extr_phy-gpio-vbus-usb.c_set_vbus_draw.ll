; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-gpio-vbus-usb.c_set_vbus_draw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-gpio-vbus-usb.c_set_vbus_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_vbus_data = type { i32, i32, %struct.regulator* }
%struct.regulator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_vbus_data*, i32)* @set_vbus_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vbus_draw(%struct.gpio_vbus_data* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_vbus_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_vbus_data* %0, %struct.gpio_vbus_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %8, i32 0, i32 2
  %10 = load %struct.regulator*, %struct.regulator** %9, align 8
  store %struct.regulator* %10, %struct.regulator** %5, align 8
  %11 = load %struct.regulator*, %struct.regulator** %5, align 8
  %12 = icmp ne %struct.regulator* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %54

14:                                               ; preds = %2
  %15 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.regulator*, %struct.regulator** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = mul i32 1000, %22
  %24 = call i32 @regulator_set_current_limit(%struct.regulator* %21, i32 0, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.regulator*, %struct.regulator** %5, align 8
  %29 = call i32 @regulator_enable(%struct.regulator* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %54

33:                                               ; preds = %27
  %34 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %3, align 8
  %35 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %20
  br label %50

37:                                               ; preds = %14
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.regulator*, %struct.regulator** %5, align 8
  %42 = call i32 @regulator_disable(%struct.regulator* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %54

46:                                               ; preds = %40
  %47 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %3, align 8
  %48 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %3, align 8
  %53 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %45, %32, %13
  ret void
}

declare dso_local i32 @regulator_set_current_limit(%struct.regulator*, i32, i32) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
