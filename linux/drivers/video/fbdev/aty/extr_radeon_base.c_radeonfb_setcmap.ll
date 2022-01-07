; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeonfb_setcmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeonfb_setcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.fb_info = type { %struct.radeonfb_info* }
%struct.radeonfb_info = type { i64, i32, i64 }

@VCLK_ECP_CNTL = common dso_local global i32 0, align 4
@PIXCLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@DAC_CNTL2 = common dso_local global i32 0, align 4
@DAC2_PALETTE_ACCESS_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cmap*, %struct.fb_info*)* @radeonfb_setcmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeonfb_setcmap(%struct.fb_cmap* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_cmap*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.radeonfb_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = load %struct.radeonfb_info*, %struct.radeonfb_info** %20, align 8
  store %struct.radeonfb_info* %21, %struct.radeonfb_info** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %23 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %2
  %27 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %28 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %33 = call i32 @INPLL(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @PIXCLK_DAC_ALWAYS_ONb, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @OUTPLL(i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %42 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32, i32* @DAC_CNTL2, align 4
  %47 = call i32 @INREG(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @DAC2_PALETTE_ACCESS_CNTL, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @DAC_CNTL2, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @OUTREG(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %45, %40
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.fb_cmap*, %struct.fb_cmap** %3, align 8
  %58 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %6, align 8
  %60 = load %struct.fb_cmap*, %struct.fb_cmap** %3, align 8
  %61 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %7, align 8
  %63 = load %struct.fb_cmap*, %struct.fb_cmap** %3, align 8
  %64 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %8, align 8
  %66 = load %struct.fb_cmap*, %struct.fb_cmap** %3, align 8
  %67 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %9, align 8
  %69 = load %struct.fb_cmap*, %struct.fb_cmap** %3, align 8
  %70 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %107, %56
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.fb_cmap*, %struct.fb_cmap** %3, align 8
  %75 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %72
  store i32 65535, i32* %18, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* %15, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %7, align 8
  %84 = load i32, i32* %82, align 4
  store i32 %84, i32* %16, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %8, align 8
  %87 = load i32, i32* %85, align 4
  store i32 %87, i32* %17, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %9, align 8
  %93 = load i32, i32* %91, align 4
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %90, %78
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %102 = call i32 @radeon_setcolreg(i32 %95, i32 %97, i32 %98, i32 %99, i32 %100, %struct.radeonfb_info* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %110

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %72

110:                                              ; preds = %105, %72
  %111 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %112 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %110
  %116 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %117 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @OUTPLL(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %115, %110
  %125 = load i32, i32* %14, align 4
  ret i32 %125
}

declare dso_local i32 @INPLL(i32) #1

declare dso_local i32 @OUTPLL(i32, i32) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @radeon_setcolreg(i32, i32, i32, i32, i32, %struct.radeonfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
