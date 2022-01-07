; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_disconnect_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_disconnect_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i64, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@USB_EVENT_NONE = common dso_local global i32 0, align 4
@USB_HOST = common dso_local global i64 0, align 8
@USB_IDLE = common dso_local global i8* null, align 8
@USB_PERIPHERAL = common dso_local global i64 0, align 8
@UX500_MUSB_CLEAN = common dso_local global i32 0, align 4
@USB_DEDICATED_CHG = common dso_local global i64 0, align 8
@AB8500_BIT_PHY_CTRL_DEVICE_EN = common dso_local global i32 0, align 4
@AB8500_USB = common dso_local global i32 0, align 4
@AB8500_USB_PHY_CTRL_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ab8500_usb_disconnect_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_usb_disconnect_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ab8500_usb*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ab8500_usb*
  store %struct.ab8500_usb* %8, %struct.ab8500_usb** %5, align 8
  %9 = load i32, i32* @USB_EVENT_NONE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %11 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_HOST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %17 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %22 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %24 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %28 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %27, i32 0, i32 3
  %29 = call i32 @atomic_notifier_call_chain(i32* %25, i32 %26, i64* %28)
  %30 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %31 = call i32 @ab8500_usb_host_phy_dis(%struct.ab8500_usb* %30)
  %32 = load i8*, i8** @USB_IDLE, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %35 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %15, %2
  %37 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %38 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @USB_PERIPHERAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %44 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %48 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %47, i32 0, i32 3
  %49 = call i32 @atomic_notifier_call_chain(i32* %45, i32 %46, i64* %48)
  %50 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %51 = call i32 @ab8500_usb_peri_phy_dis(%struct.ab8500_usb* %50)
  %52 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %53 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* @UX500_MUSB_CLEAN, align 4
  %56 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %57 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %56, i32 0, i32 3
  %58 = call i32 @atomic_notifier_call_chain(i32* %54, i32 %55, i64* %57)
  %59 = load i8*, i8** @USB_IDLE, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %62 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %64 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %69 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %42, %36
  %71 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %72 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @is_ab8500_2p0(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %78 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @USB_DEDICATED_CHG, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %84 = load i32, i32* @AB8500_BIT_PHY_CTRL_DEVICE_EN, align 4
  %85 = call i32 @ab8500_usb_wd_linkstatus(%struct.ab8500_usb* %83, i32 %84)
  %86 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %87 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AB8500_USB, align 4
  %90 = load i32, i32* @AB8500_USB_PHY_CTRL_REG, align 4
  %91 = load i32, i32* @AB8500_BIT_PHY_CTRL_DEVICE_EN, align 4
  %92 = call i32 @abx500_mask_and_set_register_interruptible(i32 %88, i32 %89, i32 %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %82, %76
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %95
}

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, i64*) #1

declare dso_local i32 @ab8500_usb_host_phy_dis(%struct.ab8500_usb*) #1

declare dso_local i32 @ab8500_usb_peri_phy_dis(%struct.ab8500_usb*) #1

declare dso_local i64 @is_ab8500_2p0(i32) #1

declare dso_local i32 @ab8500_usb_wd_linkstatus(%struct.ab8500_usb*, i32) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
