; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_link_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_link_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.link_qual = type { i32 }

@RT2860 = common dso_local global i32 0, align 4
@REV_RT2860C = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_link_tuner(%struct.rt2x00_dev* %0, %struct.link_qual* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.link_qual*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.link_qual* %1, %struct.link_qual** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %9 = load i32, i32* @RT2860, align 4
  %10 = load i32, i32* @REV_RT2860C, align 4
  %11 = call i64 @rt2x00_rt_rev(%struct.rt2x00_dev* %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %72

14:                                               ; preds = %3
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %16 = call i32 @rt2800_get_default_vgc(%struct.rt2x00_dev* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %58 [
    i32 131, label %21
    i32 130, label %21
    i32 129, label %40
    i32 128, label %49
  ]

21:                                               ; preds = %14, %14
  %22 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %23 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, -65
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %28 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 32
  store i32 %34, i32* %7, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 16
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %21
  br label %67

40:                                               ; preds = %14
  %41 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %42 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, -65
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 16
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %67

49:                                               ; preds = %14
  %50 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %51 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, -65
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 32
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %49
  br label %67

58:                                               ; preds = %14
  %59 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %60 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, -80
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 16
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %57, %48, %39
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %69 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @rt2800_set_vgc(%struct.rt2x00_dev* %68, %struct.link_qual* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %13
  ret void
}

declare dso_local i64 @rt2x00_rt_rev(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_get_default_vgc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_set_vgc(%struct.rt2x00_dev*, %struct.link_qual*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
