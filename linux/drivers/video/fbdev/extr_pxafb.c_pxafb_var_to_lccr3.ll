; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_var_to_lccr3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_var_to_lccr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LCCR3_PDFOR_3 = common dso_local global i32 0, align 4
@LCCR3_PDFOR_2 = common dso_local global i32 0, align 4
@LCCR3_PDFOR_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*)* @pxafb_var_to_lccr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_var_to_lccr3(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %7 = call i32 @pxafb_var_to_bpp(%struct.fb_var_screeninfo* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @LCCR3_BPP(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = call i32 @var_to_depth(%struct.fb_var_screeninfo* %14)
  switch i32 %15, label %51 [
    i32 16, label %16
    i32 18, label %29
    i32 24, label %33
    i32 19, label %47
    i32 25, label %47
  ]

16:                                               ; preds = %11
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @LCCR3_PDFOR_3, align 4
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %51

29:                                               ; preds = %11
  %30 = load i32, i32* @LCCR3_PDFOR_3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %51

33:                                               ; preds = %11
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @LCCR3_PDFOR_2, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @LCCR3_PDFOR_3, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %11, %11
  %48 = load i32, i32* @LCCR3_PDFOR_0, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %11, %47, %43, %29, %25
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @pxafb_var_to_bpp(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @LCCR3_BPP(i32) #1

declare dso_local i32 @var_to_depth(%struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
