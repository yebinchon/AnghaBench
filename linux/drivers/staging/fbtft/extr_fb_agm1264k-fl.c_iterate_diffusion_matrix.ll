; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_iterate_diffusion_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_iterate_diffusion_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIFFUSING_MATRIX_WIDTH = common dso_local global i32 0, align 4
@DIFFUSING_MATRIX_HEIGHT = common dso_local global i32 0, align 4
@diffusing_matrix = common dso_local global i8** null, align 8
@WHITE = common dso_local global i16 0, align 2
@BLACK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i16*, i16, i16)* @iterate_diffusion_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iterate_diffusion_matrix(i32 %0, i32 %1, i32 %2, i32 %3, i16* %4, i16 signext %5, i16 signext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i16, align 2
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i16* %4, i16** %12, align 8
  store i16 %5, i16* %13, align 2
  store i16 %6, i16* %14, align 2
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %109, %7
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @DIFFUSING_MATRIX_WIDTH, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %112

24:                                               ; preds = %20
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %105, %24
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* @DIFFUSING_MATRIX_HEIGHT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %108

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34, %29
  br label %105

47:                                               ; preds = %40
  %48 = load i16*, i16** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %48, i64 %58
  store i16* %59, i16** %17, align 8
  %60 = load i8**, i8*** @diffusing_matrix, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %18, align 1
  %69 = load i8, i8* %18, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 -1, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %47
  %73 = load i16, i16* %13, align 2
  %74 = load i16*, i16** %17, align 8
  store i16 %73, i16* %74, align 2
  br label %104

75:                                               ; preds = %47
  %76 = load i16*, i16** %17, align 8
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = load i16, i16* %14, align 2
  %80 = sext i16 %79 to i32
  %81 = load i8, i8* %18, align 1
  %82 = sext i8 %81 to i32
  %83 = mul nsw i32 %80, %82
  %84 = add nsw i32 %78, %83
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %19, align 2
  %86 = load i16, i16* %19, align 2
  %87 = sext i16 %86 to i32
  %88 = load i16, i16* @WHITE, align 2
  %89 = sext i16 %88 to i32
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %75
  %92 = load i16, i16* @WHITE, align 2
  store i16 %92, i16* %19, align 2
  br label %93

93:                                               ; preds = %91, %75
  %94 = load i16, i16* %19, align 2
  %95 = sext i16 %94 to i32
  %96 = load i16, i16* @BLACK, align 2
  %97 = sext i16 %96 to i32
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i16, i16* @BLACK, align 2
  store i16 %100, i16* %19, align 2
  br label %101

101:                                              ; preds = %99, %93
  %102 = load i16, i16* %19, align 2
  %103 = load i16*, i16** %17, align 8
  store i16 %102, i16* %103, align 2
  br label %104

104:                                              ; preds = %101, %72
  br label %105

105:                                              ; preds = %104, %46
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %25

108:                                              ; preds = %25
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %20

112:                                              ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
