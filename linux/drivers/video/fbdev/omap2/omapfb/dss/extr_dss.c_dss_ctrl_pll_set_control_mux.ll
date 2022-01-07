; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_ctrl_pll_set_control_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_ctrl_pll_set_control_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@dss = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"error in PLL mux config for LCD\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error in PLL mux config for LCD2\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"error in PLL mux config for LCD3\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"error in PLL mux config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_ctrl_pll_set_control_mux(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss, i32 0, i32 1), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %46

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %35 [
    i32 130, label %12
    i32 129, label %19
    i32 128, label %27
  ]

12:                                               ; preds = %10
  store i32 3, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %16 [
    i32 132, label %14
    i32 133, label %15
  ]

14:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %18

15:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %18

16:                                               ; preds = %12
  %17 = call i32 @DSSERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %46

18:                                               ; preds = %15, %14
  br label %37

19:                                               ; preds = %10
  store i32 5, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %24 [
    i32 132, label %21
    i32 131, label %22
    i32 133, label %23
  ]

21:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %26

22:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %26

23:                                               ; preds = %19
  store i32 2, i32* %6, align 4
  br label %26

24:                                               ; preds = %19
  %25 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %46

26:                                               ; preds = %23, %22, %21
  br label %37

27:                                               ; preds = %10
  store i32 7, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %32 [
    i32 132, label %29
    i32 131, label %30
    i32 133, label %31
  ]

29:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %34

30:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %34

31:                                               ; preds = %27
  store i32 2, i32* %6, align 4
  br label %34

32:                                               ; preds = %27
  %33 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %46

34:                                               ; preds = %31, %30, %29
  br label %37

35:                                               ; preds = %10
  %36 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %46

37:                                               ; preds = %34, %26, %18
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss, i32 0, i32 0), align 4
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 3, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %42, %43
  %45 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %35, %32, %24, %16, %9
  ret void
}

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
