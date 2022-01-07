; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3_set_pixclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3_set_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.s3fb_info* }
%struct.s3fb_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHIP_365_TRIO3D = common dso_local global i64 0, align 8
@s3_trio3d_pll = common dso_local global i32 0, align 4
@s3_pll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot set requested pixclock, keeping old value\0A\00", align 1
@VGA_MIS_R = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@VGA_MIS_ENB_PLL_LOAD = common dso_local global i32 0, align 4
@CHIP_357_VIRGE_GX2 = common dso_local global i64 0, align 8
@CHIP_359_VIRGE_GX2P = common dso_local global i64 0, align 8
@CHIP_360_TRIO3D_1X = common dso_local global i64 0, align 8
@CHIP_362_TRIO3D_2X = common dso_local global i64 0, align 8
@CHIP_368_TRIO3D_2X = common dso_local global i64 0, align 8
@CHIP_260_VIRGE_MX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @s3_set_pixclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3_set_pixclock(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load %struct.s3fb_info*, %struct.s3fb_info** %12, align 8
  store %struct.s3fb_info* %13, %struct.s3fb_info** %5, align 8
  %14 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHIP_365_TRIO3D, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32* @s3_trio3d_pll, i32* @s3_pll
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 1000000000, %21
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @svga_compute_pll(i32* %20, i32 %22, i32* %6, i32* %7, i32* %8, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = call i32 @fb_err(%struct.fb_info* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %148

32:                                               ; preds = %2
  %33 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %34 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VGA_MIS_R, align 4
  %38 = call i32 @vga_r(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %40 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @VGA_MIS_W, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @VGA_MIS_ENB_PLL_LOAD, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @vga_w(i32 %42, i32 %43, i32 %46)
  %48 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %49 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CHIP_357_VIRGE_GX2, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %83, label %53

53:                                               ; preds = %32
  %54 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %55 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CHIP_359_VIRGE_GX2P, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %83, label %59

59:                                               ; preds = %53
  %60 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %61 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CHIP_360_TRIO3D_1X, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %67 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHIP_362_TRIO3D_2X, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %73 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHIP_368_TRIO3D_2X, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %79 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CHIP_260_VIRGE_MX, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77, %71, %65, %59, %53, %32
  %84 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %85 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 2
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 3
  %92 = shl i32 %91, 6
  %93 = or i32 %89, %92
  %94 = call i32 @vga_wseq(i32 %87, i32 18, i32 %93)
  %95 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %96 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = ashr i32 %99, 2
  %101 = call i32 @vga_wseq(i32 %98, i32 41, i32 %100)
  br label %113

102:                                              ; preds = %77
  %103 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %104 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, 2
  %109 = load i32, i32* %8, align 4
  %110 = shl i32 %109, 5
  %111 = or i32 %108, %110
  %112 = call i32 @vga_wseq(i32 %106, i32 18, i32 %111)
  br label %113

113:                                              ; preds = %102, %83
  %114 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %115 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, 2
  %120 = call i32 @vga_wseq(i32 %117, i32 19, i32 %119)
  %121 = call i32 @udelay(i32 1000)
  %122 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %123 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @vga_rseq(i32 %125, i32 21)
  store i32 %126, i32* %9, align 4
  %127 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %128 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, -33
  %133 = call i32 @vga_wseq(i32 %130, i32 21, i32 %132)
  %134 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %135 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = or i32 %138, 32
  %140 = call i32 @vga_wseq(i32 %137, i32 21, i32 %139)
  %141 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %142 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %145, -33
  %147 = call i32 @vga_wseq(i32 %144, i32 21, i32 %146)
  br label %148

148:                                              ; preds = %113, %29
  ret void
}

declare dso_local i32 @svga_compute_pll(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @fb_err(%struct.fb_info*, i8*) #1

declare dso_local i32 @vga_r(i32, i32) #1

declare dso_local i32 @vga_w(i32, i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @vga_rseq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
