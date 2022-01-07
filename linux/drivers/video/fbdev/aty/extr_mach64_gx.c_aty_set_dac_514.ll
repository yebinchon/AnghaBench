; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_set_dac_514.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_set_dac_514.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32 }
%struct.fb_info = type { i64 }
%union.aty_pll = type { i32 }
%struct.atyfb_par = type { i32 }

@aty_set_dac_514.tab = internal global [3 x %struct.anon] [%struct.anon { i32 0, i32 65, i32 3, i32 113, i32 69 }, %struct.anon { i32 0, i32 69, i32 4, i32 12, i32 1 }, %struct.anon { i32 0, i32 69, i32 6, i32 14, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %union.aty_pll*, i32, i32)* @aty_set_dac_514 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_set_dac_514(%struct.fb_info* %0, %union.aty_pll* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %union.aty_pll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atyfb_par*, align 8
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store %union.aty_pll* %1, %union.aty_pll** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.atyfb_par*
  store %struct.atyfb_par* %14, %struct.atyfb_par** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %17 [
    i32 8, label %16
    i32 16, label %18
    i32 32, label %19
  ]

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %4, %16
  store i32 0, i32* %10, align 4
  br label %20

18:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %20

19:                                               ; preds = %4
  store i32 2, i32* %10, align 4
  br label %20

20:                                               ; preds = %19, %18, %17
  %21 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %22 = call i32 @aty_st_514(i32 144, i32 0, %struct.atyfb_par* %21)
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @aty_set_dac_514.tab, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %29 = call i32 @aty_st_514(i32 4, i32 %27, %struct.atyfb_par* %28)
  %30 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %31 = call i32 @aty_st_514(i32 5, i32 0, %struct.atyfb_par* %30)
  %32 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %33 = call i32 @aty_st_514(i32 2, i32 1, %struct.atyfb_par* %32)
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @aty_set_dac_514.tab, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %40 = call i32 @aty_st_514(i32 113, i32 %38, %struct.atyfb_par* %39)
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @aty_set_dac_514.tab, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %47 = call i32 @aty_st_514(i32 10, i32 %45, %struct.atyfb_par* %46)
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @aty_set_dac_514.tab, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @aty_set_dac_514.tab, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %59 = call i32 @aty_st_514(i32 %52, i32 %57, %struct.atyfb_par* %58)
  ret i32 0
}

declare dso_local i32 @aty_st_514(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
