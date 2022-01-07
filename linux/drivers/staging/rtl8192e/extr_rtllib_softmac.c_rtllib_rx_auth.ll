; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_rx_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_rx_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.rtllib_rx_stats = type { i32 }

@IEEE_SOFTMAC_ASSOCIATE = common dso_local global i32 0, align 4
@RTLLIB_ASSOCIATING_AUTHENTICATING = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Received authentication response\00", align 1
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.sk_buff*, %struct.rtllib_rx_stats*)* @rtllib_rx_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_rx_auth(%struct.rtllib_device* %0, %struct.sk_buff* %1, %struct.rtllib_rx_stats* %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtllib_rx_stats*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.rtllib_rx_stats* %2, %struct.rtllib_rx_stats** %6, align 8
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IEEE_SOFTMAC_ASSOCIATE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RTLLIB_ASSOCIATING_AUTHENTICATING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IW_MODE_INFRA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %27 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @netdev_dbg(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @rtllib_rx_auth_resp(%struct.rtllib_device* %30, %struct.sk_buff* %31)
  br label %44

33:                                               ; preds = %19, %13
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IW_MODE_MASTER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @rtllib_rx_auth_rq(%struct.rtllib_device* %40, %struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %25
  br label %45

45:                                               ; preds = %44, %3
  ret i32 0
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @rtllib_rx_auth_resp(%struct.rtllib_device*, %struct.sk_buff*) #1

declare dso_local i32 @rtllib_rx_auth_rq(%struct.rtllib_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
