; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s WPA\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, i32)* @ieee80211_wpa_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_wpa_enable(%struct.ieee80211_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %9 = call i32 @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  ret i32 0
}

declare dso_local i32 @printk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
