; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_setup_graphics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_setup_graphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GSCTRL_GAMMA_EN = common dso_local global i64 0, align 8
@GSCTRL_GPIXFMT_ARGB1555 = common dso_local global i64 0, align 8
@GSCTRL_GPIXFMT_RGB565 = common dso_local global i64 0, align 8
@GSCTRL_GPIXFMT_RGB888 = common dso_local global i64 0, align 8
@GSCTRL_GPIXFMT_ARGB8888 = common dso_local global i64 0, align 8
@GSCTRL = common dso_local global i32 0, align 4
@GBBASE = common dso_local global i32 0, align 4
@GDRCTRL = common dso_local global i32 0, align 4
@GSCADR_STR_EN = common dso_local global i64 0, align 8
@GSCADR = common dso_local global i32 0, align 4
@GPLUT = common dso_local global i32 0, align 4
@VSCADR = common dso_local global i32 0, align 4
@VSCADR_BLEND_POS = common dso_local global i32 0, align 4
@VSCADR_BLEND_M = common dso_local global i32 0, align 4
@VSCADR_BLEND_VID = common dso_local global i64 0, align 8
@VSCADR_BLEND_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @setup_graphics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_graphics(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load i64, i64* @GSCTRL_GAMMA_EN, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @Gsctrl_Width(i32 %9)
  %11 = or i64 %5, %10
  %12 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @Gsctrl_Height(i32 %15)
  %17 = or i64 %11, %16
  store i64 %17, i64* %3, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %46 [
    i32 16, label %22
    i32 24, label %38
    i32 32, label %42
  ]

22:                                               ; preds = %1
  %23 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* @GSCTRL_GPIXFMT_ARGB1555, align 8
  %31 = load i64, i64* %3, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %3, align 8
  br label %37

33:                                               ; preds = %22
  %34 = load i64, i64* @GSCTRL_GPIXFMT_RGB565, align 8
  %35 = load i64, i64* %3, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %46

38:                                               ; preds = %1
  %39 = load i64, i64* @GSCTRL_GPIXFMT_RGB888, align 8
  %40 = load i64, i64* %3, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %3, align 8
  br label %46

42:                                               ; preds = %1
  %43 = load i64, i64* @GSCTRL_GPIXFMT_ARGB8888, align 8
  %44 = load i64, i64* %3, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %1, %42, %38, %37
  %47 = load i64, i64* %3, align 8
  %48 = load i32, i32* @GSCTRL, align 4
  %49 = call i32 @write_reg_dly(i64 %47, i32 %48)
  %50 = load i32, i32* @GBBASE, align 4
  %51 = call i32 @write_reg_dly(i64 0, i32 %50)
  %52 = load i32, i32* @GDRCTRL, align 4
  %53 = call i32 @write_reg_dly(i64 16777215, i32 %52)
  %54 = load i64, i64* @GSCADR_STR_EN, align 8
  %55 = call i64 @Gscadr_Gbase_Adr(i32 24576)
  %56 = or i64 %54, %55
  %57 = load i32, i32* @GSCADR, align 4
  %58 = call i32 @write_reg_dly(i64 %56, i32 %57)
  %59 = load i32, i32* @GPLUT, align 4
  %60 = call i32 @write_reg_dly(i64 0, i32 %59)
  %61 = load i32, i32* @VSCADR, align 4
  %62 = call i64 @readl(i32 %61)
  store i64 %62, i64* %4, align 8
  %63 = load i32, i32* @VSCADR_BLEND_POS, align 4
  %64 = call i64 @FMsk(i32 %63)
  %65 = load i32, i32* @VSCADR_BLEND_M, align 4
  %66 = call i64 @FMsk(i32 %65)
  %67 = or i64 %64, %66
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %4, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* @VSCADR_BLEND_VID, align 8
  %72 = load i64, i64* @VSCADR_BLEND_NONE, align 8
  %73 = or i64 %71, %72
  %74 = load i64, i64* %4, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* @VSCADR, align 4
  %78 = call i32 @write_reg_dly(i64 %76, i32 %77)
  ret void
}

declare dso_local i64 @Gsctrl_Width(i32) #1

declare dso_local i64 @Gsctrl_Height(i32) #1

declare dso_local i32 @write_reg_dly(i64, i32) #1

declare dso_local i64 @Gscadr_Gbase_Adr(i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i64 @FMsk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
