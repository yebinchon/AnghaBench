; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i64*, i32 }
%struct.pl031_local = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @pl031_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.pl031_local*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %4 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %5 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %4, i32 0, i32 1
  %6 = call %struct.pl031_local* @dev_get_drvdata(i32* %5)
  store %struct.pl031_local* %6, %struct.pl031_local** %3, align 8
  %7 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %8 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %7, i32 0, i32 1
  %9 = call i32 @dev_pm_clear_wake_irq(i32* %8)
  %10 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %11 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %10, i32 0, i32 1
  %12 = call i32 @device_init_wakeup(i32* %11, i32 0)
  %13 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %14 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %21 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pl031_local*, %struct.pl031_local** %3, align 8
  %26 = call i32 @free_irq(i64 %24, %struct.pl031_local* %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %29 = call i32 @amba_release_regions(%struct.amba_device* %28)
  ret i32 0
}

declare dso_local %struct.pl031_local* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.pl031_local*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
