; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_wlan_hw_sleep_doze_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_wlan_hw_sleep_doze_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GCR_B_REG = common dso_local global i32 0, align 4
@GCR_B_DOZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"write GCR_B_REG\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @ks_wlan_hw_sleep_doze_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_wlan_hw_sleep_doze_request(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %5 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = call i32 @atomic_set(i32* %6, i32 0)
  %8 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %9 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %15 = load i32, i32* @GCR_B_REG, align 4
  %16 = load i32, i32* @GCR_B_DOZE, align 4
  %17 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %14, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netdev_err(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %34

25:                                               ; preds = %13
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %27 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @atomic_set(i32* %28, i32 1)
  %30 = load i32, i32* @jiffies, align 4
  %31 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %32 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %25, %1
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %36 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i64 @atomic_read(i32* %37)
  %39 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %40 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ks7010_sdio_writeb(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
