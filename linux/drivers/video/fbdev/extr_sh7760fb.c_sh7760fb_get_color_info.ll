; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_get_color_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_get_color_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@LDDFR_COLOR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported LDDFR bit depth.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32*, i32*)* @sh7760fb_get_color_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760fb_get_color_info(%struct.device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @LDDFR_COLOR_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %22 [
    i32 133, label %15
    i32 132, label %16
    i32 130, label %17
    i32 131, label %18
    i32 129, label %19
    i32 128, label %20
    i32 135, label %21
    i32 134, label %21
  ]

15:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %27

16:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %27

17:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %18

18:                                               ; preds = %4, %17
  store i32 4, i32* %10, align 4
  br label %27

19:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %20

20:                                               ; preds = %4, %19
  store i32 8, i32* %10, align 4
  br label %27

21:                                               ; preds = %4, %4
  store i32 16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %27

22:                                               ; preds = %4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %40

27:                                               ; preds = %21, %20, %18, %16, %15
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
