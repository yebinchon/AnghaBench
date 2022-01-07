; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_set_pll_514.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_set_pll_514.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atyfb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %union.aty_pll*)* @aty_set_pll_514 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_set_pll_514(%struct.fb_info* %0, %union.aty_pll* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %union.aty_pll*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %union.aty_pll* %1, %union.aty_pll** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.atyfb_par*
  store %struct.atyfb_par* %9, %struct.atyfb_par** %5, align 8
  %10 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %11 = call i32 @aty_st_514(i32 6, i32 2, %struct.atyfb_par* %10)
  %12 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %13 = call i32 @aty_st_514(i32 16, i32 1, %struct.atyfb_par* %12)
  %14 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %15 = call i32 @aty_st_514(i32 112, i32 1, %struct.atyfb_par* %14)
  %16 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %17 = call i32 @aty_st_514(i32 143, i32 31, %struct.atyfb_par* %16)
  %18 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %19 = call i32 @aty_st_514(i32 3, i32 0, %struct.atyfb_par* %18)
  %20 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %21 = call i32 @aty_st_514(i32 5, i32 0, %struct.atyfb_par* %20)
  %22 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %23 = bitcast %union.aty_pll* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %27 = call i32 @aty_st_514(i32 32, i32 %25, %struct.atyfb_par* %26)
  %28 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %29 = bitcast %union.aty_pll* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %33 = call i32 @aty_st_514(i32 33, i32 %31, %struct.atyfb_par* %32)
  ret void
}

declare dso_local i32 @aty_st_514(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
