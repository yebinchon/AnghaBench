; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_classify_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_classify_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qtnf_bus = type { i64, %struct.qtnf_wmac** }
%struct.qtnf_wmac = type { %struct.qtnf_vif* }
%struct.qtnf_vif = type { %struct.net_device*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.qtnf_frame_meta_info = type { i64, i64, i64, i64 }

@QTNF_FW_STATE_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid magic 0x%x:0x%x\0A\00", align 1
@QTNF_MAX_MAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid mac(%u)\0A\00", align 1
@QTNF_MAX_INTF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid vif(%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"mac(%d) does not exist\0A\00", align 1
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"vif(%u) does not exists\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"netdev for wlan%u.%u does not exists\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @qtnf_classify_skb(%struct.qtnf_bus* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qtnf_frame_meta_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.qtnf_wmac*, align 8
  %9 = alloca %struct.qtnf_vif*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* null, %struct.net_device** %7, align 8
  %10 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %11 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QTNF_FW_STATE_RUNNING, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %137

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @skb_tail_pointer(%struct.sk_buff* %20)
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 32
  %24 = inttoptr i64 %23 to %struct.qtnf_frame_meta_info*
  store %struct.qtnf_frame_meta_info* %24, %struct.qtnf_frame_meta_info** %6, align 8
  %25 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %26 = call i32 @qtnf_is_frame_meta_magic_valid(%struct.qtnf_frame_meta_info* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %34 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %37 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, i64, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %38)
  br label %135

40:                                               ; preds = %19
  %41 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %42 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QTNF_MAX_MAC, align 8
  %45 = icmp uge i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %51 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i64, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %135

54:                                               ; preds = %40
  %55 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %56 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @QTNF_MAX_INTF, align 8
  %59 = icmp uge i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %65 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i64, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  br label %135

68:                                               ; preds = %54
  %69 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %70 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %69, i32 0, i32 1
  %71 = load %struct.qtnf_wmac**, %struct.qtnf_wmac*** %70, align 8
  %72 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %73 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.qtnf_wmac*, %struct.qtnf_wmac** %71, i64 %74
  %76 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %75, align 8
  store %struct.qtnf_wmac* %76, %struct.qtnf_wmac** %8, align 8
  %77 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %8, align 8
  %78 = icmp ne %struct.qtnf_wmac* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %68
  %84 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %85 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, i64, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  br label %135

88:                                               ; preds = %68
  %89 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %8, align 8
  %90 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %89, i32 0, i32 0
  %91 = load %struct.qtnf_vif*, %struct.qtnf_vif** %90, align 8
  %92 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %93 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %91, i64 %94
  store %struct.qtnf_vif* %95, %struct.qtnf_vif** %9, align 8
  %96 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %97 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %88
  %106 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %107 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, i64, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %108)
  br label %135

110:                                              ; preds = %88
  %111 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %112 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %111, i32 0, i32 0
  %113 = load %struct.net_device*, %struct.net_device** %112, align 8
  store %struct.net_device* %113, %struct.net_device** %7, align 8
  %114 = load %struct.net_device*, %struct.net_device** %7, align 8
  %115 = icmp ne %struct.net_device* %114, null
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %110
  %121 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %122 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.qtnf_frame_meta_info*, %struct.qtnf_frame_meta_info** %6, align 8
  %125 = getelementptr inbounds %struct.qtnf_frame_meta_info, %struct.qtnf_frame_meta_info* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i8*, i64, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %123, i64 %126)
  br label %135

128:                                              ; preds = %110
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub i64 %132, 32
  %134 = call i32 @__skb_trim(%struct.sk_buff* %129, i64 %133)
  br label %135

135:                                              ; preds = %128, %120, %105, %83, %63, %49, %32
  %136 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %136, %struct.net_device** %3, align 8
  br label %137

137:                                              ; preds = %135, %18
  %138 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %138
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @qtnf_is_frame_meta_magic_valid(%struct.qtnf_frame_meta_info*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i64, ...) #1

declare dso_local i32 @__skb_trim(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
