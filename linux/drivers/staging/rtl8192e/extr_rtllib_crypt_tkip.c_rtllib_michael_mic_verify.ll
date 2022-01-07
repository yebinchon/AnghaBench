; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_tkip.c_rtllib_michael_mic_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_tkip.c_rtllib_michael_mic_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32, i64 }
%struct.rtllib_tkip_data = type { i32*, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.rtllib_hdr_4addr = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"Michael MIC verification failed for MSDU from %pM keyidx=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"skb->dev != NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8*)* @rtllib_michael_mic_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_michael_mic_verify(%struct.sk_buff* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rtllib_tkip_data*, align 8
  %11 = alloca [8 x i32], align 16
  %12 = alloca %struct.rtllib_hdr_4addr*, align 8
  %13 = alloca %struct.rtllib_hdr_4addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.rtllib_tkip_data*
  store %struct.rtllib_tkip_data* %15, %struct.rtllib_tkip_data** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.rtllib_hdr_4addr*
  store %struct.rtllib_hdr_4addr* %19, %struct.rtllib_hdr_4addr** %12, align 8
  %20 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %21 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %155

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %28 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @michael_mic_hdr(%struct.sk_buff* %26, i32* %29)
  %31 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %12, align 8
  %32 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = call i64 @RTLLIB_QOS_HAS_SEQ(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %25
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = getelementptr inbounds i32, i32* %43, i64 -2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 7
  %47 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %48 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 12
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %37, %25
  %52 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %53 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %56 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 24
  %59 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %60 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 8
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %71, %72
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %75 = call i64 @michael_mic(i32 %54, i32* %58, i32* %61, i32* %67, i32 %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %155

78:                                               ; preds = %51
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = getelementptr inbounds i32, i32* %87, i64 -8
  %89 = call i64 @memcmp(i32* %79, i32* %88, i32 8)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %138

91:                                               ; preds = %78
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = bitcast i32* %94 to %struct.rtllib_hdr_4addr*
  store %struct.rtllib_hdr_4addr* %95, %struct.rtllib_hdr_4addr** %13, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %13, align 8
  %100 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i64, i8*, i32, ...) @netdev_dbg(i64 %98, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = getelementptr inbounds i32, i32* %115, i64 -8
  %117 = call i64 @memcmp(i32* %107, i32* %116, i32 8)
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 (i64, i8*, i32, ...) @netdev_dbg(i64 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %91
  %126 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %13, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @rtllib_michael_mic_failure(i64 %129, %struct.rtllib_hdr_4addr* %130, i32 %131)
  br label %133

133:                                              ; preds = %125, %91
  %134 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %135 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  store i32 -1, i32* %5, align 4
  br label %155

138:                                              ; preds = %78
  %139 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %140 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %143 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %145 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %10, align 8
  %148 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 8
  %154 = call i32 @skb_trim(%struct.sk_buff* %149, i32 %153)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %138, %133, %77, %24
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @michael_mic_hdr(%struct.sk_buff*, i32*) #1

declare dso_local i64 @RTLLIB_QOS_HAS_SEQ(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @michael_mic(i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @netdev_dbg(i64, i8*, i32, ...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @rtllib_michael_mic_failure(i64, %struct.rtllib_hdr_4addr*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
