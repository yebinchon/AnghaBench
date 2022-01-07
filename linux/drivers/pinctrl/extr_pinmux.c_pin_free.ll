; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pin_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pin_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinmux_ops* }
%struct.pinmux_ops = type { i32 (%struct.pinctrl_dev.0*, i32)*, i32 (%struct.pinctrl_dev.1*, %struct.pinctrl_gpio_range*, i32)* }
%struct.pinctrl_dev.0 = type opaque
%struct.pinctrl_dev.1 = type opaque
%struct.pinctrl_gpio_range = type opaque
%struct.pinctrl_gpio_range.2 = type { i32 }
%struct.pin_desc = type { i8*, i8*, i32*, i64 }

@.str = private unnamed_addr constant [45 x i8] c"pin is not registered so it cannot be freed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pinctrl_dev*, i32, %struct.pinctrl_gpio_range.2*)* @pin_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pin_free(%struct.pinctrl_dev* %0, i32 %1, %struct.pinctrl_gpio_range.2* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl_gpio_range.2*, align 8
  %8 = alloca %struct.pinmux_ops*, align 8
  %9 = alloca %struct.pin_desc*, align 8
  %10 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pinctrl_gpio_range.2* %2, %struct.pinctrl_gpio_range.2** %7, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pinmux_ops*, %struct.pinmux_ops** %14, align 8
  store %struct.pinmux_ops* %15, %struct.pinmux_ops** %8, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %16, i32 %17)
  store %struct.pin_desc* %18, %struct.pin_desc** %9, align 8
  %19 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %20 = icmp eq %struct.pin_desc* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %105

26:                                               ; preds = %3
  %27 = load %struct.pinctrl_gpio_range.2*, %struct.pinctrl_gpio_range.2** %7, align 8
  %28 = icmp ne %struct.pinctrl_gpio_range.2* %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %31 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %105

39:                                               ; preds = %29
  %40 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %41 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %45 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i8* null, i8** %4, align 8
  br label %105

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.pinctrl_gpio_range.2*, %struct.pinctrl_gpio_range.2** %7, align 8
  %52 = icmp ne %struct.pinctrl_gpio_range.2* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.pinmux_ops*, %struct.pinmux_ops** %8, align 8
  %55 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %54, i32 0, i32 1
  %56 = load i32 (%struct.pinctrl_dev.1*, %struct.pinctrl_gpio_range*, i32)*, i32 (%struct.pinctrl_dev.1*, %struct.pinctrl_gpio_range*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.pinctrl_dev.1*, %struct.pinctrl_gpio_range*, i32)* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.pinmux_ops*, %struct.pinmux_ops** %8, align 8
  %60 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %59, i32 0, i32 1
  %61 = load i32 (%struct.pinctrl_dev.1*, %struct.pinctrl_gpio_range*, i32)*, i32 (%struct.pinctrl_dev.1*, %struct.pinctrl_gpio_range*, i32)** %60, align 8
  %62 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %63 = bitcast %struct.pinctrl_dev* %62 to %struct.pinctrl_dev.1*
  %64 = load %struct.pinctrl_gpio_range.2*, %struct.pinctrl_gpio_range.2** %7, align 8
  %65 = bitcast %struct.pinctrl_gpio_range.2* %64 to %struct.pinctrl_gpio_range*
  %66 = load i32, i32* %6, align 4
  %67 = call i32 %61(%struct.pinctrl_dev.1* %63, %struct.pinctrl_gpio_range* %65, i32 %66)
  br label %82

68:                                               ; preds = %53, %50
  %69 = load %struct.pinmux_ops*, %struct.pinmux_ops** %8, align 8
  %70 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %69, i32 0, i32 0
  %71 = load i32 (%struct.pinctrl_dev.0*, i32)*, i32 (%struct.pinctrl_dev.0*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.pinctrl_dev.0*, i32)* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.pinmux_ops*, %struct.pinmux_ops** %8, align 8
  %75 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %74, i32 0, i32 0
  %76 = load i32 (%struct.pinctrl_dev.0*, i32)*, i32 (%struct.pinctrl_dev.0*, i32)** %75, align 8
  %77 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %78 = bitcast %struct.pinctrl_dev* %77 to %struct.pinctrl_dev.0*
  %79 = load i32, i32* %6, align 4
  %80 = call i32 %76(%struct.pinctrl_dev.0* %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %68
  br label %82

82:                                               ; preds = %81, %58
  %83 = load %struct.pinctrl_gpio_range.2*, %struct.pinctrl_gpio_range.2** %7, align 8
  %84 = icmp ne %struct.pinctrl_gpio_range.2* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %87 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %10, align 8
  %89 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %90 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %89, i32 0, i32 0
  store i8* null, i8** %90, align 8
  br label %99

91:                                               ; preds = %82
  %92 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %93 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %10, align 8
  %95 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %96 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %95, i32 0, i32 1
  store i8* null, i8** %96, align 8
  %97 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %98 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %97, i32 0, i32 2
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %91, %85
  %100 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %101 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @module_put(i32 %102)
  %104 = load i8*, i8** %10, align 8
  store i8* %104, i8** %4, align 8
  br label %105

105:                                              ; preds = %99, %48, %38, %21
  %106 = load i8*, i8** %4, align 8
  ret i8* %106
}

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
