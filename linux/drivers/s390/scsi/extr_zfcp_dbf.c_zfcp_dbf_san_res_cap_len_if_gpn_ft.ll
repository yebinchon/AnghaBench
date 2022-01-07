; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_res_cap_len_if_gpn_ft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_res_cap_len_if_gpn_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.zfcp_fsf_ct_els* }
%struct.zfcp_fsf_ct_els = type { i64, i64, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.fc_ct_hdr = type { i64, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.fc_ns_gid_ft = type { i64, i64, i64, i64 }
%struct.fc_gpn_ft_resp = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"fsscth2\00", align 1
@FC_FID_DIR_SERV = common dso_local global i64 0, align 8
@FC_CT_REV = common dso_local global i64 0, align 8
@FC_FST_DIR = common dso_local global i64 0, align 8
@FC_NS_SUBTYPE = common dso_local global i64 0, align 8
@FC_NS_GPN_FT = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i64 0, align 8
@FC_FS_ACC = common dso_local global i32 0, align 4
@FC_CT_HDR_LEN = common dso_local global i32 0, align 4
@ZFCP_DBF_SAN_MAX_PAYLOAD = common dso_local global i32 0, align 4
@ZFCP_FC_GPN_FT_ENT_PAGE = common dso_local global i32 0, align 4
@FC_NS_FID_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.zfcp_fsf_req*, i32)* @zfcp_dbf_san_res_cap_len_if_gpn_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_dbf_san_res_cap_len_if_gpn_ft(i8* %0, %struct.zfcp_fsf_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %9 = alloca %struct.fc_ct_hdr*, align 8
  %10 = alloca %struct.fc_ns_gid_ft*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.fc_ct_hdr*, align 8
  %13 = alloca %struct.fc_gpn_ft_resp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.zfcp_fsf_req* %1, %struct.zfcp_fsf_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 0
  %19 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %18, align 8
  store %struct.zfcp_fsf_ct_els* %19, %struct.zfcp_fsf_ct_els** %8, align 8
  %20 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %8, align 8
  %21 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %20, i32 0, i32 3
  %22 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %23 = call i8* @sg_virt(%struct.scatterlist* %22)
  %24 = bitcast i8* %23 to %struct.fc_ct_hdr*
  store %struct.fc_ct_hdr* %24, %struct.fc_ct_hdr** %9, align 8
  %25 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %26 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %25, i64 1
  %27 = bitcast %struct.fc_ct_hdr* %26 to %struct.fc_ns_gid_ft*
  store %struct.fc_ns_gid_ft* %27, %struct.fc_ns_gid_ft** %10, align 8
  %28 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %8, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %28, i32 0, i32 2
  %30 = load %struct.scatterlist*, %struct.scatterlist** %29, align 8
  store %struct.scatterlist* %30, %struct.scatterlist** %11, align 8
  store i32 0, i32* %16, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @memcmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %137

34:                                               ; preds = %3
  %35 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %8, align 8
  %36 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FC_FID_DIR_SERV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %137

40:                                               ; preds = %34
  %41 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %42 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FC_CT_REV, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %137

46:                                               ; preds = %40
  %47 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %48 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %137

53:                                               ; preds = %46
  %54 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %55 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %137

60:                                               ; preds = %53
  %61 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %62 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %137

67:                                               ; preds = %60
  %68 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %69 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FC_FST_DIR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %137

73:                                               ; preds = %67
  %74 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %75 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FC_NS_SUBTYPE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %137

79:                                               ; preds = %73
  %80 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %81 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %137

84:                                               ; preds = %79
  %85 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %86 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %137

89:                                               ; preds = %84
  %90 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %91 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @FC_NS_GPN_FT, align 4
  %94 = call i64 @cpu_to_be16(i32 %93)
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %137

96:                                               ; preds = %89
  %97 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %98 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %137

101:                                              ; preds = %96
  %102 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %103 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %101
  %107 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %108 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %107, i32 0, i32 9
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %106
  %112 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %113 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %112, i32 0, i32 10
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = load %struct.fc_ns_gid_ft*, %struct.fc_ns_gid_ft** %10, align 8
  %118 = getelementptr inbounds %struct.fc_ns_gid_ft, %struct.fc_ns_gid_ft* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %116
  %122 = load %struct.fc_ns_gid_ft*, %struct.fc_ns_gid_ft** %10, align 8
  %123 = getelementptr inbounds %struct.fc_ns_gid_ft, %struct.fc_ns_gid_ft* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load %struct.fc_ns_gid_ft*, %struct.fc_ns_gid_ft** %10, align 8
  %128 = getelementptr inbounds %struct.fc_ns_gid_ft, %struct.fc_ns_gid_ft* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.fc_ns_gid_ft*, %struct.fc_ns_gid_ft** %10, align 8
  %133 = getelementptr inbounds %struct.fc_ns_gid_ft, %struct.fc_ns_gid_ft* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @FC_TYPE_FCP, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %139, label %137

137:                                              ; preds = %131, %126, %121, %116, %111, %106, %101, %96, %89, %84, %79, %73, %67, %60, %53, %46, %40, %34, %3
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %4, align 4
  br label %211

139:                                              ; preds = %131
  %140 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %141 = call i8* @sg_virt(%struct.scatterlist* %140)
  %142 = bitcast i8* %141 to %struct.fc_gpn_ft_resp*
  store %struct.fc_gpn_ft_resp* %142, %struct.fc_gpn_ft_resp** %13, align 8
  %143 = load %struct.fc_gpn_ft_resp*, %struct.fc_gpn_ft_resp** %13, align 8
  %144 = bitcast %struct.fc_gpn_ft_resp* %143 to %struct.fc_ct_hdr*
  store %struct.fc_ct_hdr* %144, %struct.fc_ct_hdr** %12, align 8
  %145 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %8, align 8
  %146 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %139
  %150 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %12, align 8
  %151 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @FC_FS_ACC, align 4
  %154 = call i64 @cpu_to_be16(i32 %153)
  %155 = icmp ne i64 %152, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %149, %139
  %157 = load i32, i32* @FC_CT_HDR_LEN, align 4
  %158 = load i32, i32* @ZFCP_DBF_SAN_MAX_PAYLOAD, align 4
  %159 = call i32 @max(i32 %157, i32 %158)
  store i32 %159, i32* %4, align 4
  br label %211

160:                                              ; preds = %149
  %161 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %162 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @be16_to_cpu(i32 %163)
  %165 = mul nsw i32 %164, 4
  %166 = sext i32 %165 to i64
  %167 = udiv i64 %166, 4
  %168 = add i64 %167, 1
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %170

170:                                              ; preds = %200, %160
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi i1 [ false, %170 ], [ %177, %174 ]
  br i1 %179, label %180, label %203

180:                                              ; preds = %178
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @ZFCP_FC_GPN_FT_ENT_PAGE, align 4
  %183 = add nsw i32 %182, 1
  %184 = srem i32 %181, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load %struct.fc_gpn_ft_resp*, %struct.fc_gpn_ft_resp** %13, align 8
  %188 = getelementptr inbounds %struct.fc_gpn_ft_resp, %struct.fc_gpn_ft_resp* %187, i32 1
  store %struct.fc_gpn_ft_resp* %188, %struct.fc_gpn_ft_resp** %13, align 8
  br label %194

189:                                              ; preds = %180
  %190 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %191 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %190, i32 1
  store %struct.scatterlist* %191, %struct.scatterlist** %11, align 8
  %192 = call i8* @sg_virt(%struct.scatterlist* %191)
  %193 = bitcast i8* %192 to %struct.fc_gpn_ft_resp*
  store %struct.fc_gpn_ft_resp* %193, %struct.fc_gpn_ft_resp** %13, align 8
  br label %194

194:                                              ; preds = %189, %186
  %195 = load %struct.fc_gpn_ft_resp*, %struct.fc_gpn_ft_resp** %13, align 8
  %196 = getelementptr inbounds %struct.fc_gpn_ft_resp, %struct.fc_gpn_ft_resp* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @FC_NS_FID_LAST, align 4
  %199 = and i32 %197, %198
  store i32 %199, i32* %16, align 4
  br label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %170

203:                                              ; preds = %178
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 4
  %208 = trunc i64 %207 to i32
  %209 = call i32 @min(i32 %204, i32 %208)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %203, %156, %137
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i8* @sg_virt(%struct.scatterlist*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
