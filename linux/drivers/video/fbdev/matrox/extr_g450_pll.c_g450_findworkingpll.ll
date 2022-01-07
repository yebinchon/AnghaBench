; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c_g450_findworkingpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c_g450_findworkingpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, i32, i32*, i32)* @g450_findworkingpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_findworkingpll(%struct.matrox_fb_info* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.matrox_fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %123, %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %126

24:                                               ; preds = %20
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = and i32 %31, 56
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* %15, align 4
  %36 = sub i32 %35, 8
  %37 = load i32*, i32** %14, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  br label %39

39:                                               ; preds = %34, %24
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, 56
  %42 = icmp ne i32 %41, 56
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  %45 = add i32 %44, 8
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %14, align 8
  store i32 %45, i32* %46, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %15, align 4
  %50 = load i32*, i32** %14, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %121, %48
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %54 = icmp uge i32* %52, %53
  br i1 %54, label %55, label %122

55:                                               ; preds = %51
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 -1
  store i32* %57, i32** %14, align 8
  %58 = load i32, i32* %56, align 4
  store i32 %58, i32* %16, align 4
  %59 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sub i32 %60, 768
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @g450_testpll(%struct.matrox_fb_info* %59, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %109

65:                                               ; preds = %55
  %66 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %67 = load i32, i32* %16, align 4
  %68 = add i32 %67, 768
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @g450_testpll(%struct.matrox_fb_info* %66, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %65
  %73 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sub i32 %74, 512
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @g450_testpll(%struct.matrox_fb_info* %73, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %72
  %80 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %81 = load i32, i32* %16, align 4
  %82 = add i32 %81, 512
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @g450_testpll(%struct.matrox_fb_info* %80, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %79
  %87 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sub i32 %88, 256
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @g450_testpll(%struct.matrox_fb_info* %87, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %95 = load i32, i32* %16, align 4
  %96 = add i32 %95, 256
  %97 = load i32, i32* %7, align 4
  %98 = call i64 @g450_testpll(%struct.matrox_fb_info* %94, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @g450_testpll(%struct.matrox_fb_info* %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %5, align 4
  br label %132

108:                                              ; preds = %100
  br label %121

109:                                              ; preds = %93, %86, %79, %72, %65, %55
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @g450_testpll(%struct.matrox_fb_info* %113, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %118, %112, %109
  br label %121

121:                                              ; preds = %120, %108
  br label %51

122:                                              ; preds = %51
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %11, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %20

126:                                              ; preds = %20
  %127 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @g450_setpll(%struct.matrox_fb_info* %127, i32 %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %126, %106
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i64 @g450_testpll(%struct.matrox_fb_info*, i32, i32) #1

declare dso_local i32 @g450_setpll(%struct.matrox_fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
