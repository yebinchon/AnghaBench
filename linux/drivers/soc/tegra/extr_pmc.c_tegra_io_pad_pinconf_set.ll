; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tegra_pmc = type { i32 }
%struct.tegra_io_pad_soc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TEGRA_IO_PAD_VOLTAGE_1V8 = common dso_local global i32 0, align 4
@TEGRA_IO_PAD_VOLTAGE_3V3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @tegra_io_pad_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_io_pad_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_pmc*, align 8
  %11 = alloca %struct.tegra_io_pad_soc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.tegra_pmc* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.tegra_pmc* %17, %struct.tegra_pmc** %10, align 8
  %18 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.tegra_io_pad_soc* @tegra_io_pad_find(%struct.tegra_pmc* %18, i32 %19)
  store %struct.tegra_io_pad_soc* %20, %struct.tegra_io_pad_soc** %11, align 8
  %21 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %11, align 8
  %22 = icmp ne %struct.tegra_io_pad_soc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %95

26:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %91, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %94

31:                                               ; preds = %27
  %32 = load i64*, i64** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pinconf_to_config_param(i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i64*, i64** %8, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @pinconf_to_config_argument(i64 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %87 [
    i32 129, label %45
    i32 128, label %64
  ]

45:                                               ; preds = %31
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %11, align 8
  %50 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @tegra_io_pad_power_disable(i32 %51)
  store i32 %52, i32* %14, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %11, align 8
  %55 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tegra_io_pad_power_enable(i32 %56)
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %5, align 4
  br label %95

63:                                               ; preds = %58
  br label %90

64:                                               ; preds = %31
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @TEGRA_IO_PAD_VOLTAGE_1V8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @TEGRA_IO_PAD_VOLTAGE_3V3, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %95

75:                                               ; preds = %68, %64
  %76 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %77 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %11, align 8
  %78 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @tegra_io_pad_set_voltage(%struct.tegra_pmc* %76, i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %5, align 4
  br label %95

86:                                               ; preds = %75
  br label %90

87:                                               ; preds = %31
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %95

90:                                               ; preds = %86, %63
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %27

94:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %87, %84, %72, %61, %23
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.tegra_pmc* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.tegra_io_pad_soc* @tegra_io_pad_find(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @tegra_io_pad_power_disable(i32) #1

declare dso_local i32 @tegra_io_pad_power_enable(i32) #1

declare dso_local i32 @tegra_io_pad_set_voltage(%struct.tegra_pmc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
