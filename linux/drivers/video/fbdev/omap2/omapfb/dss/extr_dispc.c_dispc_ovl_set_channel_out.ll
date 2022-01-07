; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_channel_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_channel_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_ovl_set_channel_out(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %12 [
    i32 131, label %10
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
  ]

10:                                               ; preds = %2
  store i32 8, i32* %5, align 4
  br label %14

11:                                               ; preds = %2, %2, %2
  store i32 16, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @BUG()
  br label %57

14:                                               ; preds = %11, %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %15)
  %17 = call i32 @dispc_read_reg(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %19 = call i64 @dss_has_feature(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %35 [
    i32 135, label %23
    i32 136, label %24
    i32 134, label %25
    i32 133, label %26
    i32 132, label %34
  ]

23:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %37

24:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %37

25:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %37

26:                                               ; preds = %21
  %27 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %28 = call i64 @dss_has_feature(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @BUG()
  br label %57

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %37

35:                                               ; preds = %21
  %36 = call i32 (...) @BUG()
  br label %57

37:                                               ; preds = %34, %33, %25, %24, %23
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @FLD_MOD(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @FLD_MOD(i32 %43, i32 %44, i32 31, i32 30)
  store i32 %45, i32* %6, align 4
  br label %52

46:                                               ; preds = %14
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @FLD_MOD(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %37
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dispc_write_reg(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %35, %31, %12
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
