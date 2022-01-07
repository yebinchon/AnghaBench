; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2400pci.c_rt2400pci_config_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2400pci.c_rt2400pci_config_ps.c"
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
@CSR20 = common dso_local global i32 0, align 4
@CSR20_DELAY_AFTER_TBCN = common dso_local global i32 0, align 4
@CSR20_TBCN_BEFORE_WAKEUP = common dso_local global i32 0, align 4
@CSR20_AUTOWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt2400pci_config_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_config_ps(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
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
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @CSR20, align 4
  %27 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @CSR20_DELAY_AFTER_TBCN, align 4
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 20
  %33 = mul nsw i32 %32, 16
  %34 = call i32 @rt2x00_set_field32(i32* %6, i32 %28, i32 %33)
  %35 = load i32, i32* @CSR20_TBCN_BEFORE_WAKEUP, align 4
  %36 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %37 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @rt2x00_set_field32(i32* %6, i32 %35, i32 %41)
  %43 = load i32, i32* @CSR20_AUTOWAKE, align 4
  %44 = call i32 @rt2x00_set_field32(i32* %6, i32 %43, i32 0)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = load i32, i32* @CSR20, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @CSR20_AUTOWAKE, align 4
  %50 = call i32 @rt2x00_set_field32(i32* %6, i32 %49, i32 1)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = load i32, i32* @CSR20, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %51, i32 %52, i32 %53)
  br label %65

55:                                               ; preds = %19
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = load i32, i32* @CSR20, align 4
  %58 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @CSR20_AUTOWAKE, align 4
  %60 = call i32 @rt2x00_set_field32(i32* %6, i32 %59, i32 0)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %62 = load i32, i32* @CSR20, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %55, %24
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32 (%struct.rt2x00_dev*, i32)*, i32 (%struct.rt2x00_dev*, i32)** %71, align 8
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 %72(%struct.rt2x00_dev* %73, i32 %74)
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
