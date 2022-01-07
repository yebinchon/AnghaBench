; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_GetPhyRxPktCRC32Error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_GetPhyRxPktCRC32Error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@OFDM_MPDU_FAIL_BIT = common dso_local global i32 0, align 4
@CCK_MPDU_FAIL_BIT = common dso_local global i32 0, align 4
@HT_MPDU_FAIL_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @r8712_GetPhyRxPktCRC32Error(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %6 = load %struct._adapter*, %struct._adapter** %2, align 8
  %7 = load i32, i32* @OFDM_MPDU_FAIL_BIT, align 4
  %8 = call i64 @GetPhyRxPktCounts(%struct._adapter* %6, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct._adapter*, %struct._adapter** %2, align 8
  %10 = load i32, i32* @CCK_MPDU_FAIL_BIT, align 4
  %11 = call i64 @GetPhyRxPktCounts(%struct._adapter* %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct._adapter*, %struct._adapter** %2, align 8
  %13 = load i32, i32* @HT_MPDU_FAIL_BIT, align 4
  %14 = call i64 @GetPhyRxPktCounts(%struct._adapter* %12, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %17, %18
  ret i64 %19
}

declare dso_local i64 @GetPhyRxPktCounts(%struct._adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
