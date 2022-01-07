; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gxt4500.c_gxt4500_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gxt4500.c_gxt4500_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.gxt4500_par* }
%struct.gxt4500_par = type { i32 }

@CMAP = common dso_local global i64 0, align 8
@DFA_PIX_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @gxt4500_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxt4500_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.gxt4500_par*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = load %struct.gxt4500_par*, %struct.gxt4500_par** %19, align 8
  store %struct.gxt4500_par* %20, %struct.gxt4500_par** %15, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ugt i32 %21, 1023
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %98

24:                                               ; preds = %6
  %25 = load i32, i32* %12, align 4
  %26 = and i32 %25, 65280
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 65280
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 65280
  %34 = or i32 %31, %33
  %35 = load i32, i32* %11, align 4
  %36 = lshr i32 %35, 8
  %37 = or i32 %34, %36
  store i32 %37, i32* %14, align 4
  %38 = load %struct.gxt4500_par*, %struct.gxt4500_par** %15, align 8
  %39 = load i64, i64* @CMAP, align 8
  %40 = load i32, i32* %8, align 4
  %41 = mul i32 %40, 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @writereg(%struct.gxt4500_par* %38, i64 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %46, 16
  br i1 %47, label %48, label %97

48:                                               ; preds = %24
  %49 = load %struct.gxt4500_par*, %struct.gxt4500_par** %15, align 8
  %50 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DFA_PIX_8BIT, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %48
  %55 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %16, align 8
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %17, align 4
  %59 = load %struct.gxt4500_par*, %struct.gxt4500_par** %15, align 8
  %60 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %91 [
    i32 130, label %62
    i32 131, label %70
    i32 128, label %78
    i32 129, label %83
  ]

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %63, 11
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 5
  %67 = or i32 %64, %66
  %68 = load i32, i32* %17, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %17, align 4
  br label %91

70:                                               ; preds = %54
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 10
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %73, 5
  %75 = or i32 %72, %74
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %91

78:                                               ; preds = %54
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 %79, 24
  %81 = load i32, i32* %17, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %54, %78
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %8, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %85, %87
  %89 = load i32, i32* %17, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %54, %83, %70, %62
  %92 = load i32, i32* %17, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %48, %24
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %23
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @writereg(%struct.gxt4500_par*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
