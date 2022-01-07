; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_calc_vrfb_rotation_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_calc_vrfb_rotation_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"calc_rot(%d): scrw %d, %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32)* @calc_vrfb_rotation_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_vrfb_rotation_offset(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %30 = load i32, i32* %20, align 4
  switch i32 %30, label %34 [
    i32 137, label %31
    i32 136, label %31
    i32 135, label %31
    i32 134, label %31
    i32 132, label %33
    i32 133, label %33
  ]

31:                                               ; preds = %14, %14, %14, %14
  %32 = call i32 (...) @BUG()
  br label %144

33:                                               ; preds = %14, %14
  store i32 4, i32* %29, align 4
  br label %38

34:                                               ; preds = %14
  %35 = load i32, i32* %20, align 4
  %36 = call i32 @color_mode_to_bpp(i32 %35)
  %37 = sdiv i32 %36, 8
  store i32 %37, i32* %29, align 4
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %19, align 4
  %43 = call i32 @DSSDBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %44, %46
  switch i32 %47, label %142 [
    i32 131, label %48
    i32 130, label %48
    i32 128, label %58
    i32 129, label %58
    i32 135, label %95
    i32 134, label %95
    i32 132, label %105
    i32 133, label %105
  ]

48:                                               ; preds = %38, %38
  %49 = load i32, i32* %20, align 4
  %50 = icmp eq i32 %49, 132
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %20, align 4
  %53 = icmp eq i32 %52, 133
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %18, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %18, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %38, %38, %57
  %59 = load i32*, i32** %24, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* %17, align 4
  %65 = mul i32 %63, %64
  %66 = load i32, i32* %29, align 4
  %67 = mul i32 %65, %66
  %68 = load i32*, i32** %23, align 8
  store i32 %67, i32* %68, align 4
  br label %71

69:                                               ; preds = %58
  %70 = load i32*, i32** %23, align 8
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %62
  %72 = load i32, i32* %28, align 4
  %73 = load i32, i32* %17, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %27, align 4
  %76 = load i32, i32* %18, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sub nsw i32 %74, %77
  %79 = add nsw i32 1, %78
  %80 = load i32, i32* %21, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %17, align 4
  br label %85

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = add nsw i32 %79, %86
  %88 = load i32, i32* %29, align 4
  %89 = call i32 @pixinc(i32 %87, i32 %88)
  %90 = load i32*, i32** %25, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %27, align 4
  %92 = load i32, i32* %29, align 4
  %93 = call i32 @pixinc(i32 %91, i32 %92)
  %94 = load i32*, i32** %26, align 8
  store i32 %93, i32* %94, align 4
  br label %144

95:                                               ; preds = %38, %38
  %96 = load i32, i32* %20, align 4
  %97 = icmp eq i32 %96, 132
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %20, align 4
  %100 = icmp eq i32 %99, 133
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %18, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %38, %38, %104
  %106 = load i32*, i32** %24, align 8
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %17, align 4
  %112 = mul i32 %110, %111
  %113 = load i32, i32* %29, align 4
  %114 = mul i32 %112, %113
  %115 = load i32*, i32** %23, align 8
  store i32 %114, i32* %115, align 4
  br label %118

116:                                              ; preds = %105
  %117 = load i32*, i32** %23, align 8
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %116, %109
  %119 = load i32, i32* %28, align 4
  %120 = load i32, i32* %17, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* %18, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %121, %124
  %126 = sub nsw i32 1, %125
  %127 = load i32, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = load i32, i32* %17, align 4
  br label %132

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ]
  %134 = sub nsw i32 %126, %133
  %135 = load i32, i32* %29, align 4
  %136 = call i32 @pixinc(i32 %134, i32 %135)
  %137 = load i32*, i32** %25, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %29, align 4
  %140 = call i32 @pixinc(i32 %138, i32 %139)
  %141 = load i32*, i32** %26, align 8
  store i32 %140, i32* %141, align 4
  br label %144

142:                                              ; preds = %38
  %143 = call i32 (...) @BUG()
  br label %144

144:                                              ; preds = %31, %142, %132, %85
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @color_mode_to_bpp(i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pixinc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
