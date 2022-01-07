; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @mt76x0_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.mt76x02_dev* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.mt76x02_dev* %6, %struct.mt76x02_dev** %3, align 8
  %7 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @test_bit(i32 %7, i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee80211_unregister_hw(i32 %19)
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %22 = call i32 @mt76x0u_cleanup(%struct.mt76x02_dev* %21)
  %23 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %24 = call i32 @usb_set_intfdata(%struct.usb_interface* %23, i32* null)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %26 = call i32 @interface_to_usbdev(%struct.usb_interface* %25)
  %27 = call i32 @usb_put_dev(i32 %26)
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_free_hw(i32 %31)
  br label %33

33:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.mt76x02_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @mt76x0u_cleanup(%struct.mt76x02_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
