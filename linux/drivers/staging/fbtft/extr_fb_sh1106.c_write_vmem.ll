; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_sh1106.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_sh1106.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i64, i64)* @write_vmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vmem(%struct.fbtft_par* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fbtft_par*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %18 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %8, align 8
  %23 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %24 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %30 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %16, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 16, %34
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 16, %42
  %44 = call i32 @DIV_ROUND_UP(i64 %41, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %107, %3
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %110

50:                                               ; preds = %46
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = or i32 176, %52
  %54 = call i32 @write_reg(%struct.fbtft_par* %51, i32 %53, i32 2, i32 16)
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @memset(i32* %55, i32 0, i32 %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %94, %50
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %90, %62
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load i64*, i64** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %68, 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %67, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %66
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %80, %66
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %63

93:                                               ; preds = %63
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %58

97:                                               ; preds = %58
  %98 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @fbtft_write_buf_dc(%struct.fbtft_par* %98, i32* %99, i32 %100, i32 1)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %4, align 4
  br label %111

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %46

110:                                              ; preds = %46
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %104
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fbtft_write_buf_dc(%struct.fbtft_par*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
