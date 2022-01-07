; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_wusb.c_whc_bwa_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_wusb.c_whc_bwa_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.uwb_mas_bm = type { i32 }
%struct.whc = type { i32 }

@WUSBCMD_WUSBSI_MASK = common dso_local global i32 0, align 4
@WUSBGENCMDSTS_SET_MAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whc_bwa_set(%struct.wusbhc* %0, i64 %1, %struct.uwb_mas_bm* %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uwb_mas_bm*, align 8
  %7 = alloca %struct.whc*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.uwb_mas_bm* %2, %struct.uwb_mas_bm** %6, align 8
  %8 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %9 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %8)
  store %struct.whc* %9, %struct.whc** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.whc*, %struct.whc** %7, align 8
  %14 = load i32, i32* @WUSBCMD_WUSBSI_MASK, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @WUSBCMD_WUSBSI(i64 %15)
  %17 = call i32 @whc_write_wusbcmd(%struct.whc* %13, i32 %14, i32 %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load %struct.whc*, %struct.whc** %7, align 8
  %20 = load i32, i32* @WUSBGENCMDSTS_SET_MAS, align 4
  %21 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %6, align 8
  %22 = bitcast %struct.uwb_mas_bm* %21 to i8*
  %23 = call i32 @whc_do_gencmd(%struct.whc* %19, i32 %20, i32 0, i8* %22, i32 4)
  ret i32 %23
}

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @whc_write_wusbcmd(%struct.whc*, i32, i32) #1

declare dso_local i32 @WUSBCMD_WUSBSI(i64) #1

declare dso_local i32 @whc_do_gencmd(%struct.whc*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
