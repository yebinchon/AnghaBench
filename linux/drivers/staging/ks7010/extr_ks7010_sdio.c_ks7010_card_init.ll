; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_card_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64, i64, i32, i32, i64 }

@SME_START = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wait time out!! SME_START\0A\00", align 1
@DEVICE_STATE_PREINIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"wait time out!! wireless parameter set\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DEVICE READY!!\0A\00", align 1
@DEVICE_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @ks7010_card_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks7010_card_init(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %3 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %4 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %3, i32 0, i32 3
  %5 = call i32 @init_completion(i32* %4)
  %6 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %7 = load i32, i32* @SME_START, align 4
  %8 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %6, i32 %7)
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %10 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %9, i32 0, i32 3
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 5, %11
  %13 = call i32 @wait_for_completion_interruptible_timeout(i32* %10, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %17 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @netdev_dbg(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %27 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* @DEVICE_STATE_PREINIT, align 8
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %33 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %25, %20
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %36 = call i32 @ks7010_sme_enqueue_events(%struct.ks_wlan_private* %35)
  %37 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %38 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %37, i32 0, i32 3
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 5, %39
  %41 = call i32 @wait_for_completion_interruptible_timeout(i32* %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %45 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @netdev_dbg(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %34
  %49 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %50 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DEVICE_STATE_PREINIT, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %56 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netdev_dbg(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* @DEVICE_STATE_READY, align 8
  %60 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %61 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %54, %48
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @ks7010_sme_enqueue_events(%struct.ks_wlan_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
