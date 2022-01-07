; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_wlan_hw_wakeup_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_wlan_hw_wakeup_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PS_SNOOZE = common dso_local global i64 0, align 8
@WAKEUP_REG = common dso_local global i32 0, align 4
@WAKEUP_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"write WAKEUP_REG\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ks_wlan_hw_wakeup_request(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %5 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i64 @atomic_read(i32* %6)
  %8 = load i64, i64* @PS_SNOOZE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %12 = load i32, i32* @WAKEUP_REG, align 4
  %13 = load i32, i32* @WAKEUP_REQ, align 4
  %14 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %19 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netdev_err(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %10
  %23 = load i32, i32* @jiffies, align 4
  %24 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %25 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %27 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %22, %1
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ks7010_sdio_writeb(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
