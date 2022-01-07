; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_CalcVClock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_CalcVClock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@NV_ARCH_03 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, i32*, %struct.TYPE_3__*)* @CalcVClock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalcVClock(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  store i32 -1, i32* %17, align 4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %18, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 13500
  br i1 %27, label %28, label %36

28:                                               ; preds = %6
  store i32 7, i32* %13, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NV_ARCH_03, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = sub nsw i32 13, %34
  store i32 %35, i32* %14, align 4
  br label %44

36:                                               ; preds = %6
  store i32 8, i32* %13, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NV_ARCH_03, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = sub nsw i32 14, %42
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NV_ARCH_03, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = sub nsw i32 4, %50
  store i32 %51, i32* %15, align 4
  store i32 0, i32* %22, align 4
  br label %52

52:                                               ; preds = %128, %44
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ule i32 %53, %54
  br i1 %55, label %56, label %131

56:                                               ; preds = %52
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %22, align 4
  %59 = shl i32 %57, %58
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp uge i32 %60, 128000
  br i1 %61, label %62, label %127

62:                                               ; preds = %56
  %63 = load i32, i32* %19, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ule i32 %63, %66
  br i1 %67, label %68, label %127

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %20, align 4
  br label %70

70:                                               ; preds = %123, %68
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ule i32 %71, %72
  br i1 %73, label %74, label %126

74:                                               ; preds = %70
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %22, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %20, align 4
  %79 = mul i32 %77, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = udiv i32 %79, %82
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %21, align 4
  %85 = icmp ule i32 %84, 255
  br i1 %85, label %86, label %122

86:                                               ; preds = %74
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %21, align 4
  %91 = mul i32 %89, %90
  %92 = load i32, i32* %20, align 4
  %93 = udiv i32 %91, %92
  %94 = load i32, i32* %22, align 4
  %95 = lshr i32 %93, %94
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %18, align 4
  %102 = sub i32 %100, %101
  store i32 %102, i32* %16, align 4
  br label %107

103:                                              ; preds = %86
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %19, align 4
  %106 = sub i32 %104, %105
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i32, i32* %20, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32*, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %22, align 4
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %19, align 4
  %119 = load i32*, i32** %8, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %111, %107
  br label %122

122:                                              ; preds = %121, %74
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %20, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %20, align 4
  br label %70

126:                                              ; preds = %70
  br label %127

127:                                              ; preds = %126, %62, %56
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %22, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %22, align 4
  br label %52

131:                                              ; preds = %52
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, -1
  %134 = zext i1 %133 to i32
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
