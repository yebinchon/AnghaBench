; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_comp_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_comp_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i8*, i32, i64, i32 }
%struct.net_dev_context = type { %struct.net_device*, i64, %struct.TYPE_3__ }
%struct.net_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }

@EIO = common dso_local global i32 0, align 4
@MDP_HDR_LEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@MEP_HDR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"drop packet: no memory for skb\0A\00", align 1
@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbo*)* @comp_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_rx_data(%struct.mbo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_dev_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mbo* %0, %struct.mbo** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.mbo*, %struct.mbo** %3, align 8
  %13 = getelementptr inbounds %struct.mbo, %struct.mbo* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.mbo*, %struct.mbo** %3, align 8
  %16 = getelementptr inbounds %struct.mbo, %struct.mbo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.mbo*, %struct.mbo** %3, align 8
  %19 = getelementptr inbounds %struct.mbo, %struct.mbo* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.net_dev_context* @get_net_dev_hold(i32 %20)
  store %struct.net_dev_context* %21, %struct.net_dev_context** %5, align 8
  %22 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %23 = icmp ne %struct.net_dev_context* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %178

27:                                               ; preds = %1
  %28 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %29 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mbo*, %struct.mbo** %3, align 8
  %33 = getelementptr inbounds %struct.mbo, %struct.mbo* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %172

39:                                               ; preds = %27
  %40 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %41 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %40, i32 0, i32 0
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  store %struct.net_device* %42, %struct.net_device** %9, align 8
  %43 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %44 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @pms_is_mamac(i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %172

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @MDP_HDR_LEN, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = mul nsw i32 2, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = add nsw i64 %63, 2
  %65 = call %struct.sk_buff* @dev_alloc_skb(i64 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %8, align 8
  br label %80

66:                                               ; preds = %39
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @PMS_IS_MEP(i8* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %172

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @MEP_HDR_LEN, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call %struct.sk_buff* @dev_alloc_skb(i64 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %8, align 8
  br label %80

80:                                               ; preds = %74, %55
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load %struct.net_device*, %struct.net_device** %9, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = call i32 @pr_err_once(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %169

90:                                               ; preds = %80
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 2
  store %struct.net_device* %91, %struct.net_device** %93, align 8
  %94 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %95 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %90
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load i32, i32* @ETH_ALEN, align 4
  %101 = call i32 @skb_put(%struct.sk_buff* %99, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %9, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ether_addr_copy(i32 %101, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %106, i32* %4, i32 4)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  %111 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %108, i8* %110, i32 2)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 10
  %115 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %112, i8* %114, i32 2)
  %116 = load i64, i64* @MDP_HDR_LEN, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %118, i8** %6, align 8
  %119 = load i64, i64* @MDP_HDR_LEN, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %7, align 4
  br label %133

124:                                              ; preds = %90
  %125 = load i64, i64* @MEP_HDR_LEN, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %127, i8** %6, align 8
  %128 = load i64, i64* @MEP_HDR_LEN, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %124, %98
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (%struct.sk_buff*, ...) @skb_put_data(%struct.sk_buff* %134, i8* %135, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %139 = load %struct.net_device*, %struct.net_device** %9, align 8
  %140 = call i32 @eth_type_trans(%struct.sk_buff* %138, %struct.net_device* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %10, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = call i64 @netif_rx(%struct.sk_buff* %146)
  %148 = load i64, i64* @NET_RX_SUCCESS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %133
  %151 = load %struct.net_device*, %struct.net_device** %9, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.net_device*, %struct.net_device** %9, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add i32 %160, %156
  store i32 %161, i32* %159, align 4
  br label %168

162:                                              ; preds = %133
  %163 = load %struct.net_device*, %struct.net_device** %9, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %162, %150
  br label %169

169:                                              ; preds = %168, %83
  %170 = load %struct.mbo*, %struct.mbo** %3, align 8
  %171 = call i32 @most_put_mbo(%struct.mbo* %170)
  br label %172

172:                                              ; preds = %169, %71, %52, %36
  %173 = load %struct.net_dev_context*, %struct.net_dev_context** %5, align 8
  %174 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %173, i32 0, i32 0
  %175 = load %struct.net_device*, %struct.net_device** %174, align 8
  %176 = call i32 @dev_put(%struct.net_device* %175)
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %172, %24
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.net_dev_context* @get_net_dev_hold(i32) #1

declare dso_local i32 @pms_is_mamac(i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @PMS_IS_MEP(i8*, i32) #1

declare dso_local i32 @pr_err_once(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, ...) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @most_put_mbo(%struct.mbo*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
