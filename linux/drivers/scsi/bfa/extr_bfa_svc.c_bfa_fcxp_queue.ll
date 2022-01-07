; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32, i32, i32, i32, i32, i32 (i32, i32)*, i32 (i32, i32)*, i32, %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_req_info_s, %struct.TYPE_3__* }
%struct.bfa_fcxp_rsp_info_s = type { i64, i32 }
%struct.bfa_fcxp_req_info_s = type { i64, i32, i32, i32, i32, i32, %struct.bfa_rport_s* }
%struct.bfa_rport_s = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }
%struct.bfi_fcxp_send_req_s = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i32, i8* }

@BFI_MC_FCXP = common dso_local global i32 0, align 4
@BFI_FCXP_H2I_SEND_REQ = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@BFA_FCXP_MAX_LBUF_SZ = common dso_local global i64 0, align 8
@BFA_REQQ_FCXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcxp_s*, %struct.bfi_fcxp_send_req_s*)* @bfa_fcxp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcxp_queue(%struct.bfa_fcxp_s* %0, %struct.bfi_fcxp_send_req_s* %1) #0 {
  %3 = alloca %struct.bfa_fcxp_s*, align 8
  %4 = alloca %struct.bfi_fcxp_send_req_s*, align 8
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca %struct.bfa_fcxp_req_info_s*, align 8
  %7 = alloca %struct.bfa_fcxp_rsp_info_s*, align 8
  %8 = alloca %struct.bfa_rport_s*, align 8
  store %struct.bfa_fcxp_s* %0, %struct.bfa_fcxp_s** %3, align 8
  store %struct.bfi_fcxp_send_req_s* %1, %struct.bfi_fcxp_send_req_s** %4, align 8
  %9 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %9, i32 0, i32 10
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.bfa_s*, %struct.bfa_s** %12, align 8
  store %struct.bfa_s* %13, %struct.bfa_s** %5, align 8
  %14 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %14, i32 0, i32 9
  store %struct.bfa_fcxp_req_info_s* %15, %struct.bfa_fcxp_req_info_s** %6, align 8
  %16 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %16, i32 0, i32 8
  store %struct.bfa_fcxp_rsp_info_s* %17, %struct.bfa_fcxp_rsp_info_s** %7, align 8
  %18 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %19 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %18, i32 0, i32 6
  %20 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %19, align 8
  store %struct.bfa_rport_s* %20, %struct.bfa_rport_s** %8, align 8
  %21 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BFI_MC_FCXP, align 4
  %25 = load i32, i32* @BFI_FCXP_H2I_SEND_REQ, align 4
  %26 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %27 = call i32 @bfa_fn_lpu(%struct.bfa_s* %26)
  %28 = call i32 @bfi_h2i_set(i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_be16(i32 %31)
  %33 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %33, i32 0, i32 13
  store i8* %32, i8** %34, align 8
  %35 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %8, align 8
  %36 = icmp ne %struct.bfa_rport_s* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %2
  %38 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %8, align 8
  %39 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %8, align 8
  %44 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_be16(i32 %46)
  %48 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %48, i32 0, i32 11
  store i8* %47, i8** %49, align 8
  %50 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %51 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %50, i32 0, i32 11
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %37
  %55 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %56 = call i8* @cpu_to_be16(i32 %55)
  %57 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %58 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %57, i32 0, i32 11
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %54, %37
  br label %67

60:                                               ; preds = %2
  %61 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %62 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %61, i32 0, i32 12
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %64 = call i8* @cpu_to_be16(i32 %63)
  %65 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %66 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %65, i32 0, i32 11
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %60, %59
  %68 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %69 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @cpu_to_be16(i32 %70)
  %72 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %73 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %72, i32 0, i32 10
  store i8* %71, i8** %73, align 8
  %74 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %75 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %76 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bfa_lps_get_fwtag(%struct.bfa_s* %74, i32 %77)
  %79 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %80 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %82 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %85 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.bfa_fcxp_rsp_info_s*, %struct.bfa_fcxp_rsp_info_s** %7, align 8
  %87 = getelementptr inbounds %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_rsp_info_s* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %90 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  %91 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %92 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %95 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %97 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %100 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %102 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i8* @cpu_to_be32(i64 %103)
  %105 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %106 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load %struct.bfa_fcxp_rsp_info_s*, %struct.bfa_fcxp_rsp_info_s** %7, align 8
  %108 = getelementptr inbounds %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_rsp_info_s* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i8* @cpu_to_be32(i64 %109)
  %111 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %112 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %114 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %126

117:                                              ; preds = %67
  %118 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %119 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %118, i32 0, i32 2
  %120 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %121 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %124 = call i32 @BFA_FCXP_REQ_PLD_PA(%struct.bfa_fcxp_s* %123)
  %125 = call i32 @bfa_alen_set(i32* %119, i64 %122, i32 %124)
  br label %162

126:                                              ; preds = %67
  %127 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %128 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %133 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 1
  %136 = zext i1 %135 to i32
  %137 = call i32 @WARN_ON(i32 %136)
  %138 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %139 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %138, i32 0, i32 2
  %140 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %141 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %144 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %143, i32 0, i32 6
  %145 = load i32 (i32, i32)*, i32 (i32, i32)** %144, align 8
  %146 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %147 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 %145(i32 %148, i32 0)
  %150 = call i32 @bfa_alen_set(i32* %139, i64 %142, i32 %149)
  br label %161

151:                                              ; preds = %126
  %152 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %153 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @WARN_ON(i32 %156)
  %158 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %159 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %158, i32 0, i32 1
  %160 = call i32 @bfa_alen_set(i32* %159, i64 0, i32 0)
  br label %161

161:                                              ; preds = %151, %131
  br label %162

162:                                              ; preds = %161, %117
  %163 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %164 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = load %struct.bfa_fcxp_rsp_info_s*, %struct.bfa_fcxp_rsp_info_s** %7, align 8
  %169 = getelementptr inbounds %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_rsp_info_s* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @BFA_FCXP_MAX_LBUF_SZ, align 8
  %172 = icmp sgt i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @WARN_ON(i32 %173)
  %175 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %176 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %175, i32 0, i32 1
  %177 = load %struct.bfa_fcxp_rsp_info_s*, %struct.bfa_fcxp_rsp_info_s** %7, align 8
  %178 = getelementptr inbounds %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_rsp_info_s* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %181 = call i32 @BFA_FCXP_RSP_PLD_PA(%struct.bfa_fcxp_s* %180)
  %182 = call i32 @bfa_alen_set(i32* %176, i64 %179, i32 %181)
  br label %219

183:                                              ; preds = %162
  %184 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %185 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %183
  %189 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %190 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 1
  %193 = zext i1 %192 to i32
  %194 = call i32 @WARN_ON(i32 %193)
  %195 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %196 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %195, i32 0, i32 1
  %197 = load %struct.bfa_fcxp_rsp_info_s*, %struct.bfa_fcxp_rsp_info_s** %7, align 8
  %198 = getelementptr inbounds %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_rsp_info_s* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %201 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %200, i32 0, i32 5
  %202 = load i32 (i32, i32)*, i32 (i32, i32)** %201, align 8
  %203 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %204 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 %202(i32 %205, i32 0)
  %207 = call i32 @bfa_alen_set(i32* %196, i64 %199, i32 %206)
  br label %218

208:                                              ; preds = %183
  %209 = load %struct.bfa_fcxp_rsp_info_s*, %struct.bfa_fcxp_rsp_info_s** %7, align 8
  %210 = getelementptr inbounds %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_rsp_info_s* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = call i32 @WARN_ON(i32 %213)
  %215 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %216 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %215, i32 0, i32 1
  %217 = call i32 @bfa_alen_set(i32* %216, i64 0, i32 0)
  br label %218

218:                                              ; preds = %208, %188
  br label %219

219:                                              ; preds = %218, %167
  %220 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %221 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %222 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %3, align 8
  %225 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %6, align 8
  %226 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %225, i32 0, i32 1
  %227 = call i32 @hal_fcxp_tx_plog(%struct.bfa_s* %220, i64 %223, %struct.bfa_fcxp_s* %224, i32* %226)
  %228 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %229 = load i32, i32* @BFA_REQQ_FCXP, align 4
  %230 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %4, align 8
  %231 = getelementptr inbounds %struct.bfi_fcxp_send_req_s, %struct.bfi_fcxp_send_req_s* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @bfa_reqq_produce(%struct.bfa_s* %228, i32 %229, i32 %232)
  %234 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %235 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %236 = load i32, i32* @BFA_REQQ_FCXP, align 4
  %237 = call i32 @bfa_reqq_pi(%struct.bfa_s* %235, i32 %236)
  %238 = call i32 @bfa_trc(%struct.bfa_s* %234, i32 %237)
  %239 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %240 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %241 = load i32, i32* @BFA_REQQ_FCXP, align 4
  %242 = call i32 @bfa_reqq_ci(%struct.bfa_s* %240, i32 %241)
  %243 = call i32 @bfa_trc(%struct.bfa_s* %239, i32 %242)
  ret void
}

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(%struct.bfa_s*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_lps_get_fwtag(%struct.bfa_s*, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @bfa_alen_set(i32*, i64, i32) #1

declare dso_local i32 @BFA_FCXP_REQ_PLD_PA(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BFA_FCXP_RSP_PLD_PA(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @hal_fcxp_tx_plog(%struct.bfa_s*, i64, %struct.bfa_fcxp_s*, i32*) #1

declare dso_local i32 @bfa_reqq_produce(%struct.bfa_s*, i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_reqq_pi(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_reqq_ci(%struct.bfa_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
