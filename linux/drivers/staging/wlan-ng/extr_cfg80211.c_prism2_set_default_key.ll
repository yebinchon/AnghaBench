; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_set_default_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_set_default_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.wlandevice* }
%struct.wlandevice = type { i32 }

@DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32, i32)* @prism2_set_default_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_set_default_key(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wlandevice*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wlandevice*, %struct.wlandevice** %13, align 8
  store %struct.wlandevice* %14, %struct.wlandevice** %11, align 8
  %15 = load %struct.wlandevice*, %struct.wlandevice** %11, align 8
  %16 = load i32, i32* @DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @prism2_domibset_uint32(%struct.wlandevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
