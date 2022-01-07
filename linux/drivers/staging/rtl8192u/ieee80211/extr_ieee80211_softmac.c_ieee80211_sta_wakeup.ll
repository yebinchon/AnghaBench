; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32 (i32)*, i32 (i32)* }

@.str = private unnamed_addr constant [59 x i8] c"Warning: driver is probably failing to report TX ps error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_wakeup(%struct.ieee80211_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i16, align 2
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i16, i16* %4, align 2
  %11 = icmp ne i16 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %14, i32 0, i32 2
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 %16(i32 %19)
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %22 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device* %21, i32 0)
  br label %23

23:                                               ; preds = %12, %9
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 3
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %32(i32 %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i16, i16* %4, align 2
  %41 = icmp ne i16 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %43, i32 0, i32 2
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %45(i32 %48)
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %51 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device* %50, i32 0)
  br label %52

52:                                               ; preds = %23, %42, %37
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
