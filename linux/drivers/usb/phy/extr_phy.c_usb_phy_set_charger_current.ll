; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_phy_set_charger_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_phy_set_charger_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DEFAULT_SDP_CUR_MAX_SS = common dso_local global i32 0, align 4
@DEFAULT_DCP_CUR_MAX = common dso_local global i32 0, align 4
@DEFAULT_CDP_CUR_MAX = common dso_local global i32 0, align 4
@DEFAULT_ACA_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_phy_set_charger_current(%struct.usb_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %92 [
    i32 128, label %8
    i32 129, label %29
    i32 130, label %50
    i32 131, label %71
  ]

8:                                                ; preds = %2
  %9 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %10 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %97

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DEFAULT_SDP_CUR_MAX_SS, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @DEFAULT_SDP_CUR_MAX_SS, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %27 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %93

29:                                               ; preds = %2
  %30 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %31 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %97

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @DEFAULT_DCP_CUR_MAX, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @DEFAULT_DCP_CUR_MAX, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %48 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  br label %93

50:                                               ; preds = %2
  %51 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %52 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %97

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DEFAULT_CDP_CUR_MAX, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @DEFAULT_CDP_CUR_MAX, align 4
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %69 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  br label %93

71:                                               ; preds = %2
  %72 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %73 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %97

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @DEFAULT_ACA_CUR_MAX, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @DEFAULT_ACA_CUR_MAX, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %90 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 4
  br label %93

92:                                               ; preds = %2
  br label %97

93:                                               ; preds = %87, %66, %45, %24
  %94 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %95 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %94, i32 0, i32 1
  %96 = call i32 @schedule_work(i32* %95)
  br label %97

97:                                               ; preds = %93, %92, %78, %57, %36, %15
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
