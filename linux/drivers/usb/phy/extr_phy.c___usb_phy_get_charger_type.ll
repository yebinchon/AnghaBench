; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c___usb_phy_get_charger_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c___usb_phy_get_charger_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32, i8*, i32, i32 }

@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@SDP_TYPE = common dso_local global i32 0, align 4
@USB_CHARGER_PRESENT = common dso_local global i8* null, align 8
@EXTCON_CHG_USB_CDP = common dso_local global i32 0, align 4
@CDP_TYPE = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@DCP_TYPE = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_ACA = common dso_local global i32 0, align 4
@ACA_TYPE = common dso_local global i32 0, align 4
@UNKNOWN_TYPE = common dso_local global i32 0, align 4
@USB_CHARGER_ABSENT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_phy*)* @__usb_phy_get_charger_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__usb_phy_get_charger_type(%struct.usb_phy* %0) #0 {
  %2 = alloca %struct.usb_phy*, align 8
  store %struct.usb_phy* %0, %struct.usb_phy** %2, align 8
  %3 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %4 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %7 = call i64 @extcon_get_state(i32 %5, i32 %6)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @SDP_TYPE, align 4
  %11 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %12 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** @USB_CHARGER_PRESENT, align 8
  %14 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %15 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %18 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EXTCON_CHG_USB_CDP, align 4
  %21 = call i64 @extcon_get_state(i32 %19, i32 %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i32, i32* @CDP_TYPE, align 4
  %25 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %26 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** @USB_CHARGER_PRESENT, align 8
  %28 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %29 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %67

30:                                               ; preds = %16
  %31 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %32 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %35 = call i64 @extcon_get_state(i32 %33, i32 %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* @DCP_TYPE, align 4
  %39 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %40 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** @USB_CHARGER_PRESENT, align 8
  %42 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %43 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %66

44:                                               ; preds = %30
  %45 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %46 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EXTCON_CHG_USB_ACA, align 4
  %49 = call i64 @extcon_get_state(i32 %47, i32 %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* @ACA_TYPE, align 4
  %53 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %54 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** @USB_CHARGER_PRESENT, align 8
  %56 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %57 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %65

58:                                               ; preds = %44
  %59 = load i32, i32* @UNKNOWN_TYPE, align 4
  %60 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %61 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** @USB_CHARGER_ABSENT, align 8
  %63 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %64 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %37
  br label %67

67:                                               ; preds = %66, %23
  br label %68

68:                                               ; preds = %67, %9
  %69 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %70 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %69, i32 0, i32 0
  %71 = call i32 @schedule_work(i32* %70)
  ret void
}

declare dso_local i64 @extcon_get_state(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
