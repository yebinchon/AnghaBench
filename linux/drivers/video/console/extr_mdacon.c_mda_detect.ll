; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_mdacon.c_mda_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_mdacon.c_mda_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mda_vram_base = common dso_local global i32* null, align 8
@mda_vram_len = common dso_local global i32 0, align 4
@mda_status_port = common dso_local global i32 0, align 4
@MDA_STATUS_VSYNC = common dso_local global i32 0, align 4
@TYPE_HERCPLUS = common dso_local global i32 0, align 4
@mda_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"HerculesPlus\00", align 1
@mda_type_name = common dso_local global i8* null, align 8
@TYPE_HERCCOLOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"HerculesColor\00", align 1
@TYPE_HERC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Hercules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mda_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mda_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %7 = load i32*, i32** @mda_vram_base, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** @mda_vram_base, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2048
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @scr_readw(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @scr_readw(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @scr_writew(i32 43605, i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @scr_readw(i32* %16)
  %18 = icmp eq i32 %17, 43605
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %0
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @scr_writew(i32 21930, i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @scr_readw(i32* %25)
  %27 = icmp eq i32 %26, 21930
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @scr_writew(i32 %32, i32* %33)
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %109

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @scr_writew(i32 42330, i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @scr_writew(i32 0, i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @scr_readw(i32* %43)
  %45 = icmp eq i32 %44, 42330
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @scr_writew(i32 23205, i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @scr_writew(i32 0, i32* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @scr_readw(i32* %54)
  %56 = icmp eq i32 %55, 23205
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, i32* %4, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @scr_writew(i32 %61, i32* %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @scr_writew(i32 %64, i32* %65)
  %67 = load i32, i32* %2, align 4
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 8192, i32* @mda_vram_len, align 4
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* @mda_status_port, align 4
  %72 = call i32 @inb_p(i32 %71)
  %73 = load i32, i32* @MDA_STATUS_VSYNC, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %6, align 4
  store i32 %74, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %90, %70
  %76 = load i32, i32* %2, align 4
  %77 = icmp slt i32 %76, 50000
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %79, %80
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i1 [ false, %75 ], [ %81, %78 ]
  br i1 %83, label %84, label %93

84:                                               ; preds = %82
  %85 = load i32, i32* @mda_status_port, align 4
  %86 = call i32 @inb(i32 %85)
  %87 = load i32, i32* @MDA_STATUS_VSYNC, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %6, align 4
  %89 = call i32 @udelay(i32 2)
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %75

93:                                               ; preds = %82
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32, i32* @mda_status_port, align 4
  %99 = call i32 @inb_p(i32 %98)
  %100 = and i32 %99, 112
  switch i32 %100, label %105 [
    i32 16, label %101
    i32 80, label %103
  ]

101:                                              ; preds = %97
  %102 = load i32, i32* @TYPE_HERCPLUS, align 4
  store i32 %102, i32* @mda_type, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** @mda_type_name, align 8
  br label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @TYPE_HERCCOLOR, align 4
  store i32 %104, i32* @mda_type, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** @mda_type_name, align 8
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @TYPE_HERC, align 4
  store i32 %106, i32* @mda_type, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** @mda_type_name, align 8
  br label %107

107:                                              ; preds = %105, %103, %101
  br label %108

108:                                              ; preds = %107, %93
  store i32 1, i32* %1, align 4
  br label %109

109:                                              ; preds = %108, %37
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @scr_writew(i32, i32*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
