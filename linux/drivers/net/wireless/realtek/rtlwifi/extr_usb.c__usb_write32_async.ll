; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usb_write32_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usb_write32_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, i32, i32)* @_usb_write32_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_usb_write32_async(%struct.rtl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = call i32 @to_usb_device(%struct.device* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @_usb_write_async(i32 %13, i32 %14, i32 %15, i32 4)
  ret void
}

declare dso_local i32 @_usb_write_async(i32, i32, i32, i32) #1

declare dso_local i32 @to_usb_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
