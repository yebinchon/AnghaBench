; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmagb-b-fb.c_pmagbbfb_screen_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmagb-b-fb.c_pmagbbfb_screen_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.pmagbbfb_par* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pmagbbfb_par = type { i32 }

@SFB_REG_VID_HOR = common dso_local global i32 0, align 4
@SFB_VID_HOR_PIX_SHIFT = common dso_local global i32 0, align 4
@SFB_VID_HOR_PIX_MASK = common dso_local global i32 0, align 4
@SFB_REG_VID_VER = common dso_local global i32 0, align 4
@SFB_VID_VER_SL_SHIFT = common dso_local global i32 0, align 4
@SFB_VID_VER_SL_MASK = common dso_local global i32 0, align 4
@SFB_VID_HOR_BP_SHIFT = common dso_local global i32 0, align 4
@SFB_VID_HOR_BP_MASK = common dso_local global i32 0, align 4
@SFB_VID_HOR_FP_SHIFT = common dso_local global i32 0, align 4
@SFB_VID_HOR_FP_MASK = common dso_local global i32 0, align 4
@SFB_VID_VER_BP_SHIFT = common dso_local global i32 0, align 4
@SFB_VID_VER_BP_MASK = common dso_local global i32 0, align 4
@SFB_VID_VER_FP_SHIFT = common dso_local global i32 0, align 4
@SFB_VID_VER_FP_MASK = common dso_local global i32 0, align 4
@SFB_VID_HOR_SYN_SHIFT = common dso_local global i32 0, align 4
@SFB_VID_HOR_SYN_MASK = common dso_local global i32 0, align 4
@SFB_VID_VER_SYN_SHIFT = common dso_local global i32 0, align 4
@SFB_VID_VER_SYN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @pmagbbfb_screen_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmagbbfb_screen_setup(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pmagbbfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 2
  %6 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %5, align 8
  store %struct.pmagbbfb_par* %6, %struct.pmagbbfb_par** %3, align 8
  %7 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %8 = load i32, i32* @SFB_REG_VID_HOR, align 4
  %9 = call i32 @sfb_read(%struct.pmagbbfb_par* %7, i32 %8)
  %10 = load i32, i32* @SFB_VID_HOR_PIX_SHIFT, align 4
  %11 = ashr i32 %9, %10
  %12 = load i32, i32* @SFB_VID_HOR_PIX_MASK, align 4
  %13 = and i32 %11, %12
  %14 = mul nsw i32 %13, 4
  %15 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %26 = load i32, i32* @SFB_REG_VID_VER, align 4
  %27 = call i32 @sfb_read(%struct.pmagbbfb_par* %25, i32 %26)
  %28 = load i32, i32* @SFB_VID_VER_SL_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* @SFB_VID_VER_SL_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %43 = load i32, i32* @SFB_REG_VID_HOR, align 4
  %44 = call i32 @sfb_read(%struct.pmagbbfb_par* %42, i32 %43)
  %45 = load i32, i32* @SFB_VID_HOR_BP_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* @SFB_VID_HOR_BP_MASK, align 4
  %48 = and i32 %46, %47
  %49 = mul nsw i32 %48, 4
  %50 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 8
  %53 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %54 = load i32, i32* @SFB_REG_VID_HOR, align 4
  %55 = call i32 @sfb_read(%struct.pmagbbfb_par* %53, i32 %54)
  %56 = load i32, i32* @SFB_VID_HOR_FP_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* @SFB_VID_HOR_FP_MASK, align 4
  %59 = and i32 %57, %58
  %60 = mul nsw i32 %59, 4
  %61 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %65 = load i32, i32* @SFB_REG_VID_VER, align 4
  %66 = call i32 @sfb_read(%struct.pmagbbfb_par* %64, i32 %65)
  %67 = load i32, i32* @SFB_VID_VER_BP_SHIFT, align 4
  %68 = ashr i32 %66, %67
  %69 = load i32, i32* @SFB_VID_VER_BP_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 8
  %74 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %75 = load i32, i32* @SFB_REG_VID_VER, align 4
  %76 = call i32 @sfb_read(%struct.pmagbbfb_par* %74, i32 %75)
  %77 = load i32, i32* @SFB_VID_VER_FP_SHIFT, align 4
  %78 = ashr i32 %76, %77
  %79 = load i32, i32* @SFB_VID_VER_FP_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 7
  store i32 %80, i32* %83, align 4
  %84 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %85 = load i32, i32* @SFB_REG_VID_HOR, align 4
  %86 = call i32 @sfb_read(%struct.pmagbbfb_par* %84, i32 %85)
  %87 = load i32, i32* @SFB_VID_HOR_SYN_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = load i32, i32* @SFB_VID_HOR_SYN_MASK, align 4
  %90 = and i32 %88, %89
  %91 = mul nsw i32 %90, 4
  %92 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 8
  store i32 %91, i32* %94, align 8
  %95 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %96 = load i32, i32* @SFB_REG_VID_VER, align 4
  %97 = call i32 @sfb_read(%struct.pmagbbfb_par* %95, i32 %96)
  %98 = load i32, i32* @SFB_VID_VER_SYN_SHIFT, align 4
  %99 = ashr i32 %97, %98
  %100 = load i32, i32* @SFB_VID_VER_SYN_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 9
  store i32 %101, i32* %104, align 4
  %105 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  ret void
}

declare dso_local i32 @sfb_read(%struct.pmagbbfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
