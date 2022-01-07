; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3_identification.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3_identification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHIP_XXX_TRIO = common dso_local global i32 0, align 4
@CHIP_732_TRIO32 = common dso_local global i32 0, align 4
@CHIP_764_TRIO64 = common dso_local global i32 0, align 4
@CHIP_765_TRIO64VP = common dso_local global i32 0, align 4
@CHIP_XXX_TRIO64V2_DXGX = common dso_local global i32 0, align 4
@CHIP_775_TRIO64V2_DX = common dso_local global i32 0, align 4
@CHIP_785_TRIO64V2_GX = common dso_local global i32 0, align 4
@CHIP_XXX_VIRGE_DXGX = common dso_local global i32 0, align 4
@CHIP_375_VIRGE_DX = common dso_local global i32 0, align 4
@CHIP_385_VIRGE_GX = common dso_local global i32 0, align 4
@CHIP_36X_TRIO3D_1X_2X = common dso_local global i32 0, align 4
@CHIP_360_TRIO3D_1X = common dso_local global i32 0, align 4
@CHIP_362_TRIO3D_2X = common dso_local global i32 0, align 4
@CHIP_368_TRIO3D_2X = common dso_local global i32 0, align 4
@CHIP_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3fb_info*)* @s3_identification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3_identification(%struct.s3fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s3fb_info* %0, %struct.s3fb_info** %3, align 8
  %10 = load %struct.s3fb_info*, %struct.s3fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CHIP_XXX_TRIO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %1
  %17 = load %struct.s3fb_info*, %struct.s3fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vga_rcrt(i32 %20, i32 48)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.s3fb_info*, %struct.s3fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vga_rcrt(i32 %25, i32 46)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.s3fb_info*, %struct.s3fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vga_rcrt(i32 %30, i32 47)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 224
  br i1 %33, label %37, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 225
  br i1 %36, label %37, label %54

37:                                               ; preds = %34, %16
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @CHIP_732_TRIO32, align 4
  store i32 %41, i32* %2, align 4
  br label %108

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 17
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 64
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @CHIP_764_TRIO64, align 4
  store i32 %50, i32* %2, align 4
  br label %108

51:                                               ; preds = %45
  %52 = load i32, i32* @CHIP_765_TRIO64VP, align 4
  store i32 %52, i32* %2, align 4
  br label %108

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @CHIP_XXX_TRIO64V2_DXGX, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.s3fb_info*, %struct.s3fb_info** %3, align 8
  %61 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @vga_rcrt(i32 %63, i32 111)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @CHIP_775_TRIO64V2_DX, align 4
  store i32 %69, i32* %2, align 4
  br label %108

70:                                               ; preds = %59
  %71 = load i32, i32* @CHIP_785_TRIO64V2_GX, align 4
  store i32 %71, i32* %2, align 4
  br label %108

72:                                               ; preds = %55
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @CHIP_XXX_VIRGE_DXGX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.s3fb_info*, %struct.s3fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @vga_rcrt(i32 %80, i32 111)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @CHIP_375_VIRGE_DX, align 4
  store i32 %86, i32* %2, align 4
  br label %108

87:                                               ; preds = %76
  %88 = load i32, i32* @CHIP_385_VIRGE_GX, align 4
  store i32 %88, i32* %2, align 4
  br label %108

89:                                               ; preds = %72
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @CHIP_36X_TRIO3D_1X_2X, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.s3fb_info*, %struct.s3fb_info** %3, align 8
  %95 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @vga_rcrt(i32 %97, i32 47)
  switch i32 %98, label %105 [
    i32 0, label %99
    i32 1, label %101
    i32 2, label %103
  ]

99:                                               ; preds = %93
  %100 = load i32, i32* @CHIP_360_TRIO3D_1X, align 4
  store i32 %100, i32* %2, align 4
  br label %108

101:                                              ; preds = %93
  %102 = load i32, i32* @CHIP_362_TRIO3D_2X, align 4
  store i32 %102, i32* %2, align 4
  br label %108

103:                                              ; preds = %93
  %104 = load i32, i32* @CHIP_368_TRIO3D_2X, align 4
  store i32 %104, i32* %2, align 4
  br label %108

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %89
  %107 = load i32, i32* @CHIP_UNKNOWN, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %103, %101, %99, %87, %85, %70, %68, %51, %49, %40
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @vga_rcrt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
