; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2400pci.c_rt2400pci_config_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2400pci.c_rt2400pci_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rf_channel = type { i32, i32, i32 }

@RF1_TUNER = common dso_local global i32 0, align 4
@RF3_TUNER = common dso_local global i32 0, align 4
@RF2420 = common dso_local global i32 0, align 4
@CNT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rf_channel*)* @rt2400pci_config_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_config_channel(%struct.rt2x00_dev* %0, %struct.rf_channel* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rf_channel*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rf_channel* %1, %struct.rf_channel** %4, align 8
  %5 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %6 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %5, i32 0, i32 0
  %7 = load i32, i32* @RF1_TUNER, align 4
  %8 = call i32 @rt2x00_set_field32(i32* %6, i32 %7, i32 1)
  %9 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %10 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %9, i32 0, i32 1
  %11 = load i32, i32* @RF3_TUNER, align 4
  %12 = call i32 @rt2x00_set_field32(i32* %10, i32 %11, i32 1)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %15 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %13, i32 1, i32 %16)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %20 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %18, i32 2, i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %25 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %23, i32 3, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @RF2420, align 4
  %30 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %86

33:                                               ; preds = %2
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %36 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %34, i32 1, i32 %37)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %39, i32 2, i32 797234)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %43 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %41, i32 3, i32 %44)
  %46 = call i32 @msleep(i32 1)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %49 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %47, i32 1, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %54 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %52, i32 2, i32 %55)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %59 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %57, i32 3, i32 %60)
  %62 = call i32 @msleep(i32 1)
  %63 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %64 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %63, i32 0, i32 0
  %65 = load i32, i32* @RF1_TUNER, align 4
  %66 = call i32 @rt2x00_set_field32(i32* %64, i32 %65, i32 0)
  %67 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %68 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %67, i32 0, i32 1
  %69 = load i32, i32* @RF3_TUNER, align 4
  %70 = call i32 @rt2x00_set_field32(i32* %68, i32 %69, i32 0)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %73 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %71, i32 1, i32 %74)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %77 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %78 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rt2400pci_rf_write(%struct.rt2x00_dev* %76, i32 3, i32 %79)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %82 = load i32, i32* @CNT0, align 4
  %83 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %81, i32 %82)
  %84 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %85 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2400pci_rf_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
