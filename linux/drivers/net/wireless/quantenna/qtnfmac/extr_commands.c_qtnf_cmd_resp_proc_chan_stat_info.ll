; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_proc_chan_stat_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_proc_chan_stat_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_chan_stats = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.qlink_chan_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.qlink_tlv_hdr = type { i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"malformed TLV 0x%.2X; LEN: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid CHANNEL_STATS entry size\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"chan(%u) try(%u) busy(%u) noise(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown TLV type: %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"malformed TLV buf; bytes left: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_chan_stats*, i32*, i64)* @qtnf_cmd_resp_proc_chan_stat_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_cmd_resp_proc_chan_stat_info(%struct.qtnf_chan_stats* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_chan_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlink_chan_stats*, align 8
  %9 = alloca %struct.qlink_tlv_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qtnf_chan_stats* %0, %struct.qtnf_chan_stats** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.qlink_tlv_hdr*
  store %struct.qlink_tlv_hdr* %14, %struct.qlink_tlv_hdr** %9, align 8
  br label %15

15:                                               ; preds = %115, %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp uge i64 %16, 16
  br i1 %17, label %18, label %126

18:                                               ; preds = %15
  %19 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %20 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @le16_to_cpu(i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le16_to_cpu(i32 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 16
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %135

42:                                               ; preds = %18
  %43 = load i32, i32* %12, align 4
  switch i32 %43, label %109 [
    i32 128, label %44
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 24
  %48 = zext i1 %47 to i32
  %49 = call i32 @unlikely(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %135

55:                                               ; preds = %44
  %56 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %57 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = bitcast i8* %59 to %struct.qlink_chan_stats*
  store %struct.qlink_chan_stats* %60, %struct.qlink_chan_stats** %8, align 8
  %61 = load %struct.qlink_chan_stats*, %struct.qlink_chan_stats** %8, align 8
  %62 = getelementptr inbounds %struct.qlink_chan_stats, %struct.qlink_chan_stats* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %66 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.qlink_chan_stats*, %struct.qlink_chan_stats** %8, align 8
  %68 = getelementptr inbounds %struct.qlink_chan_stats, %struct.qlink_chan_stats* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %72 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.qlink_chan_stats*, %struct.qlink_chan_stats** %8, align 8
  %74 = getelementptr inbounds %struct.qlink_chan_stats, %struct.qlink_chan_stats* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le32_to_cpu(i32 %75)
  %77 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %78 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.qlink_chan_stats*, %struct.qlink_chan_stats** %8, align 8
  %80 = getelementptr inbounds %struct.qlink_chan_stats, %struct.qlink_chan_stats* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %84 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.qlink_chan_stats*, %struct.qlink_chan_stats** %8, align 8
  %86 = getelementptr inbounds %struct.qlink_chan_stats, %struct.qlink_chan_stats* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %90 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.qlink_chan_stats*, %struct.qlink_chan_stats** %8, align 8
  %92 = getelementptr inbounds %struct.qlink_chan_stats, %struct.qlink_chan_stats* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %95 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %97 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %100 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %103 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.qtnf_chan_stats*, %struct.qtnf_chan_stats** %5, align 8
  %106 = getelementptr inbounds %struct.qtnf_chan_stats, %struct.qtnf_chan_stats* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %101, i8* %104, i32 %107)
  br label %115

109:                                              ; preds = %42
  %110 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %111 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @le16_to_cpu(i32 %112)
  %114 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %109, %55
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* %7, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %7, align 8
  %119 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %120 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = inttoptr i64 %124 to %struct.qlink_tlv_hdr*
  store %struct.qlink_tlv_hdr* %125, %struct.qlink_tlv_hdr** %9, align 8
  br label %15

126:                                              ; preds = %15
  %127 = load i64, i64* %7, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i64, i64* %7, align 8
  %131 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %135

134:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %129, %51, %35
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, i64, ...) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
