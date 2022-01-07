; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_frmw_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_frmw_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"netif_rx ret value is: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wilc_frmw_to_host(%struct.wilc* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.wilc_vif*, align 8
  store %struct.wilc* %0, %struct.wilc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %15 = load %struct.wilc*, %struct.wilc** %5, align 8
  %16 = icmp ne %struct.wilc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %74

18:                                               ; preds = %4
  %19 = load %struct.wilc*, %struct.wilc** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.net_device* @get_if_handler(%struct.wilc* %19, i8* %20)
  store %struct.net_device* %21, %struct.net_device** %13, align 8
  %22 = load %struct.net_device*, %struct.net_device** %13, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %74

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %6, align 8
  %30 = load %struct.net_device*, %struct.net_device** %13, align 8
  %31 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %30)
  store %struct.wilc_vif* %31, %struct.wilc_vif** %14, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.sk_buff* @dev_alloc_skb(i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %12, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %74

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %13, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 2
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @skb_put_data(%struct.sk_buff* %46, i8* %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = load %struct.net_device*, %struct.net_device** %13, align 8
  %52 = call i32 @eth_type_trans(%struct.sk_buff* %50, %struct.net_device* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.wilc_vif*, %struct.wilc_vif** %14, align 8
  %56 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.wilc_vif*, %struct.wilc_vif** %14, align 8
  %62 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = call i32 @netif_rx(%struct.sk_buff* %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.net_device*, %struct.net_device** %13, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @netdev_dbg(%struct.net_device* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %17, %24, %41, %42, %25
  ret void
}

declare dso_local %struct.net_device* @get_if_handler(%struct.wilc*, i8*) #1

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
