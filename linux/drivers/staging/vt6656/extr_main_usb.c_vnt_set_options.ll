; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_set_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i64, i32, i32, i32, i32, i32, i32, i64, i64 }

@vnt_tx_buffers = common dso_local global i64 0, align 8
@CB_MIN_TX_DESC = common dso_local global i64 0, align 8
@CB_MAX_TX_DESC = common dso_local global i64 0, align 8
@TX_DESC_DEF0 = common dso_local global i64 0, align 8
@vnt_rx_buffers = common dso_local global i64 0, align 8
@CB_MIN_RX_DESC = common dso_local global i64 0, align 8
@CB_MAX_RX_DESC = common dso_local global i64 0, align 8
@RX_DESC_DEF0 = common dso_local global i64 0, align 8
@SHORT_RETRY_DEF = common dso_local global i32 0, align 4
@LONG_RETRY_DEF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@BBP_TYPE_DEF = common dso_local global i32 0, align 4
@AUTO_FB_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*)* @vnt_set_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_set_options(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %3 = load i64, i64* @vnt_tx_buffers, align 8
  %4 = load i64, i64* @CB_MIN_TX_DESC, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @vnt_tx_buffers, align 8
  %8 = load i64, i64* @CB_MAX_TX_DESC, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %1
  %11 = load i64, i64* @TX_DESC_DEF0, align 8
  %12 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %13 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %12, i32 0, i32 9
  store i64 %11, i64* %13, align 8
  br label %18

14:                                               ; preds = %6
  %15 = load i64, i64* @vnt_tx_buffers, align 8
  %16 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 9
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i64, i64* @vnt_rx_buffers, align 8
  %20 = load i64, i64* @CB_MIN_RX_DESC, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @vnt_rx_buffers, align 8
  %24 = load i64, i64* @CB_MAX_RX_DESC, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %18
  %27 = load i64, i64* @RX_DESC_DEF0, align 8
  %28 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %29 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %28, i32 0, i32 8
  store i64 %27, i64* %29, align 8
  br label %34

30:                                               ; preds = %22
  %31 = load i64, i64* @vnt_rx_buffers, align 8
  %32 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 8
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @SHORT_RETRY_DEF, align 4
  %36 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %37 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @LONG_RETRY_DEF, align 4
  %39 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %40 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %42 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @BBP_TYPE_DEF, align 4
  %45 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %46 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %48 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %51 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @AUTO_FB_0, align 4
  %53 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %54 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %56 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
