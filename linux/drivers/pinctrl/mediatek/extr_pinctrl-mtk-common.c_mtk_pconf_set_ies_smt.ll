; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pconf_set_ies_smt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pconf_set_ies_smt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32)*, i32, i32, i32 }

@MTK_PINCTRL_NOT_SUPPORT = common dso_local global i32 0, align 4
@PIN_CONFIG_INPUT_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIN_CONFIG_INPUT_SCHMITT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, i32, i32, i32)* @mtk_pconf_set_ies_smt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pconf_set_ies_smt(%struct.mtk_pinctrl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %14 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %16, align 8
  %18 = icmp ne i32 (i32, i32, i32, i32, i32)* %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %4
  %20 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %21 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MTK_PINCTRL_NOT_SUPPORT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @PIN_CONFIG_INPUT_ENABLE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %128

34:                                               ; preds = %27, %19, %4
  %35 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %36 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %38, align 8
  %40 = icmp ne i32 (i32, i32, i32, i32, i32)* %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %34
  %42 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %43 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MTK_PINCTRL_NOT_SUPPORT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PIN_CONFIG_INPUT_SCHMITT_ENABLE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %128

56:                                               ; preds = %49, %41, %34
  %57 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %58 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %60, align 8
  %62 = icmp ne i32 (i32, i32, i32, i32, i32)* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %65 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %67, align 8
  %69 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mtk_get_regmap(%struct.mtk_pinctrl* %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %74 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 %68(i32 %71, i32 %72, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %128

81:                                               ; preds = %56
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 15
  %84 = call i32 @BIT(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @PIN_CONFIG_INPUT_ENABLE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %90 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %11, align 4
  br label %100

94:                                               ; preds = %81
  %95 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %96 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @mtk_get_port(%struct.mtk_pinctrl* %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %111 = call i32 @SET_ADDR(i64 %109, %struct.mtk_pinctrl* %110)
  store i32 %111, i32* %10, align 4
  br label %121

112:                                              ; preds = %100
  %113 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @mtk_get_port(%struct.mtk_pinctrl* %113, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %120 = call i32 @CLR_ADDR(i64 %118, %struct.mtk_pinctrl* %119)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %112, %103
  %122 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @mtk_get_regmap(%struct.mtk_pinctrl* %122, i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @regmap_write(i32 %124, i32 %125, i32 %126)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %121, %63, %53, %31
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @mtk_get_regmap(%struct.mtk_pinctrl*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SET_ADDR(i64, %struct.mtk_pinctrl*) #1

declare dso_local i64 @mtk_get_port(%struct.mtk_pinctrl*, i32) #1

declare dso_local i32 @CLR_ADDR(i64, %struct.mtk_pinctrl*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
