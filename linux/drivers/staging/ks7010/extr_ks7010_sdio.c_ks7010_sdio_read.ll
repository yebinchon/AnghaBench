; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_sdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_sdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32 }
%struct.sdio_func = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_wlan_private*, i32, i32*, i32)* @ks7010_sdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks7010_sdio_read(%struct.ks_wlan_private* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ks_wlan_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdio_func*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %11 = call %struct.sdio_func* @ks7010_to_func(%struct.ks_wlan_private* %10)
  store %struct.sdio_func* %11, %struct.sdio_func** %9, align 8
  %12 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @sdio_memcpy_fromio(%struct.sdio_func* %12, i32* %13, i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local %struct.sdio_func* @ks7010_to_func(%struct.ks_wlan_private*) #1

declare dso_local i32 @sdio_memcpy_fromio(%struct.sdio_func*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
