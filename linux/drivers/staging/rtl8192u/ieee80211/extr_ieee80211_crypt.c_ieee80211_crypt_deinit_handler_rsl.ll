; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt.c_ieee80211_crypt_deinit_handler_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt.c_ieee80211_crypt_deinit_handler_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@crypt_deinit_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: entries remaining in delayed crypt deletion list\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ieee = common dso_local global %struct.ieee80211_device* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_crypt_deinit_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %6 = ptrtoint %struct.ieee80211_device* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @crypt_deinit_timer, align 4
  %9 = call %struct.ieee80211_device* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ieee80211_device* %9, %struct.ieee80211_device** %3, align 8
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %15 = call i32 @ieee80211_crypt_deinit_entries(%struct.ieee80211_device* %14, i32 0)
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 3
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %1
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_dbg(%struct.TYPE_3__* %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 1
  %38 = call i32 @add_timer(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %20, %1
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local %struct.ieee80211_device* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_crypt_deinit_entries(%struct.ieee80211_device*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
