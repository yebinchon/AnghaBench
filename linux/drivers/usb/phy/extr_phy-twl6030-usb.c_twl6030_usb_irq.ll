; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_usb_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_usb_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_usb = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MUSB_UNKNOWN = common dso_local global i64 0, align 8
@TWL6030_MODULE_ID0 = common dso_local global i32 0, align 4
@STS_HW_CONDITIONS = common dso_local global i32 0, align 4
@TWL_MODULE_MAIN_CHARGE = common dso_local global i32 0, align 4
@CONTROLLER_STAT1 = common dso_local global i32 0, align 4
@STS_USB_ID = common dso_local global i32 0, align 4
@VBUS_DET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to enable usb3v3\0A\00", align 1
@MUSB_VBUS_VALID = common dso_local global i32 0, align 4
@MUSB_VBUS_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl6030_usb_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_usb_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.twl6030_usb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.twl6030_usb*
  store %struct.twl6030_usb* %11, %struct.twl6030_usb** %5, align 8
  %12 = load i64, i64* @MUSB_UNKNOWN, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %15 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %16 = load i32, i32* @STS_HW_CONDITIONS, align 4
  %17 = call i32 @twl6030_readb(%struct.twl6030_usb* %14, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %19 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %20 = load i32, i32* @CONTROLLER_STAT1, align 4
  %21 = call i32 @twl6030_readb(%struct.twl6030_usb* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @STS_USB_ID, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %96, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @VBUS_DET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %33 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regulator_enable(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %40 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @dev_err(%struct.TYPE_2__* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %45 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @MUSB_VBUS_VALID, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %49 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @musb_mailbox(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load i64, i64* @MUSB_UNKNOWN, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %58 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %43
  br label %95

60:                                               ; preds = %26
  %61 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %62 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @MUSB_UNKNOWN, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %60
  %68 = load i32, i32* @MUSB_VBUS_OFF, align 4
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %71 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @musb_mailbox(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i64, i64* @MUSB_UNKNOWN, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %80 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %67
  %82 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %83 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %88 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @regulator_disable(i32 %89)
  %91 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %92 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %86, %81
  br label %94

94:                                               ; preds = %93, %60
  br label %95

95:                                               ; preds = %94, %59
  br label %96

96:                                               ; preds = %95, %2
  %97 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %98 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @sysfs_notify(i32* %100, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %102
}

declare dso_local i32 @twl6030_readb(%struct.twl6030_usb*, i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @musb_mailbox(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
