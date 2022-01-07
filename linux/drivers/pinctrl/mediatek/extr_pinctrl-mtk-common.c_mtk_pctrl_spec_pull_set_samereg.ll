; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_spec_pull_set_samereg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_spec_pull_set_samereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.mtk_pin_spec_pupd_set_samereg = type { i32, i8, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_pctrl_spec_pull_set_samereg(%struct.regmap* %0, %struct.mtk_pin_spec_pupd_set_samereg* %1, i32 %2, i32 %3, i8 zeroext %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.mtk_pin_spec_pupd_set_samereg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.mtk_pin_spec_pupd_set_samereg*, align 8
  %24 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %9, align 8
  store %struct.mtk_pin_spec_pupd_set_samereg* %1, %struct.mtk_pin_spec_pupd_set_samereg** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8 %4, i8* %13, align 1
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %40, %7
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.mtk_pin_spec_pupd_set_samereg*, %struct.mtk_pin_spec_pupd_set_samereg** %10, align 8
  %32 = load i32, i32* %16, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mtk_pin_spec_pupd_set_samereg, %struct.mtk_pin_spec_pupd_set_samereg* %31, i64 %33
  %35 = getelementptr inbounds %struct.mtk_pin_spec_pupd_set_samereg, %struct.mtk_pin_spec_pupd_set_samereg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %24, align 4
  br label %43

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %16, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %25

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %24, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %133

49:                                               ; preds = %43
  %50 = load %struct.mtk_pin_spec_pupd_set_samereg*, %struct.mtk_pin_spec_pupd_set_samereg** %10, align 8
  %51 = load i32, i32* %16, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mtk_pin_spec_pupd_set_samereg, %struct.mtk_pin_spec_pupd_set_samereg* %50, i64 %52
  store %struct.mtk_pin_spec_pupd_set_samereg* %53, %struct.mtk_pin_spec_pupd_set_samereg** %23, align 8
  %54 = load %struct.mtk_pin_spec_pupd_set_samereg*, %struct.mtk_pin_spec_pupd_set_samereg** %23, align 8
  %55 = getelementptr inbounds %struct.mtk_pin_spec_pupd_set_samereg, %struct.mtk_pin_spec_pupd_set_samereg* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 4
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %13, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %57, %59
  store i32 %60, i32* %18, align 4
  %61 = load %struct.mtk_pin_spec_pupd_set_samereg*, %struct.mtk_pin_spec_pupd_set_samereg** %23, align 8
  %62 = getelementptr inbounds %struct.mtk_pin_spec_pupd_set_samereg, %struct.mtk_pin_spec_pupd_set_samereg* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 4
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* %13, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 1
  %68 = add nsw i32 %64, %67
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %49
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %17, align 4
  br label %75

73:                                               ; preds = %49
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load %struct.mtk_pin_spec_pupd_set_samereg*, %struct.mtk_pin_spec_pupd_set_samereg** %23, align 8
  %77 = getelementptr inbounds %struct.mtk_pin_spec_pupd_set_samereg, %struct.mtk_pin_spec_pupd_set_samereg* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @BIT(i32 %78)
  store i32 %79, i32* %20, align 4
  %80 = load %struct.regmap*, %struct.regmap** %9, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @regmap_write(%struct.regmap* %80, i32 %81, i32 %82)
  %84 = load %struct.mtk_pin_spec_pupd_set_samereg*, %struct.mtk_pin_spec_pupd_set_samereg** %23, align 8
  %85 = getelementptr inbounds %struct.mtk_pin_spec_pupd_set_samereg, %struct.mtk_pin_spec_pupd_set_samereg* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BIT(i32 %86)
  store i32 %87, i32* %21, align 4
  %88 = load %struct.mtk_pin_spec_pupd_set_samereg*, %struct.mtk_pin_spec_pupd_set_samereg** %23, align 8
  %89 = getelementptr inbounds %struct.mtk_pin_spec_pupd_set_samereg, %struct.mtk_pin_spec_pupd_set_samereg* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BIT(i32 %90)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %15, align 4
  switch i32 %92, label %129 [
    i32 131, label %93
    i32 130, label %102
    i32 129, label %111
    i32 128, label %120
  ]

93:                                               ; preds = %75
  %94 = load %struct.regmap*, %struct.regmap** %9, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %21, align 4
  %97 = call i32 @regmap_write(%struct.regmap* %94, i32 %95, i32 %96)
  %98 = load %struct.regmap*, %struct.regmap** %9, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i32 @regmap_write(%struct.regmap* %98, i32 %99, i32 %100)
  br label %132

102:                                              ; preds = %75
  %103 = load %struct.regmap*, %struct.regmap** %9, align 8
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %21, align 4
  %106 = call i32 @regmap_write(%struct.regmap* %103, i32 %104, i32 %105)
  %107 = load %struct.regmap*, %struct.regmap** %9, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %22, align 4
  %110 = call i32 @regmap_write(%struct.regmap* %107, i32 %108, i32 %109)
  br label %132

111:                                              ; preds = %75
  %112 = load %struct.regmap*, %struct.regmap** %9, align 8
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %21, align 4
  %115 = call i32 @regmap_write(%struct.regmap* %112, i32 %113, i32 %114)
  %116 = load %struct.regmap*, %struct.regmap** %9, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %22, align 4
  %119 = call i32 @regmap_write(%struct.regmap* %116, i32 %117, i32 %118)
  br label %132

120:                                              ; preds = %75
  %121 = load %struct.regmap*, %struct.regmap** %9, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %21, align 4
  %124 = call i32 @regmap_write(%struct.regmap* %121, i32 %122, i32 %123)
  %125 = load %struct.regmap*, %struct.regmap** %9, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %22, align 4
  %128 = call i32 @regmap_write(%struct.regmap* %125, i32 %126, i32 %127)
  br label %132

129:                                              ; preds = %75
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %133

132:                                              ; preds = %120, %111, %102, %93
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %132, %129, %46
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
