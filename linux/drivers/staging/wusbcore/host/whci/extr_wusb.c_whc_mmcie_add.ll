; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_wusb.c_whc_mmcie_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_wusb.c_whc_mmcie_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.wuie_hdr = type { i32 }
%struct.whc = type { i32 }

@WUSBGENCMDSTS_MMCIE_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whc_mmcie_add(%struct.wusbhc* %0, i32 %1, i32 %2, i32 %3, %struct.wuie_hdr* %4) #0 {
  %6 = alloca %struct.wusbhc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wuie_hdr*, align 8
  %11 = alloca %struct.whc*, align 8
  %12 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.wuie_hdr* %4, %struct.wuie_hdr** %10, align 8
  %13 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %14 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %13)
  store %struct.whc* %14, %struct.whc** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 24
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %16, %18
  %20 = load %struct.wuie_hdr*, %struct.wuie_hdr** %10, align 8
  %21 = getelementptr inbounds %struct.wuie_hdr, %struct.wuie_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %19, %23
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.whc*, %struct.whc** %11, align 8
  %28 = load i32, i32* @WUSBGENCMDSTS_MMCIE_ADD, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.wuie_hdr*, %struct.wuie_hdr** %10, align 8
  %31 = load %struct.wuie_hdr*, %struct.wuie_hdr** %10, align 8
  %32 = getelementptr inbounds %struct.wuie_hdr, %struct.wuie_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @whc_do_gencmd(%struct.whc* %27, i32 %28, i32 %29, %struct.wuie_hdr* %30, i32 %33)
  ret i32 %34
}

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @whc_do_gencmd(%struct.whc*, i32, i32, %struct.wuie_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
