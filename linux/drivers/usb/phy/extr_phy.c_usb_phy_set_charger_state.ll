; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_phy_set_charger_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_phy_set_charger_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32, i32, i32, i32 (%struct.usb_phy*)* }

@USB_CHARGER_PRESENT = common dso_local global i64 0, align 8
@UNKNOWN_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_phy_set_charger_state(%struct.usb_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %12 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %11, i32 0, i32 3
  %13 = load i32 (%struct.usb_phy*)*, i32 (%struct.usb_phy*)** %12, align 8
  %14 = icmp ne i32 (%struct.usb_phy*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  br label %42

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %19 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %21 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @USB_CHARGER_PRESENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %28 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %27, i32 0, i32 3
  %29 = load i32 (%struct.usb_phy*)*, i32 (%struct.usb_phy*)** %28, align 8
  %30 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %31 = call i32 %29(%struct.usb_phy* %30)
  %32 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %33 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %16
  %35 = load i32, i32* @UNKNOWN_TYPE, align 4
  %36 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %37 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %40 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %39, i32 0, i32 1
  %41 = call i32 @schedule_work(i32* %40)
  br label %42

42:                                               ; preds = %38, %15
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
