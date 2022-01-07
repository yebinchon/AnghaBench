; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_pcf50633_mbc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_pcf50633_mbc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633_mbc = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32)* }

@PCF50633_IRQ_USBINS = common dso_local global i32 0, align 4
@PCF50633_IRQ_USBREM = common dso_local global i32 0, align 4
@PCF50633_IRQ_ADPINS = common dso_local global i32 0, align 4
@PCF50633_IRQ_ADPREM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @pcf50633_mbc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf50633_mbc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcf50633_mbc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pcf50633_mbc*
  store %struct.pcf50633_mbc* %7, %struct.pcf50633_mbc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PCF50633_IRQ_USBINS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %13 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PCF50633_IRQ_USBREM, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %20 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %22 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i32 @pcf50633_mbc_usb_curlim_set(%struct.TYPE_5__* %23, i32 0)
  br label %25

25:                                               ; preds = %18, %14
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PCF50633_IRQ_ADPINS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %32 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @PCF50633_IRQ_ADPREM, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %39 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %43 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @power_supply_changed(i32 %44)
  %46 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %47 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @power_supply_changed(i32 %48)
  %50 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %51 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @power_supply_changed(i32 %52)
  %54 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %55 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.TYPE_5__*, i32)* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %41
  %63 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %64 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %68, align 8
  %70 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %71 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 %69(%struct.TYPE_5__* %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %41
  ret void
}

declare dso_local i32 @pcf50633_mbc_usb_curlim_set(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
