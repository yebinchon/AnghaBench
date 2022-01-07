; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_rx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_rx_filter = type { i64, i64, i64, i64 }

@WSM_MIB_ID_RX_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_rx_filter*)* @wsm_set_rx_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_set_rx_filter(%struct.cw1200_common* %0, %struct.wsm_rx_filter* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_rx_filter*, align 8
  %5 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_rx_filter* %1, %struct.wsm_rx_filter** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.wsm_rx_filter*, %struct.wsm_rx_filter** %4, align 8
  %7 = getelementptr inbounds %struct.wsm_rx_filter, %struct.wsm_rx_filter* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = call i32 @BIT(i32 0)
  %12 = call i32 @__cpu_to_le32(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.wsm_rx_filter*, %struct.wsm_rx_filter** %4, align 8
  %17 = getelementptr inbounds %struct.wsm_rx_filter, %struct.wsm_rx_filter* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = call i32 @BIT(i32 1)
  %22 = call i32 @__cpu_to_le32(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.wsm_rx_filter*, %struct.wsm_rx_filter** %4, align 8
  %27 = getelementptr inbounds %struct.wsm_rx_filter, %struct.wsm_rx_filter* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = call i32 @BIT(i32 2)
  %32 = call i32 @__cpu_to_le32(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.wsm_rx_filter*, %struct.wsm_rx_filter** %4, align 8
  %37 = getelementptr inbounds %struct.wsm_rx_filter, %struct.wsm_rx_filter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = call i32 @BIT(i32 3)
  %42 = call i32 @__cpu_to_le32(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %47 = load i32, i32* @WSM_MIB_ID_RX_FILTER, align 4
  %48 = call i32 @wsm_write_mib(%struct.cw1200_common* %46, i32 %47, i32* %5, i32 4)
  ret i32 %48
}

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wsm_write_mib(%struct.cw1200_common*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
