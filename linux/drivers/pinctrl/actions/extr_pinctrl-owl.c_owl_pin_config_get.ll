; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.owl_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.owl_padinfo*, i32, i32*)*, %struct.owl_padinfo* }
%struct.owl_padinfo = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @owl_pin_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.owl_pinctrl*, align 8
  %10 = alloca %struct.owl_padinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.owl_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.owl_pinctrl* %17, %struct.owl_pinctrl** %9, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %9, align 8
  %22 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.owl_padinfo*, %struct.owl_padinfo** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %25, i64 %27
  store %struct.owl_padinfo* %28, %struct.owl_padinfo** %10, align 8
  %29 = load %struct.owl_padinfo*, %struct.owl_padinfo** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @owl_pad_pinconf_reg(%struct.owl_padinfo* %29, i32 %30, i32* %12, i32* %13, i32* %14)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %70

36:                                               ; preds = %3
  %37 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %9, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @owl_read_field(%struct.owl_pinctrl* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %9, align 8
  %43 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.owl_padinfo*, i32, i32*)*, i32 (%struct.owl_padinfo*, i32, i32*)** %45, align 8
  %47 = icmp ne i32 (%struct.owl_padinfo*, i32, i32*)* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %70

51:                                               ; preds = %36
  %52 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %9, align 8
  %53 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.owl_padinfo*, i32, i32*)*, i32 (%struct.owl_padinfo*, i32, i32*)** %55, align 8
  %57 = load %struct.owl_padinfo*, %struct.owl_padinfo** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 %56(%struct.owl_padinfo* %57, i32 %58, i32* %15)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %70

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i64 @pinconf_to_config_packed(i32 %65, i32 %66)
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %62, %48, %34
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.owl_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @owl_pad_pinconf_reg(%struct.owl_padinfo*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @owl_read_field(%struct.owl_pinctrl*, i32, i32, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
