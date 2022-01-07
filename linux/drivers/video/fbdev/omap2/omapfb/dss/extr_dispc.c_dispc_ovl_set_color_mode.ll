; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_color_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_color_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_DSS_GFX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dispc_ovl_set_color_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_color_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @OMAP_DSS_GFX, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %26 [
    i32 139, label %11
    i32 132, label %12
    i32 134, label %13
    i32 138, label %14
    i32 146, label %15
    i32 137, label %16
    i32 145, label %17
    i32 135, label %18
    i32 136, label %19
    i32 128, label %20
    i32 130, label %21
    i32 144, label %22
    i32 133, label %23
    i32 131, label %24
    i32 129, label %25
  ]

11:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %28

12:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %28

13:                                               ; preds = %9
  store i32 2, i32* %5, align 4
  br label %28

14:                                               ; preds = %9
  store i32 4, i32* %5, align 4
  br label %28

15:                                               ; preds = %9
  store i32 5, i32* %5, align 4
  br label %28

16:                                               ; preds = %9
  store i32 6, i32* %5, align 4
  br label %28

17:                                               ; preds = %9
  store i32 7, i32* %5, align 4
  br label %28

18:                                               ; preds = %9
  store i32 8, i32* %5, align 4
  br label %28

19:                                               ; preds = %9
  store i32 9, i32* %5, align 4
  br label %28

20:                                               ; preds = %9
  store i32 10, i32* %5, align 4
  br label %28

21:                                               ; preds = %9
  store i32 11, i32* %5, align 4
  br label %28

22:                                               ; preds = %9
  store i32 12, i32* %5, align 4
  br label %28

23:                                               ; preds = %9
  store i32 13, i32* %5, align 4
  br label %28

24:                                               ; preds = %9
  store i32 14, i32* %5, align 4
  br label %28

25:                                               ; preds = %9
  store i32 15, i32* %5, align 4
  br label %28

26:                                               ; preds = %9
  %27 = call i32 (...) @BUG()
  br label %55

28:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  br label %50

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %47 [
    i32 143, label %31
    i32 142, label %32
    i32 141, label %33
    i32 140, label %34
    i32 138, label %35
    i32 146, label %36
    i32 137, label %37
    i32 145, label %38
    i32 135, label %39
    i32 136, label %40
    i32 132, label %41
    i32 134, label %42
    i32 144, label %43
    i32 133, label %44
    i32 131, label %45
    i32 129, label %46
  ]

31:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %49

32:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %49

33:                                               ; preds = %29
  store i32 2, i32* %5, align 4
  br label %49

34:                                               ; preds = %29
  store i32 3, i32* %5, align 4
  br label %49

35:                                               ; preds = %29
  store i32 4, i32* %5, align 4
  br label %49

36:                                               ; preds = %29
  store i32 5, i32* %5, align 4
  br label %49

37:                                               ; preds = %29
  store i32 6, i32* %5, align 4
  br label %49

38:                                               ; preds = %29
  store i32 7, i32* %5, align 4
  br label %49

39:                                               ; preds = %29
  store i32 8, i32* %5, align 4
  br label %49

40:                                               ; preds = %29
  store i32 9, i32* %5, align 4
  br label %49

41:                                               ; preds = %29
  store i32 10, i32* %5, align 4
  br label %49

42:                                               ; preds = %29
  store i32 11, i32* %5, align 4
  br label %49

43:                                               ; preds = %29
  store i32 12, i32* %5, align 4
  br label %49

44:                                               ; preds = %29
  store i32 13, i32* %5, align 4
  br label %49

45:                                               ; preds = %29
  store i32 14, i32* %5, align 4
  br label %49

46:                                               ; preds = %29
  store i32 15, i32* %5, align 4
  br label %49

47:                                               ; preds = %29
  %48 = call i32 (...) @BUG()
  br label %55

49:                                               ; preds = %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @REG_FLD_MOD(i32 %52, i32 %53, i32 4, i32 1)
  br label %55

55:                                               ; preds = %50, %47, %26
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
