; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_unpack_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_unpack_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_connection = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i32, i32, %struct.net_device*, i64 }
%struct.netiucv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ll_header = type { i64 }

@NETIUCV_HDRLEN = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Illegal next field: %d > %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Out of memory in netiucv_unpack_skb\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_connection*, %struct.sk_buff*)* @netiucv_unpack_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netiucv_unpack_skb(%struct.iucv_connection* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.iucv_connection*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netiucv_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ll_header*, align 8
  store %struct.iucv_connection* %0, %struct.iucv_connection** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.iucv_connection*, %struct.iucv_connection** %3, align 8
  %11 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.netiucv_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.netiucv_priv* %14, %struct.netiucv_priv** %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %17 = call i32 @skb_put(%struct.sk_buff* %15, i64 %16)
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 3
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load i32, i32* @CHECKSUM_NONE, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @ETH_P_IP, align 4
  %25 = call i32 @cpu_to_be16(i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %2, %93
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ll_header*
  store %struct.ll_header* %32, %struct.ll_header** %9, align 8
  %33 = load %struct.ll_header*, %struct.ll_header** %9, align 8
  %34 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %144

38:                                               ; preds = %28
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %41 = call i32 @skb_pull(%struct.sk_buff* %39, i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.ll_header*, %struct.ll_header** %9, align 8
  %44 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.ll_header*, %struct.ll_header** %9, align 8
  %48 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %53 = load %struct.ll_header*, %struct.ll_header** %9, align 8
  %54 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i64 @skb_tailroom(%struct.sk_buff* %57)
  %59 = load %struct.ll_header*, %struct.ll_header** %9, align 8
  %60 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %38
  %64 = load i32, i32* @data, align 4
  %65 = load %struct.ll_header*, %struct.ll_header** %9, align 8
  %66 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i64 @skb_tailroom(%struct.sk_buff* %68)
  %70 = call i32 @IUCV_DBF_TEXT_(i32 %64, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %69)
  br label %144

71:                                               ; preds = %38
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.ll_header*, %struct.ll_header** %9, align 8
  %74 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @skb_put(%struct.sk_buff* %72, i64 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @skb_reset_mac_header(%struct.sk_buff* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.sk_buff* @dev_alloc_skb(i64 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %71
  %86 = load i32, i32* @data, align 4
  %87 = call i32 @IUCV_DBF_TEXT(i32 %86, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %89 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %144

93:                                               ; preds = %71
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @skb_put(%struct.sk_buff* %95, i64 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %94, i32 %99, i64 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = call i32 @skb_reset_mac_header(%struct.sk_buff* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 3
  %108 = load %struct.net_device*, %struct.net_device** %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 3
  store %struct.net_device* %108, %struct.net_device** %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %120 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.netiucv_priv*, %struct.netiucv_priv** %6, align 8
  %128 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %126
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = call i32 @netif_rx_ni(%struct.sk_buff* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load %struct.ll_header*, %struct.ll_header** %9, align 8
  %138 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @skb_pull(%struct.sk_buff* %136, i64 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %143 = call i32 @skb_put(%struct.sk_buff* %141, i64 %142)
  br label %28

144:                                              ; preds = %63, %85, %37
  ret void
}

declare dso_local %struct.netiucv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @IUCV_DBF_TEXT_(i32, i32, i8*, i64, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @IUCV_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
