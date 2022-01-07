; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb_iplan2p8.c_atafb_iplan2p8_linefill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb_iplan2p8.c_atafb_iplan2p8_linefill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }

@BPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atafb_iplan2p8_linefill(%struct.fb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %26, %30
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, -16
  %34 = load i32, i32* @BPL, align 4
  %35 = sdiv i32 8, %34
  %36 = sdiv i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %31, %37
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %17, align 8
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, 15
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %8
  %44 = load i32*, i32** %17, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %14, align 8
  %50 = load i32, i32* %48, align 4
  %51 = call i32 @fill8_2col(i32* %45, i32 %46, i32 %47, i32 %50)
  %52 = load i32, i32* @BPL, align 4
  %53 = sdiv i32 %52, 2
  %54 = load i32*, i32** %17, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %17, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %57, 8
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %43, %8
  %60 = load i32, i32* %13, align 4
  %61 = icmp sge i32 %60, 16
  br i1 %61, label %62, label %125

62:                                               ; preds = %59
  %63 = load i32*, i32** %14, align 8
  store i32* %63, i32** %18, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %68 = call i32 @expand16_2col2mask(i32 %64, i32 %65, i32* %66, i32* %67)
  %69 = load i32, i32* %13, align 4
  %70 = sdiv i32 %69, 16
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %118, %62
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %121

74:                                               ; preds = %71
  %75 = load i32*, i32** %18, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %18, align 8
  %77 = load i32, i32* %75, align 4
  store i32 %77, i32* %23, align 4
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* %23, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %78, %80
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %22, align 4
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = and i32 %82, %84
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = xor i32 %85, %87
  %89 = load i32*, i32** %17, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %17, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* %22, align 4
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %91, %93
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %94, %96
  %98 = load i32*, i32** %17, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %17, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i32, i32* %22, align 4
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %100, %102
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %105 = load i32, i32* %104, align 8
  %106 = xor i32 %103, %105
  %107 = load i32*, i32** %17, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %17, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i32, i32* %22, align 4
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %109, %111
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %112, %114
  %116 = load i32*, i32** %17, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %17, align 8
  store i32 %115, i32* %116, align 4
  br label %118

118:                                              ; preds = %74
  %119 = load i32, i32* %19, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %19, align 4
  br label %71

121:                                              ; preds = %71
  %122 = load i32*, i32** %18, align 8
  store i32* %122, i32** %14, align 8
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, 15
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %59
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32*, i32** %17, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @fill8_2col(i32* %129, i32 %130, i32 %131, i32 %133)
  br label %135

135:                                              ; preds = %128, %125
  ret void
}

declare dso_local i32 @fill8_2col(i32*, i32, i32, i32) #1

declare dso_local i32 @expand16_2col2mask(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
