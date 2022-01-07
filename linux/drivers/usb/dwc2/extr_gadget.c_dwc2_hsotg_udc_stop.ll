; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_udc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_udc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dwc2_hsotg = type { i32, i64, %struct.TYPE_8__*, i32, i64, %struct.TYPE_7__, i32*, %struct.TYPE_6__**, %struct.TYPE_5__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @dwc2_hsotg_udc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hsotg_udc_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %8 = call %struct.dwc2_hsotg* @to_hsotg(%struct.usb_gadget* %7)
  store %struct.dwc2_hsotg* %8, %struct.dwc2_hsotg** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %10 = icmp ne %struct.dwc2_hsotg* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %102

14:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %60, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %15
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 8
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %32 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %31, i32 0, i32 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @dwc2_hsotg_ep_disable_lock(i32* %38)
  br label %40

40:                                               ; preds = %30, %21
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 7
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %50, i32 0, i32 7
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @dwc2_hsotg_ep_disable_lock(i32* %57)
  br label %59

59:                                               ; preds = %49, %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %15

63:                                               ; preds = %15
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %65 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %64, i32 0, i32 3
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %69 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %68, i32 0, i32 6
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %71 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %72 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %75 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %77 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %76, i32 0, i32 3
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %81 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_8__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %63
  %86 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %87 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @otg_set_peripheral(i32 %90, i32* null)
  br label %92

92:                                               ; preds = %85, %63
  %93 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %94 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %100 = call i32 @dwc2_lowlevel_hw_disable(%struct.dwc2_hsotg* %99)
  br label %101

101:                                              ; preds = %98, %92
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %11
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.dwc2_hsotg* @to_hsotg(%struct.usb_gadget*) #1

declare dso_local i32 @dwc2_hsotg_ep_disable_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_8__*) #1

declare dso_local i32 @otg_set_peripheral(i32, i32*) #1

declare dso_local i32 @dwc2_lowlevel_hw_disable(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
