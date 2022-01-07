; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pctrl_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pctrl_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_pinctrl = type { i32*, %struct.mtk_pinctrl_group*, %struct.TYPE_2__* }
%struct.mtk_pinctrl_group = type { i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.mtk_pin_desc*, i32 }
%struct.mtk_pin_desc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_pctrl_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pctrl_build_state(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pin_desc*, align 8
  %7 = alloca %struct.mtk_pinctrl_group*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.mtk_pinctrl* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.mtk_pinctrl* %9, %struct.mtk_pinctrl** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kmalloc_array(i32* %11, i32 %16, i32 8, i32 %17)
  %19 = bitcast i8* %18 to %struct.mtk_pinctrl_group*
  %20 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %20, i32 0, i32 1
  store %struct.mtk_pinctrl_group* %19, %struct.mtk_pinctrl_group** %21, align 8
  %22 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %22, i32 0, i32 1
  %24 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %23, align 8
  %25 = icmp ne %struct.mtk_pinctrl_group* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %96

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @devm_kmalloc_array(i32* %31, i32 %36, i32 4, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %96

49:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %92, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %53 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %50
  %59 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %63, i64 %65
  store %struct.mtk_pin_desc* %66, %struct.mtk_pin_desc** %6, align 8
  %67 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %68 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %67, i32 0, i32 1
  %69 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %69, i64 %71
  store %struct.mtk_pinctrl_group* %72, %struct.mtk_pinctrl_group** %7, align 8
  %73 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %74 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %7, align 8
  %77 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %79 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %7, align 8
  %82 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %84 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %58
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %50

95:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %46, %26
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.mtk_pinctrl* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @devm_kmalloc_array(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
