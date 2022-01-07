; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-da850-pupd.c_da850_pupd_pin_config_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-da850-pupd.c_da850_pupd_pin_config_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.da850_pupd_data = type { i64 }

@DA850_PUPD_ENA = common dso_local global i64 0, align 8
@DA850_PUPD_SEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @da850_pupd_pin_config_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da850_pupd_pin_config_group_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.da850_pupd_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.da850_pupd_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.da850_pupd_data* %13, %struct.da850_pupd_data** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pinconf_to_config_param(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %8, align 8
  %18 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DA850_PUPD_ENA, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %59 [
    i32 130, label %33
    i32 128, label %34
    i32 129, label %34
  ]

33:                                               ; preds = %3
  br label %62

34:                                               ; preds = %3, %3
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %62

38:                                               ; preds = %34
  %39 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %8, align 8
  %40 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DA850_PUPD_SEL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = xor i32 %48, -1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %11, align 4
  br label %62

59:                                               ; preds = %3
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %50, %37, %33
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @pinconf_to_config_packed(i32 %63, i32 %64)
  %66 = load i64*, i64** %7, align 8
  store i64 %65, i64* %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.da850_pupd_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
