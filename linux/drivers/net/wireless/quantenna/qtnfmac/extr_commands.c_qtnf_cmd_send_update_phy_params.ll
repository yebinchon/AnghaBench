; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_update_phy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_update_phy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, i32 }
%struct.wiphy = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@QLINK_CMD_PHY_PARAMS_SET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WIPHY_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@QTN_TLV_ID_FRAG_THRESH = common dso_local global i32 0, align 4
@WIPHY_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@QTN_TLV_ID_RTS_THRESH = common dso_local global i32 0, align 4
@WIPHY_PARAM_COVERAGE_CLASS = common dso_local global i32 0, align 4
@QTN_TLV_ID_COVERAGE_CLASS = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@QTN_TLV_ID_LRETRY_LIMIT = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@QTN_TLV_ID_SRETRY_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_update_phy_params(%struct.qtnf_wmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_wmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %10 = call %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac* %9)
  store %struct.wiphy* %10, %struct.wiphy** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %12 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @QLINK_CMD_PHY_PARAMS_SET, align 4
  %15 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %13, i32 0, i32 %14, i32 4)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %101

21:                                               ; preds = %2
  %22 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %23 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @qtnf_bus_lock(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* @QTN_TLV_ID_FRAG_THRESH, align 4
  %33 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %34 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qtnf_cmd_skb_put_tlv_u32(%struct.sk_buff* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i32, i32* @QTN_TLV_ID_RTS_THRESH, align 4
  %45 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %46 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @qtnf_cmd_skb_put_tlv_u32(%struct.sk_buff* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @WIPHY_PARAM_COVERAGE_CLASS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* @QTN_TLV_ID_COVERAGE_CLASS, align 4
  %57 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %58 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @qtnf_cmd_skb_put_tlv_u8(%struct.sk_buff* %55, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load i32, i32* @QTN_TLV_ID_LRETRY_LIMIT, align 4
  %69 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %70 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @qtnf_cmd_skb_put_tlv_u8(%struct.sk_buff* %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = load i32, i32* @QTN_TLV_ID_SRETRY_LIMIT, align 4
  %81 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %82 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @qtnf_cmd_skb_put_tlv_u8(%struct.sk_buff* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %87 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = call i32 @qtnf_cmd_send(i32 %88, %struct.sk_buff* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %95

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %93
  %96 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %97 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @qtnf_bus_unlock(i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %18
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac*) #1

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @qtnf_cmd_skb_put_tlv_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @qtnf_cmd_skb_put_tlv_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
