; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_sm750_calc_pll_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_sm750_calc_pll_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_value = type { i32, i64, i32, i32, i32, i32 }

@SM750LE = common dso_local global i64 0, align 8
@MXCLK_PLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm750_calc_pll_value(i32 %0, %struct.pll_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pll_value*, align 8
  %6 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pll_value* %1, %struct.pll_value** %5, align 8
  store i32 3, i32* %19, align 4
  store i32 6, i32* %20, align 4
  %22 = call i64 (...) @sm750_get_chip_type()
  %23 = load i64, i64* @SM750LE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %3, align 4
  br label %142

27:                                               ; preds = %2
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %10, align 4
  %28 = load i32, i32* %4, align 4
  %29 = udiv i32 %28, 1000
  store i32 %29, i32* %16, align 4
  %30 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %31 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 1000
  store i32 %33, i32* %15, align 4
  %34 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %35 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MXCLK_PLL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 3, i32* %20, align 4
  br label %40

40:                                               ; preds = %39, %27
  store i32 15, i32* %6, align 4
  br label %41

41:                                               ; preds = %137, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %140

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %16, align 4
  %47 = mul i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %15, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %15, align 4
  %53 = urem i32 %51, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul i32 %54, 10000
  %56 = load i32, i32* %15, align 4
  %57 = udiv i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %20, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %133, %44
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %136

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @BIT(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = mul i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %8, align 4
  %70 = mul i32 %68, %69
  %71 = udiv i32 %70, 10000
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = mul i32 %74, %75
  %77 = urem i32 %76, 10000
  %78 = icmp ugt i32 %77, 5000
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 256
  br i1 %84, label %85, label %132

85:                                               ; preds = %62
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %85
  %89 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %90 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = sdiv i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %4, align 4
  %100 = sub i32 %98, %99
  %101 = call i32 @abs(i32 %100)
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %88
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %108 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %111 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %113 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %112, i32 0, i32 4
  store i32 0, i32* %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = icmp sgt i32 %114, 3
  br i1 %115, label %116, label %121

116:                                              ; preds = %105
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %117, 3
  %119 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %120 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %116, %105
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %124 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %122, %125
  %127 = load %struct.pll_value*, %struct.pll_value** %5, align 8
  %128 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %21, align 4
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %121, %88
  br label %132

132:                                              ; preds = %131, %85, %62
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %9, align 4
  br label %59

136:                                              ; preds = %59
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %6, align 4
  br label %41

140:                                              ; preds = %41
  %141 = load i32, i32* %18, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %25
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
