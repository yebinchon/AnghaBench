; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_mtk-eint.c_mtk_eint_set_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_mtk-eint.c_mtk_eint_set_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eint = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.irq_data = type { i32 }

@mtk_eint_set_debounce.debounce_time = internal constant [7 x i32] [i32 500, i32 1000, i32 16000, i32 32000, i32 64000, i32 128000, i32 256000], align 16
@EINVAL = common dso_local global i32 0, align 4
@MTK_EINT_DBNC_SET_DBNC_BITS = common dso_local global i32 0, align 4
@MTK_EINT_DBNC_SET_EN = common dso_local global i32 0, align 4
@MTK_EINT_DBNC_RST_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_eint_set_debounce(%struct.mtk_eint* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_eint*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.irq_data*, align 8
  store %struct.mtk_eint* %0, %struct.mtk_eint** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.mtk_eint*, %struct.mtk_eint** %5, align 8
  %20 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @irq_find_mapping(i32 %21, i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i64, i64* %6, align 8
  %25 = urem i64 %24, 4
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.irq_data* @irq_get_irq_data(i32 %28)
  store %struct.irq_data* %29, %struct.irq_data** %18, align 8
  %30 = load i64, i64* %6, align 8
  %31 = udiv i64 %30, 4
  %32 = mul i64 %31, 4
  %33 = load %struct.mtk_eint*, %struct.mtk_eint** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %32, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i64, i64* %6, align 8
  %41 = udiv i64 %40, 4
  %42 = mul i64 %41, 4
  %43 = load %struct.mtk_eint*, %struct.mtk_eint** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %42, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load %struct.mtk_eint*, %struct.mtk_eint** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @mtk_eint_can_en_debounce(%struct.mtk_eint* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %3
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %123

57:                                               ; preds = %3
  %58 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @mtk_eint_set_debounce.debounce_time, i64 0, i64 0))
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %73, %57
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @mtk_eint_set_debounce.debounce_time, i64 0, i64 0))
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [7 x i32], [7 x i32]* @mtk_eint_set_debounce.debounce_time, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ule i32 %64, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %17, align 4
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %15, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %59

76:                                               ; preds = %70, %59
  %77 = load %struct.mtk_eint*, %struct.mtk_eint** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @mtk_eint_get_mask(%struct.mtk_eint* %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load %struct.irq_data*, %struct.irq_data** %18, align 8
  %83 = call i32 @mtk_eint_mask(%struct.irq_data* %82)
  store i32 1, i32* %16, align 4
  br label %85

84:                                               ; preds = %76
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 255, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.mtk_eint*, %struct.mtk_eint** %5, align 8
  %90 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = call i32 @writel(i32 %88, i64 %94)
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* @MTK_EINT_DBNC_SET_DBNC_BITS, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* @MTK_EINT_DBNC_SET_EN, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = shl i32 %100, %101
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* @MTK_EINT_DBNC_RST_BIT, align 4
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %103, %104
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.mtk_eint*, %struct.mtk_eint** %5, align 8
  %110 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i32 @writel(i32 %108, i64 %114)
  %116 = call i32 @udelay(i32 1)
  %117 = load i32, i32* %16, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %85
  %120 = load %struct.irq_data*, %struct.irq_data** %18, align 8
  %121 = call i32 @mtk_eint_unmask(%struct.irq_data* %120)
  br label %122

122:                                              ; preds = %119, %85
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %54
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @irq_find_mapping(i32, i64) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @mtk_eint_can_en_debounce(%struct.mtk_eint*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mtk_eint_get_mask(%struct.mtk_eint*, i64) #1

declare dso_local i32 @mtk_eint_mask(%struct.irq_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mtk_eint_unmask(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
