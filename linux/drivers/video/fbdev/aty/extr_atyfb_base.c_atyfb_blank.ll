; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_atyfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_atyfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%struct.atyfb_par = type { i64, i64, i64 }

@CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@LCD_GEN_CNTL = common dso_local global i32 0, align 4
@LCD_ON = common dso_local global i32 0, align 4
@POWER_MANAGEMENT = common dso_local global i32 0, align 4
@PWR_BLON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @atyfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atyfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.atyfb_par*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.atyfb_par*
  store %struct.atyfb_par* %11, %struct.atyfb_par** %6, align 8
  %12 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %13 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %18 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %47

22:                                               ; preds = %16
  %23 = load i32, i32* @CRTC_GEN_CNTL, align 4
  %24 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %25 = call i32 @aty_ld_le32(i32 %23, %struct.atyfb_par* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -67108941
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %42 [
    i32 129, label %29
    i32 131, label %30
    i32 128, label %33
    i32 132, label %36
    i32 130, label %39
  ]

29:                                               ; preds = %22
  br label %42

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 67108928
  store i32 %32, i32* %7, align 4
  br label %42

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 67108936
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 67108932
  store i32 %38, i32* %7, align 4
  br label %42

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 67108940
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %22, %39, %36, %33, %30, %29
  %43 = load i32, i32* @CRTC_GEN_CNTL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %46 = call i32 @aty_st_le32(i32 %43, i32 %44, %struct.atyfb_par* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
