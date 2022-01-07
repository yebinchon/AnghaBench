; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_pinctrl = type { i32, i32*, %struct.mtk_pinctrl_group*, %struct.TYPE_3__* }
%struct.mtk_pinctrl_group = type { i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.mtk_desc_pin* }
%struct.mtk_desc_pin = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_pctrl_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pctrl_build_state(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_desc_pin*, align 8
  %7 = alloca %struct.mtk_pinctrl_group*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.mtk_pinctrl* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.mtk_pinctrl* %9, %struct.mtk_pinctrl** %4, align 8
  %10 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kcalloc(i32* %18, i32 %21, i32 8, i32 %22)
  %24 = bitcast i8* %23 to %struct.mtk_pinctrl_group*
  %25 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %25, i32 0, i32 2
  store %struct.mtk_pinctrl_group* %24, %struct.mtk_pinctrl_group** %26, align 8
  %27 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %27, i32 0, i32 2
  %29 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %28, align 8
  %30 = icmp ne %struct.mtk_pinctrl_group* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %102

34:                                               ; preds = %1
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kcalloc(i32* %36, i32 %39, i32 4, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %102

52:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %98, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %53
  %62 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %66, i64 %68
  store %struct.mtk_desc_pin* %69, %struct.mtk_desc_pin** %6, align 8
  %70 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %71 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %70, i32 0, i32 2
  %72 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %72, i64 %74
  store %struct.mtk_pinctrl_group* %75, %struct.mtk_pinctrl_group** %7, align 8
  %76 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %6, align 8
  %77 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %7, align 8
  %81 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %6, align 8
  %83 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %7, align 8
  %87 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %6, align 8
  %89 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %93 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %61
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %53

101:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %49, %31
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.mtk_pinctrl* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
