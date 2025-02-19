; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_tkip.c_rtllib_michael_mic_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_tkip.c_rtllib_michael_mic_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32, i32 }
%struct.rtllib_tkip_data = type { i32*, i32*, i32 }
%struct.rtllib_hdr_4addr = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"Invalid packet for Michael MIC add (tailroom=%d hdr_len=%d skb->len=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8*)* @rtllib_michael_mic_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_michael_mic_add(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rtllib_tkip_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rtllib_hdr_4addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.rtllib_tkip_data*
  store %struct.rtllib_tkip_data* %12, %struct.rtllib_tkip_data** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to %struct.rtllib_hdr_4addr*
  store %struct.rtllib_hdr_4addr* %16, %struct.rtllib_hdr_4addr** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_tailroom(%struct.sk_buff* %17)
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20, %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @skb_tailroom(%struct.sk_buff* %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netdev_dbg(i32 %29, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %35)
  store i32 -1, i32* %4, align 4
  br label %93

37:                                               ; preds = %20
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %8, align 8
  %40 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @michael_mic_hdr(%struct.sk_buff* %38, i32* %41)
  %43 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %10, align 8
  %44 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = call i64 @RTLLIB_QOS_HAS_SEQ(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %37
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = getelementptr inbounds i32, i32* %55, i64 -2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 7
  %59 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %8, align 8
  %60 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 12
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %49, %37
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32* @skb_put(%struct.sk_buff* %64, i32 8)
  store i32* %65, i32** %9, align 8
  %66 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %8, align 8
  %67 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %8, align 8
  %70 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 16
  %73 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %8, align 8
  %74 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 8
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32*, i32** %9, align 8
  %89 = call i64 @michael_mic(i32 %68, i32* %72, i32* %75, i32* %81, i32 %87, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %93

92:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %91, %26
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @michael_mic_hdr(%struct.sk_buff*, i32*) #1

declare dso_local i64 @RTLLIB_QOS_HAS_SEQ(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @michael_mic(i32, i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
