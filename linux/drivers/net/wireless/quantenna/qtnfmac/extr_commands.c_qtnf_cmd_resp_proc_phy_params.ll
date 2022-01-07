; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_proc_phy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_proc_phy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, %struct.qtnf_mac_info }
%struct.qtnf_mac_info = type { i32, i32, i32, i8*, i8* }
%struct.qlink_tlv_frag_rts_thr = type { i32 }
%struct.qlink_tlv_rlimit = type { i32 }
%struct.qlink_tlv_cclass = type { i32 }
%struct.qlink_tlv_hdr = type { i64, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"MAC%u: malformed TLV 0x%.2X; LEN: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"MAC%u: Unknown TLV type: %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"MAC%u: malformed TLV buf; bytes left: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_wmac*, i32*, i64)* @qtnf_cmd_resp_proc_phy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_cmd_resp_proc_phy_params(%struct.qtnf_wmac* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_wmac*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qtnf_mac_info*, align 8
  %9 = alloca %struct.qlink_tlv_frag_rts_thr*, align 8
  %10 = alloca %struct.qlink_tlv_rlimit*, align 8
  %11 = alloca %struct.qlink_tlv_cclass*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.qlink_tlv_hdr*, align 8
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %17 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %16, i32 0, i32 1
  store %struct.qtnf_mac_info* %17, %struct.qtnf_mac_info** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.qlink_tlv_hdr*
  store %struct.qlink_tlv_hdr* %19, %struct.qlink_tlv_hdr** %15, align 8
  br label %20

20:                                               ; preds = %106, %3
  %21 = load i64, i64* %7, align 8
  %22 = icmp uge i64 %21, 16
  br i1 %22, label %23, label %117

23:                                               ; preds = %20
  %24 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %25 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %29 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 16
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %23
  %39 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %40 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %13, align 4
  %45 = call i32 (i8*, i32, i64, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %43, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %129

48:                                               ; preds = %23
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %97 [
    i32 131, label %50
    i32 129, label %60
    i32 128, label %70
    i32 130, label %79
    i32 132, label %88
  ]

50:                                               ; preds = %48
  %51 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %52 = bitcast %struct.qlink_tlv_hdr* %51 to i8*
  %53 = bitcast i8* %52 to %struct.qlink_tlv_frag_rts_thr*
  store %struct.qlink_tlv_frag_rts_thr* %53, %struct.qlink_tlv_frag_rts_thr** %9, align 8
  %54 = load %struct.qlink_tlv_frag_rts_thr*, %struct.qlink_tlv_frag_rts_thr** %9, align 8
  %55 = getelementptr inbounds %struct.qlink_tlv_frag_rts_thr, %struct.qlink_tlv_frag_rts_thr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %8, align 8
  %59 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  br label %106

60:                                               ; preds = %48
  %61 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %62 = bitcast %struct.qlink_tlv_hdr* %61 to i8*
  %63 = bitcast i8* %62 to %struct.qlink_tlv_frag_rts_thr*
  store %struct.qlink_tlv_frag_rts_thr* %63, %struct.qlink_tlv_frag_rts_thr** %9, align 8
  %64 = load %struct.qlink_tlv_frag_rts_thr*, %struct.qlink_tlv_frag_rts_thr** %9, align 8
  %65 = getelementptr inbounds %struct.qlink_tlv_frag_rts_thr, %struct.qlink_tlv_frag_rts_thr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le32_to_cpu(i32 %66)
  %68 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %8, align 8
  %69 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %106

70:                                               ; preds = %48
  %71 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %72 = bitcast %struct.qlink_tlv_hdr* %71 to i8*
  %73 = bitcast i8* %72 to %struct.qlink_tlv_rlimit*
  store %struct.qlink_tlv_rlimit* %73, %struct.qlink_tlv_rlimit** %10, align 8
  %74 = load %struct.qlink_tlv_rlimit*, %struct.qlink_tlv_rlimit** %10, align 8
  %75 = getelementptr inbounds %struct.qlink_tlv_rlimit, %struct.qlink_tlv_rlimit* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %8, align 8
  %78 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %106

79:                                               ; preds = %48
  %80 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %81 = bitcast %struct.qlink_tlv_hdr* %80 to i8*
  %82 = bitcast i8* %81 to %struct.qlink_tlv_rlimit*
  store %struct.qlink_tlv_rlimit* %82, %struct.qlink_tlv_rlimit** %10, align 8
  %83 = load %struct.qlink_tlv_rlimit*, %struct.qlink_tlv_rlimit** %10, align 8
  %84 = getelementptr inbounds %struct.qlink_tlv_rlimit, %struct.qlink_tlv_rlimit* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %8, align 8
  %87 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %106

88:                                               ; preds = %48
  %89 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %90 = bitcast %struct.qlink_tlv_hdr* %89 to i8*
  %91 = bitcast i8* %90 to %struct.qlink_tlv_cclass*
  store %struct.qlink_tlv_cclass* %91, %struct.qlink_tlv_cclass** %11, align 8
  %92 = load %struct.qlink_tlv_cclass*, %struct.qlink_tlv_cclass** %11, align 8
  %93 = getelementptr inbounds %struct.qlink_tlv_cclass, %struct.qlink_tlv_cclass* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %8, align 8
  %96 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %106

97:                                               ; preds = %48
  %98 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %99 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %102 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @le16_to_cpu(i32 %103)
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %97, %88, %79, %70, %60, %50
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %7, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %7, align 8
  %110 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %15, align 8
  %111 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = inttoptr i64 %115 to %struct.qlink_tlv_hdr*
  store %struct.qlink_tlv_hdr* %116, %struct.qlink_tlv_hdr** %15, align 8
  br label %20

117:                                              ; preds = %20
  %118 = load i64, i64* %7, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %122 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 (i8*, i32, i64, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %123, i64 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %120, %38
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, ...) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
