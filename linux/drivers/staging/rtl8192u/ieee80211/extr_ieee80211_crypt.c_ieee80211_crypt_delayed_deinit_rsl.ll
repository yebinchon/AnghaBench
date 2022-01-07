; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt.c_ieee80211_crypt_delayed_deinit_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt.c_ieee80211_crypt_delayed_deinit_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_crypt_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %0, %struct.ieee80211_crypt_data** %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.ieee80211_crypt_data**, align 8
  %5 = alloca %struct.ieee80211_crypt_data*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.ieee80211_crypt_data** %1, %struct.ieee80211_crypt_data*** %4, align 8
  %7 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %4, align 8
  %8 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %7, align 8
  %9 = icmp ne %struct.ieee80211_crypt_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %4, align 8
  %13 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  store %struct.ieee80211_crypt_data* %13, %struct.ieee80211_crypt_data** %5, align 8
  %14 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %4, align 8
  store %struct.ieee80211_crypt_data* null, %struct.ieee80211_crypt_data** %14, align 8
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 2
  %23 = call i32 @list_add(i32* %20, i32* %22)
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 1
  %26 = call i32 @timer_pending(%struct.TYPE_3__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %11
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* @HZ, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 1
  %37 = call i32 @add_timer(%struct.TYPE_3__* %36)
  br label %38

38:                                               ; preds = %28, %11
  %39 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
