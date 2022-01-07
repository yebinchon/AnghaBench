; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_to_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_to_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.ks_wlan_private = type { %struct.ks_sdio_card* }
%struct.ks_sdio_card = type { %struct.sdio_func* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdio_func* (%struct.ks_wlan_private*)* @ks7010_to_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdio_func* @ks7010_to_func(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %struct.ks_sdio_card*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %5 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %4, i32 0, i32 0
  %6 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %5, align 8
  store %struct.ks_sdio_card* %6, %struct.ks_sdio_card** %3, align 8
  %7 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %3, align 8
  %8 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %7, i32 0, i32 0
  %9 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  ret %struct.sdio_func* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
