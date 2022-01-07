; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_drive_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_drive_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_drive_desc = type { i32, i32, i32, i32 }
%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pin_desc = type { i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@mtk_drive = common dso_local global %struct.mtk_drive_desc* null, align 8
@PINCTRL_PIN_REG_E4 = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_E8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_pinconf_drive_set(%struct.mtk_pinctrl* %0, %struct.mtk_pin_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_pinctrl*, align 8
  %6 = alloca %struct.mtk_pin_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_drive_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %5, align 8
  store %struct.mtk_pin_desc* %1, %struct.mtk_pin_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ENOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.mtk_drive_desc*, %struct.mtk_drive_desc** @mtk_drive, align 8
  %13 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %14 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.mtk_drive_desc, %struct.mtk_drive_desc* %12, i64 %15
  store %struct.mtk_drive_desc* %16, %struct.mtk_drive_desc** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mtk_drive_desc*, %struct.mtk_drive_desc** %8, align 8
  %19 = getelementptr inbounds %struct.mtk_drive_desc, %struct.mtk_drive_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mtk_drive_desc*, %struct.mtk_drive_desc** %8, align 8
  %25 = getelementptr inbounds %struct.mtk_drive_desc, %struct.mtk_drive_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mtk_drive_desc*, %struct.mtk_drive_desc** %8, align 8
  %31 = getelementptr inbounds %struct.mtk_drive_desc, %struct.mtk_drive_desc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.mtk_drive_desc*, %struct.mtk_drive_desc** %8, align 8
  %38 = getelementptr inbounds %struct.mtk_drive_desc, %struct.mtk_drive_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.mtk_drive_desc*, %struct.mtk_drive_desc** %8, align 8
  %43 = getelementptr inbounds %struct.mtk_drive_desc, %struct.mtk_drive_desc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %47 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %48 = load i32, i32* @PINCTRL_PIN_REG_E4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 1
  %51 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %46, %struct.mtk_pin_desc* %47, i32 %48, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %71

56:                                               ; preds = %35
  %57 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %58 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %59 = load i32, i32* @PINCTRL_PIN_REG_E8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 2
  %62 = ashr i32 %61, 1
  %63 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %57, %struct.mtk_pin_desc* %58, i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %28, %22, %3
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %66, %54
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
