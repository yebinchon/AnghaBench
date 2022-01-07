; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_get_memsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_get_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32, i32 }

@memsize = common dso_local global i32 0, align 4
@Kb = common dso_local global i32 0, align 4
@SPR = common dso_local global i32 0, align 4
@Mb = common dso_local global i32 0, align 4
@memdiff = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"framebuffer size = %d Kb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tridentfb_par*)* @get_memsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_memsize(%struct.tridentfb_par* %0) #0 {
  %2 = alloca %struct.tridentfb_par*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %2, align 8
  %6 = load i32, i32* @memsize, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @memsize, align 4
  %10 = load i32, i32* @Kb, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  br label %85

12:                                               ; preds = %1
  %13 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %14 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %19 [
    i32 128, label %16
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @Kb, align 4
  %18 = mul nsw i32 2560, %17
  store i32 %18, i32* %5, align 4
  br label %84

19:                                               ; preds = %12
  %20 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %21 = load i32, i32* @SPR, align 4
  %22 = call i32 @read3X4(%struct.tridentfb_par* %20, i32 %21)
  %23 = and i32 %22, 15
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  switch i32 %26, label %80 [
    i32 1, label %27
    i32 2, label %30
    i32 3, label %33
    i32 4, label %36
    i32 6, label %39
    i32 7, label %42
    i32 8, label %45
    i32 10, label %48
    i32 12, label %51
    i32 14, label %54
    i32 15, label %77
  ]

27:                                               ; preds = %19
  %28 = load i32, i32* @Kb, align 4
  %29 = mul nsw i32 512, %28
  store i32 %29, i32* %5, align 4
  br label %83

30:                                               ; preds = %19
  %31 = load i32, i32* @Mb, align 4
  %32 = mul nsw i32 6, %31
  store i32 %32, i32* %5, align 4
  br label %83

33:                                               ; preds = %19
  %34 = load i32, i32* @Mb, align 4
  %35 = mul nsw i32 1, %34
  store i32 %35, i32* %5, align 4
  br label %83

36:                                               ; preds = %19
  %37 = load i32, i32* @Mb, align 4
  %38 = mul nsw i32 8, %37
  store i32 %38, i32* %5, align 4
  br label %83

39:                                               ; preds = %19
  %40 = load i32, i32* @Mb, align 4
  %41 = mul nsw i32 10, %40
  store i32 %41, i32* %5, align 4
  br label %83

42:                                               ; preds = %19
  %43 = load i32, i32* @Mb, align 4
  %44 = mul nsw i32 2, %43
  store i32 %44, i32* %5, align 4
  br label %83

45:                                               ; preds = %19
  %46 = load i32, i32* @Mb, align 4
  %47 = mul nsw i32 12, %46
  store i32 %47, i32* %5, align 4
  br label %83

48:                                               ; preds = %19
  %49 = load i32, i32* @Mb, align 4
  %50 = mul nsw i32 14, %49
  store i32 %50, i32* %5, align 4
  br label %83

51:                                               ; preds = %19
  %52 = load i32, i32* @Mb, align 4
  %53 = mul nsw i32 16, %52
  store i32 %53, i32* %5, align 4
  br label %83

54:                                               ; preds = %19
  %55 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %56 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call zeroext i8 @vga_mm_rseq(i32 %57, i32 193)
  store i8 %58, i8* %4, align 1
  %59 = load i8, i8* %4, align 1
  %60 = zext i8 %59 to i32
  switch i32 %60, label %73 [
    i32 0, label %61
    i32 1, label %64
    i32 16, label %67
    i32 17, label %70
  ]

61:                                               ; preds = %54
  %62 = load i32, i32* @Mb, align 4
  %63 = mul nsw i32 20, %62
  store i32 %63, i32* %5, align 4
  br label %76

64:                                               ; preds = %54
  %65 = load i32, i32* @Mb, align 4
  %66 = mul nsw i32 24, %65
  store i32 %66, i32* %5, align 4
  br label %76

67:                                               ; preds = %54
  %68 = load i32, i32* @Mb, align 4
  %69 = mul nsw i32 28, %68
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %54
  %71 = load i32, i32* @Mb, align 4
  %72 = mul nsw i32 32, %71
  store i32 %72, i32* %5, align 4
  br label %76

73:                                               ; preds = %54
  %74 = load i32, i32* @Mb, align 4
  %75 = mul nsw i32 1, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %70, %67, %64, %61
  br label %83

77:                                               ; preds = %19
  %78 = load i32, i32* @Mb, align 4
  %79 = mul nsw i32 4, %78
  store i32 %79, i32* %5, align 4
  br label %83

80:                                               ; preds = %19
  %81 = load i32, i32* @Mb, align 4
  %82 = mul nsw i32 1, %81
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %77, %76, %51, %48, %45, %42, %39, %36, %33, %30, %27
  br label %84

84:                                               ; preds = %83, %16
  br label %85

85:                                               ; preds = %84, %8
  %86 = load i32, i32* @memdiff, align 4
  %87 = load i32, i32* @Kb, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = sub i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @Kb, align 4
  %93 = udiv i32 %91, %92
  %94 = call i32 @output(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @read3X4(%struct.tridentfb_par*, i32) #1

declare dso_local zeroext i8 @vga_mm_rseq(i32, i32) #1

declare dso_local i32 @output(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
