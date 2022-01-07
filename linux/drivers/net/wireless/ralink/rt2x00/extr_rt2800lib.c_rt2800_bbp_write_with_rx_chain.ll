; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_bbp_write_with_rx_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_bbp_write_with_rx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BBP27_RX_CHAIN_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32, i64)* @rt2800_bbp_write_with_rx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %18 = call i64 @rt2800_bbp_read(%struct.rt2x00_dev* %17, i32 27)
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* @BBP27_RX_CHAIN_SEL, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @rt2x00_set_field8(i64* %8, i32 %19, i64 %20)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %22, i32 27, i64 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %25, i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %16
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %9

32:                                               ; preds = %9
  ret void
}

declare dso_local i64 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i64*, i32, i64) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
