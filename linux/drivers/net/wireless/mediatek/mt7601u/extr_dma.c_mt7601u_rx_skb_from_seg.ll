; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_skb_from_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_skb_from_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mt7601u_dev = type { i32 }
%struct.mt7601u_rxwi = type { i32 }
%struct.page = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MT_RXINFO_L2PAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error: incorrect frame len:%u hdr:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.mt7601u_dev*, %struct.mt7601u_rxwi*, i8*, i32, i32, %struct.page*)* @mt7601u_rx_skb_from_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mt7601u_rx_skb_from_seg(%struct.mt7601u_dev* %0, %struct.mt7601u_rxwi* %1, i8* %2, i32 %3, i32 %4, %struct.page* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mt7601u_dev*, align 8
  %9 = alloca %struct.mt7601u_rxwi*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %8, align 8
  store %struct.mt7601u_rxwi* %1, %struct.mt7601u_rxwi** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.page*, %struct.page** %13, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 128, %21 ], [ %23, %22 ]
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @alloc_skb(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %14, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %122

31:                                               ; preds = %24
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %9, align 8
  %36 = call i32 @mt76_mac_process_rx(%struct.mt7601u_dev* %32, %struct.sk_buff* %33, i8* %34, %struct.mt7601u_rxwi* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %31
  br label %113

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @ieee80211_get_hdrlen_from_buf(i8* %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %113

51:                                               ; preds = %44
  %52 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %9, align 8
  %53 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MT_RXINFO_L2PAD, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @skb_put_data(%struct.sk_buff* %60, i8* %61, i32 %62)
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 2
  %66 = load i8*, i8** %10, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  store i8* %68, i8** %10, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %59, %51
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %75 = call i32 @skb_tailroom(%struct.sk_buff* %74)
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %15, align 4
  br label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 8
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i32 [ %78, %77 ], [ %81, %79 ]
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %17, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %18, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @skb_put_data(%struct.sk_buff* %87, i8* %88, i32 %89)
  %91 = load i32, i32* %17, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr i8, i8* %92, i64 %93
  store i8* %94, i8** %10, align 8
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %82
  %98 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %99 = load %struct.page*, %struct.page** %13, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load %struct.page*, %struct.page** %13, align 8
  %102 = call i32 @page_address(%struct.page* %101)
  %103 = sext i32 %102 to i64
  %104 = sub i64 0, %103
  %105 = getelementptr i8, i8* %100, i64 %104
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @skb_add_rx_frag(%struct.sk_buff* %98, i32 0, %struct.page* %99, i8* %105, i32 %106, i32 %107)
  %109 = load %struct.page*, %struct.page** %13, align 8
  %110 = call i32 @get_page(%struct.page* %109)
  br label %111

111:                                              ; preds = %97, %82
  %112 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %112, %struct.sk_buff** %7, align 8
  br label %122

113:                                              ; preds = %50, %43
  %114 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %115 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @dev_err_ratelimited(i32 %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %121 = call i32 @dev_kfree_skb(%struct.sk_buff* %120)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %122

122:                                              ; preds = %113, %111, %30
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %123
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @mt76_mac_process_rx(%struct.mt7601u_dev*, %struct.sk_buff*, i8*, %struct.mt7601u_rxwi*) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_buf(i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i8*, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
