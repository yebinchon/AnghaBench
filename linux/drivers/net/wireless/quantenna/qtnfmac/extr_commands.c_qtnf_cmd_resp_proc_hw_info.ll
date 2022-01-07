; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_proc_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_proc_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { %struct.qtnf_hw_info }
%struct.qtnf_hw_info = type { i8*, i32, i8*, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.qlink_resp_get_hw_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlink_tlv_hdr = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"malformed TLV 0x%.2X; LEN: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"fw_version=%d, MACs map %#x, chains Tx=%u Rx=%u, capab=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [268 x i8] c"\0ABuild name:            %s\0ABuild revision:        %s\0ABuild type:            %s\0ABuild label:           %s\0ABuild timestamp:       %lu\0APlatform ID:           %lu\0AHardware ID:           %s\0ACalibration version:   %s\0AU-Boot version:        %s\0AHardware version:      0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_bus*, %struct.qlink_resp_get_hw_info*, i64)* @qtnf_cmd_resp_proc_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_cmd_resp_proc_hw_info(%struct.qtnf_bus* %0, %struct.qlink_resp_get_hw_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_bus*, align 8
  %6 = alloca %struct.qlink_resp_get_hw_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qtnf_hw_info*, align 8
  %9 = alloca %struct.qlink_tlv_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %5, align 8
  store %struct.qlink_resp_get_hw_info* %1, %struct.qlink_resp_get_hw_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %23 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %22, i32 0, i32 0
  store %struct.qtnf_hw_info* %23, %struct.qtnf_hw_info** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %24 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %25 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %28 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %30 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %33 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %35 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %39 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %41 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @le16_to_cpu(i32 %42)
  %44 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %45 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %47 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %50 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %52 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %55 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %57 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %61 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %63 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @le32_to_cpu(i32 %64)
  store i8* %65, i8** %14, align 8
  %66 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %67 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le32_to_cpu(i32 %68)
  store i8* %69, i8** %15, align 8
  %70 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %71 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @le32_to_cpu(i32 %72)
  store i8* %73, i8** %19, align 8
  %74 = load %struct.qlink_resp_get_hw_info*, %struct.qlink_resp_get_hw_info** %6, align 8
  %75 = getelementptr inbounds %struct.qlink_resp_get_hw_info, %struct.qlink_resp_get_hw_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.qlink_tlv_hdr*
  store %struct.qlink_tlv_hdr* %77, %struct.qlink_tlv_hdr** %9, align 8
  br label %78

78:                                               ; preds = %148, %3
  %79 = load i64, i64* %7, align 8
  %80 = icmp uge i64 %79, 16
  br i1 %80, label %81, label %161

81:                                               ; preds = %78
  %82 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %83 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le16_to_cpu(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %20, align 4
  %87 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %88 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @le16_to_cpu(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %21, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 16
  %95 = load i64, i64* %7, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %81
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %206

103:                                              ; preds = %81
  %104 = load i32, i32* %20, align 4
  switch i32 %104, label %147 [
    i32 134, label %105
    i32 133, label %110
    i32 132, label %115
    i32 135, label %120
    i32 130, label %125
    i32 131, label %130
    i32 128, label %135
    i32 129, label %140
  ]

105:                                              ; preds = %103
  %106 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %107 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = bitcast i32* %108 to i8*
  store i8* %109, i8** %10, align 8
  br label %148

110:                                              ; preds = %103
  %111 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %112 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to i8*
  store i8* %114, i8** %11, align 8
  br label %148

115:                                              ; preds = %103
  %116 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %117 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = bitcast i32* %118 to i8*
  store i8* %119, i8** %12, align 8
  br label %148

120:                                              ; preds = %103
  %121 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %122 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to i8*
  store i8* %124, i8** %13, align 8
  br label %148

125:                                              ; preds = %103
  %126 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %127 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = bitcast i32* %128 to i8*
  store i8* %129, i8** %16, align 8
  br label %148

130:                                              ; preds = %103
  %131 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %132 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = bitcast i32* %133 to i8*
  store i8* %134, i8** %17, align 8
  br label %148

135:                                              ; preds = %103
  %136 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %137 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = bitcast i32* %138 to i8*
  store i8* %139, i8** %18, align 8
  br label %148

140:                                              ; preds = %103
  %141 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %142 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %146 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 8
  br label %148

147:                                              ; preds = %103
  br label %148

148:                                              ; preds = %147, %140, %135, %130, %125, %120, %115, %110, %105
  %149 = load i32, i32* %21, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 %150, 16
  %152 = load i64, i64* %7, align 8
  %153 = sub i64 %152, %151
  store i64 %153, i64* %7, align 8
  %154 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %9, align 8
  %155 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = bitcast i32* %159 to %struct.qlink_tlv_hdr*
  store %struct.qlink_tlv_hdr* %160, %struct.qlink_tlv_hdr** %9, align 8
  br label %78

161:                                              ; preds = %78
  %162 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %163 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %162, i32 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %166 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %171 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %176 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  %180 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %181 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = ptrtoint i8* %182 to i64
  %184 = call i32 (i8*, i8*, i8*, i8*, i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %164, i8* %169, i8* %174, i8* %179, i64 %183)
  %185 = load i8*, i8** %10, align 8
  %186 = load i8*, i8** %11, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = load i8*, i8** %14, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = load i8*, i8** %15, align 8
  %192 = ptrtoint i8* %191 to i64
  %193 = load i8*, i8** %16, align 8
  %194 = load i8*, i8** %17, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = load i8*, i8** %19, align 8
  %197 = call i32 (i8*, i8*, i8*, i8*, i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.2, i64 0, i64 0), i8* %185, i8* %186, i8* %187, i8* %188, i64 %190, i64 %192, i8* %193, i8* %194, i8* %195, i8* %196)
  %198 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %199 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i8*, i8** %13, align 8
  %202 = call i32 @strlcpy(i32 %200, i8* %201, i32 4)
  %203 = load i8*, i8** %19, align 8
  %204 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %8, align 8
  %205 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %204, i32 0, i32 0
  store i8* %203, i8** %205, align 8
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %161, %97
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*, i8*, i8*, i64, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
