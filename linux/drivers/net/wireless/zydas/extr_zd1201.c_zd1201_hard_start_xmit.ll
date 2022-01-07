; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.zd1201 = type { i8*, %struct.urb*, i32, i32, i64, i32 }
%struct.urb = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@zd1201_usbtx = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @zd1201_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.zd1201*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.urb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.zd1201* @netdev_priv(%struct.net_device* %12)
  store %struct.zd1201* %13, %struct.zd1201** %6, align 8
  %14 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %15 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %18 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %17, i32 0, i32 1
  %19 = load %struct.urb*, %struct.urb** %18, align 8
  store %struct.urb* %19, %struct.urb** %11, align 8
  %20 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %21 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %26 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24, %2
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  %37 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %168

38:                                               ; preds = %24
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @netif_stop_queue(%struct.net_device* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = srem i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 -86, i8* %54, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 -86, i8* %56, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 3, i8* %58, align 1
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  store i8 0, i8* %64, align 1
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 6
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 12
  %72 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %65, i32 12, i8* %67, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %52
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 12
  %81 = add nsw i32 %80, 6
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %76, i64 %82
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %75, %52
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 -12
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %85, i8* %96, i32 12)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 12
  %102 = add nsw i32 %101, 6
  %103 = call i32 @htons(i32 %102)
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 6
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %104, i64 %111
  %113 = bitcast i8* %112 to i32*
  store i32 %103, i32* %113, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load %struct.urb*, %struct.urb** %11, align 8
  %120 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %121 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %124 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %127 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @usb_sndbulkpipe(i32 %125, i32 %128)
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @zd1201_usbtx, align 4
  %133 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %134 = call i32 @usb_fill_bulk_urb(%struct.urb* %119, i32 %122, i32 %129, i8* %130, i32 %131, i32 %132, %struct.zd1201* %133)
  %135 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %136 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %135, i32 0, i32 1
  %137 = load %struct.urb*, %struct.urb** %136, align 8
  %138 = load i32, i32* @GFP_ATOMIC, align 4
  %139 = call i32 @usb_submit_urb(%struct.urb* %137, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %84
  %143 = load %struct.net_device*, %struct.net_device** %5, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = call i32 @netif_start_queue(%struct.net_device* %148)
  br label %164

150:                                              ; preds = %84
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.net_device*, %struct.net_device** %5, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %150, %142
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = call i32 @kfree_skb(%struct.sk_buff* %165)
  %167 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %29
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.zd1201*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
