; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_gpio_setup_data_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_gpio_setup_data_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc_chip = type { %struct.TYPE_6__*, %struct.sh_pfc* }
%struct.TYPE_6__ = type { i32, %struct.pinmux_data_reg* }
%struct.pinmux_data_reg = type { i64 }
%struct.sh_pfc = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, %struct.pinmux_data_reg* }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc_chip*)* @gpio_setup_data_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_setup_data_regs(%struct.sh_pfc_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_pfc_chip*, align 8
  %4 = alloca %struct.sh_pfc*, align 8
  %5 = alloca %struct.pinmux_data_reg*, align 8
  %6 = alloca i32, align 4
  store %struct.sh_pfc_chip* %0, %struct.sh_pfc_chip** %3, align 8
  %7 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %8 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %7, i32 0, i32 1
  %9 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  store %struct.sh_pfc* %9, %struct.sh_pfc** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %12 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %15, i64 %17
  %19 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %28 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.TYPE_6__* @devm_kcalloc(i32 %29, i32 %30, i32 16, i32 %31)
  %33 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %34 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %33, i32 0, i32 0
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %36 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp eq %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %107

42:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  %43 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %44 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %46, align 8
  store %struct.pinmux_data_reg* %47, %struct.pinmux_data_reg** %5, align 8
  br label %48

48:                                               ; preds = %72, %42
  %49 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %5, align 8
  %50 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %48
  %54 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %5, align 8
  %55 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %56 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store %struct.pinmux_data_reg* %54, %struct.pinmux_data_reg** %61, align 8
  %62 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %63 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %5, align 8
  %64 = call i32 @gpio_read_data_reg(%struct.sh_pfc_chip* %62, %struct.pinmux_data_reg* %63)
  %65 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %66 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 8
  br label %72

72:                                               ; preds = %53
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %5, align 8
  %76 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %75, i32 1
  store %struct.pinmux_data_reg* %76, %struct.pinmux_data_reg** %5, align 8
  br label %48

77:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %103, %77
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %81 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %79, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %78
  %87 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %88 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %103

99:                                               ; preds = %86
  %100 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @gpio_setup_data_reg(%struct.sh_pfc_chip* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %98
  %104 = load i32, i32* %6, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %78

106:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %39
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_6__* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_read_data_reg(%struct.sh_pfc_chip*, %struct.pinmux_data_reg*) #1

declare dso_local i32 @gpio_setup_data_reg(%struct.sh_pfc_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
