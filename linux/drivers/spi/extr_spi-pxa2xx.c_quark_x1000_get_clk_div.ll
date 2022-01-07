; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_quark_x1000_get_clk_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_quark_x1000_get_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @quark_x1000_get_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quark_x1000_get_clk_div(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i64 200000000, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = udiv i64 %19, 2
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = udiv i64 %21, 2
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = mul i64 %23, 2
  %25 = udiv i64 %24, 5
  store i64 %25, i64* %8, align 8
  store i64 8388608, i64* %16, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @DIV_ROUND_UP(i64 %26, i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ugt i64 %29, 256
  br i1 %30, label %31, label %52

31:                                               ; preds = %2
  %32 = load i64, i64* %11, align 8
  %33 = sub i64 %32, 1
  %34 = call i32 @fls_long(i64 %33)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %36, 9
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %39, 9
  %41 = load i64, i64* %11, align 8
  %42 = lshr i64 %41, %40
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, 9
  %45 = load i64, i64* %16, align 8
  %46 = lshr i64 %45, %44
  store i64 %46, i64* %16, align 8
  br label %47

47:                                               ; preds = %38, %31
  %48 = load i64, i64* %11, align 8
  %49 = and i64 %48, 1
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %47, %2
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @__ffs(i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = lshr i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %16, align 8
  %60 = lshr i64 %59, %58
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %16, align 8
  %63 = call i32 @fls_long(i64 %62)
  %64 = sub nsw i32 24, %63
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %61, %66
  %68 = load i64, i64* %11, align 8
  %69 = udiv i64 %67, %68
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %69, %71
  %73 = call i64 @abs(i64 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @DIV_ROUND_UP(i64 %74, i32 %75)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %12, align 8
  %79 = udiv i64 %77, %78
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %79, %81
  %83 = call i64 @abs(i64 %82)
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %52
  %88 = load i64, i64* %12, align 8
  %89 = icmp ugt i64 %88, 256
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %52
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %11, align 8
  store i64 %92, i64* %10, align 8
  br label %96

93:                                               ; preds = %87
  %94 = load i64, i64* %15, align 8
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %10, align 8
  store i64 6710886, i64* %16, align 8
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %97, %99
  %101 = icmp uge i64 %100, 80
  br i1 %101, label %102, label %124

102:                                              ; preds = %96
  %103 = load i64, i64* %6, align 8
  %104 = load i32, i32* %3, align 4
  %105 = call i64 @DIV_ROUND_UP(i64 %103, i32 %104)
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = udiv i64 16777216, %106
  store i64 %107, i64* %18, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %18, align 8
  %110 = mul i64 %108, %109
  store i64 %110, i64* %17, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call i32 @do_div(i64 %111, i32 16777216)
  %113 = load i64, i64* %17, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = sub i64 %113, %115
  %117 = call i64 @abs(i64 %116)
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %102
  store i64 1, i64* %10, align 8
  %122 = load i64, i64* %18, align 8
  store i64 %122, i64* %16, align 8
  br label %123

123:                                              ; preds = %121, %102
  br label %124

124:                                              ; preds = %123, %96
  %125 = load i64, i64* %16, align 8
  %126 = load i64*, i64** %4, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i64, i64* %10, align 8
  %128 = sub i64 %127, 1
  %129 = trunc i64 %128 to i32
  ret i32 %129
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @fls_long(i64) #1

declare dso_local i64 @__ffs(i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
