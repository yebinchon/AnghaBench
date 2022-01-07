; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_wusb.c_whc_wusbhc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_wusb.c_whc_wusbhc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.whc = type { i64 }

@WUSBTIME = common dso_local global i64 0, align 8
@WUSBTIME_CHANNEL_TIME_MASK = common dso_local global i32 0, align 4
@WUSBGENCMDSTS_CHAN_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @whc_wusbhc_stop(%struct.wusbhc* %0, i32 %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.whc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %10 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %9)
  store %struct.whc* %10, %struct.whc** %5, align 8
  %11 = load %struct.whc*, %struct.whc** %5, align 8
  %12 = call i32 @pzl_stop(%struct.whc* %11)
  %13 = load %struct.whc*, %struct.whc** %5, align 8
  %14 = call i32 @asl_stop(%struct.whc* %13)
  %15 = load %struct.whc*, %struct.whc** %5, align 8
  %16 = getelementptr inbounds %struct.whc, %struct.whc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WUSBTIME, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @le_readl(i64 %19)
  %21 = load i32, i32* @WUSBTIME_CHANNEL_TIME_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 8
  %26 = shl i32 %25, 7
  %27 = add nsw i32 %23, %26
  %28 = and i32 %27, 16777215
  store i32 %28, i32* %6, align 4
  %29 = load %struct.whc*, %struct.whc** %5, align 8
  %30 = load i32, i32* @WUSBGENCMDSTS_CHAN_STOP, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @whc_do_gencmd(%struct.whc* %29, i32 %30, i32 %31, i32* null, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @msleep(i32 %36)
  br label %38

38:                                               ; preds = %35, %2
  ret void
}

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @pzl_stop(%struct.whc*) #1

declare dso_local i32 @asl_stop(%struct.whc*) #1

declare dso_local i32 @le_readl(i64) #1

declare dso_local i32 @whc_do_gencmd(%struct.whc*, i32, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
