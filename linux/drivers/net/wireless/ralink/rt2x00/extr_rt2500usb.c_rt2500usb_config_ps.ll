; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.rt2x00_dev*, i32)* }
%struct.rt2x00lib_conf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@STATE_SLEEP = common dso_local global i32 0, align 4
@STATE_AWAKE = common dso_local global i32 0, align 4
@MAC_CSR18 = common dso_local global i32 0, align 4
@MAC_CSR18_DELAY_AFTER_BEACON = common dso_local global i32 0, align 4
@MAC_CSR18_BEACONS_BEFORE_WAKEUP = common dso_local global i32 0, align 4
@MAC_CSR18_AUTO_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt2500usb_config_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_config_ps(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %4, align 8
  %7 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @STATE_SLEEP, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @STATE_AWAKE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @STATE_SLEEP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @MAC_CSR18, align 4
  %27 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @MAC_CSR18_DELAY_AFTER_BEACON, align 4
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 20
  %33 = call i32 @rt2x00_set_field16(i32* %6, i32 %28, i32 %32)
  %34 = load i32, i32* @MAC_CSR18_BEACONS_BEFORE_WAKEUP, align 4
  %35 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %36 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @rt2x00_set_field16(i32* %6, i32 %34, i32 %40)
  %42 = load i32, i32* @MAC_CSR18_AUTO_WAKE, align 4
  %43 = call i32 @rt2x00_set_field16(i32* %6, i32 %42, i32 0)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = load i32, i32* @MAC_CSR18, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @MAC_CSR18_AUTO_WAKE, align 4
  %49 = call i32 @rt2x00_set_field16(i32* %6, i32 %48, i32 1)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = load i32, i32* @MAC_CSR18, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %50, i32 %51, i32 %52)
  br label %64

54:                                               ; preds = %19
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = load i32, i32* @MAC_CSR18, align 4
  %57 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @MAC_CSR18_AUTO_WAKE, align 4
  %59 = call i32 @rt2x00_set_field16(i32* %6, i32 %58, i32 0)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = load i32, i32* @MAC_CSR18, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %54, %24
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %66 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32 (%struct.rt2x00_dev*, i32)*, i32 (%struct.rt2x00_dev*, i32)** %70, align 8
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 %71(%struct.rt2x00_dev* %72, i32 %73)
  ret void
}

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
