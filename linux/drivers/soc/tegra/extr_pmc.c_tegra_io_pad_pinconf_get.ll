; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tegra_pmc = type { i32 }
%struct.tegra_io_pad_soc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @tegra_io_pad_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_io_pad_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_pmc*, align 8
  %10 = alloca %struct.tegra_io_pad_soc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pinconf_to_config_param(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.tegra_pmc* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.tegra_pmc* %17, %struct.tegra_pmc** %9, align 8
  %18 = load %struct.tegra_pmc*, %struct.tegra_pmc** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.tegra_io_pad_soc* @tegra_io_pad_find(%struct.tegra_pmc* %18, i32 %19)
  store %struct.tegra_io_pad_soc* %20, %struct.tegra_io_pad_soc** %10, align 8
  %21 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %10, align 8
  %22 = icmp ne %struct.tegra_io_pad_soc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %55 [
    i32 128, label %28
    i32 129, label %40
  ]

28:                                               ; preds = %26
  %29 = load %struct.tegra_pmc*, %struct.tegra_pmc** %9, align 8
  %30 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %10, align 8
  %31 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tegra_io_pad_get_voltage(%struct.tegra_pmc* %29, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %12, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load %struct.tegra_pmc*, %struct.tegra_pmc** %9, align 8
  %42 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %10, align 8
  %43 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @tegra_io_pad_is_powered(%struct.tegra_pmc* %41, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %63

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %12, align 4
  br label %58

55:                                               ; preds = %26
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %50, %38
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @pinconf_to_config_packed(i32 %59, i32 %60)
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %55, %48, %36, %23
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local %struct.tegra_pmc* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.tegra_io_pad_soc* @tegra_io_pad_find(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @tegra_io_pad_get_voltage(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @tegra_io_pad_is_powered(%struct.tegra_pmc*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
