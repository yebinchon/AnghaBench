; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_chan_width_mask_to_nl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_chan_width_mask_to_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QLINK_CHAN_WIDTH_5 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_5 = common dso_local global i32 0, align 4
@QLINK_CHAN_WIDTH_10 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_10 = common dso_local global i32 0, align 4
@QLINK_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@QLINK_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@QLINK_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@QLINK_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@QLINK_CHAN_WIDTH_80P80 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80P80 = common dso_local global i32 0, align 4
@QLINK_CHAN_WIDTH_160 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_160 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlink_chan_width_mask_to_nl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @QLINK_CHAN_WIDTH_5, align 4
  %6 = call i32 @BIT(i32 %5)
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @NL80211_CHAN_WIDTH_5, align 4
  %11 = call i32 @BIT(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @QLINK_CHAN_WIDTH_10, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @NL80211_CHAN_WIDTH_10, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @QLINK_CHAN_WIDTH_20_NOHT, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @QLINK_CHAN_WIDTH_20, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @NL80211_CHAN_WIDTH_20, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @QLINK_CHAN_WIDTH_40, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @QLINK_CHAN_WIDTH_80, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %58
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @QLINK_CHAN_WIDTH_80P80, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* @NL80211_CHAN_WIDTH_80P80, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %69
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @QLINK_CHAN_WIDTH_160, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i32, i32* @NL80211_CHAN_WIDTH_160, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %80
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
