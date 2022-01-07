; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_run_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_run_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32*, i32 }
%struct.sk_buff = type { i64 }

@SMALL_BUF_MAP_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_run_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_run_loopback_test(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %8 = load i32, i32* @SMALL_BUF_MAP_SIZE, align 4
  store i32 %8, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %47, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 64
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.sk_buff* @netdev_alloc_skb(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %67

23:                                               ; preds = %12
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @skb_put(%struct.sk_buff* %26, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ql_create_lb_frame(%struct.sk_buff* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ql_lb_send(%struct.sk_buff* %32, i32 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @NETDEV_TX_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @EPIPE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %67

43:                                               ; preds = %23
  %44 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %44, i32 0, i32 0
  %46 = call i32 @atomic_inc(i32* %45)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %9

50:                                               ; preds = %9
  %51 = call i32 @msleep(i32 2)
  %52 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @ql_clean_lb_rx_ring(i32* %55, i32 128)
  %57 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %57, i32 0, i32 0
  %59 = call i64 @atomic_read(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  br label %65

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 0, %64 ]
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %40, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ql_create_lb_frame(%struct.sk_buff*, i32) #1

declare dso_local i64 @ql_lb_send(%struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ql_clean_lb_rx_ring(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
