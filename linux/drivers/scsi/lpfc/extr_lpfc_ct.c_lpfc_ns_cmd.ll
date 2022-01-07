; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ns_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ns_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i8*, i8*, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.lpfc_vport* }
%struct.lpfc_nodelist = type { i64, i32 }
%struct.lpfc_dmabuf = type { i32, i8*, i32 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_23__, %struct.TYPE_21__, i32, i32, %struct.TYPE_27__, %struct.TYPE_25__, i8*, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_22__ = type { i32, i8*, i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i8* }
%struct.TYPE_32__ = type { i32, i8* }
%struct.TYPE_31__ = type { i32, i8**, i8* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_28__ = type { i8*, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8*, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i8*, i64 }
%struct.ulp_bde64 = type { %struct.TYPE_23__, %struct.TYPE_21__, i32, i32, %struct.TYPE_27__, %struct.TYPE_25__, i8*, i8* }
%struct.lpfc_iocbq = type opaque
%struct.lpfc_iocbq.10 = type opaque
%struct.lpfc_iocbq.0 = type opaque
%struct.lpfc_iocbq.1 = type opaque
%struct.lpfc_iocbq.2 = type opaque
%struct.lpfc_iocbq.3 = type opaque
%struct.lpfc_iocbq.4 = type opaque
%struct.lpfc_iocbq.5 = type opaque
%struct.lpfc_iocbq.6 = type opaque
%struct.lpfc_iocbq.7 = type opaque
%struct.lpfc_iocbq.8 = type opaque
%struct.lpfc_iocbq.9 = type opaque

@NameServer_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"0236 NameServer Req Data: x%x x%x x%x x%x\0A\00", align 1
@GID_REQUEST_SZ = common dso_local global i8* null, align 8
@GFF_REQUEST_SZ = common dso_local global i8* null, align 8
@GFT_REQUEST_SZ = common dso_local global i8* null, align 8
@RFT_REQUEST_SZ = common dso_local global i8* null, align 8
@RNN_REQUEST_SZ = common dso_local global i8* null, align 8
@RSPN_REQUEST_SZ = common dso_local global i8* null, align 8
@RSNN_REQUEST_SZ = common dso_local global i8* null, align 8
@DA_ID_REQUEST_SZ = common dso_local global i8* null, align 8
@RFF_REQUEST_SZ = common dso_local global i8* null, align 8
@SLI_CT_REVISION = common dso_local global i32 0, align 4
@SLI_CT_DIRECTORY_SERVICE = common dso_local global i32 0, align 4
@SLI_CT_DIRECTORY_NAME_SERVER = common dso_local global i32 0, align 4
@LPFC_NS_QRY = common dso_local global i8* null, align 8
@FC_MAX_NS_RSP = common dso_local global i8* null, align 8
@FC_CT_RFT_ID = common dso_local global i32 0, align 4
@LPFC_ENABLE_BOTH = common dso_local global i32 0, align 4
@LPFC_ENABLE_FCP = common dso_local global i32 0, align 4
@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@LPFC_FC4_TYPE_BITMASK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"6433 Issue RFT (%s %s): %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"FCP\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NVME\00", align 1
@FC_CT_RNN_ID = common dso_local global i32 0, align 4
@FC_CT_RSPN_ID = common dso_local global i32 0, align 4
@FC_CT_RSNN_NN = common dso_local global i32 0, align 4
@FC_CT_RFF_ID = common dso_local global i32 0, align 4
@FC4_FEATURE_INIT = common dso_local global i32 0, align 4
@FC_TYPE_NVME = common dso_local global i8* null, align 8
@FC4_FEATURE_TARGET = common dso_local global i32 0, align 4
@FC4_FEATURE_NVME_DISC = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [62 x i8] c"6434 Issue RFF (%s): %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", align 1
@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Issue CT cmd:    cmd:x%x did:x%x\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"0266 Issue NameServer Req x%x err %d Data: x%x x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_sli_ct_request*, align 8
  %15 = alloca %struct.ulp_bde64*, align 8
  %16 = alloca void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 7
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  store %struct.lpfc_hba* %23, %struct.lpfc_hba** %11, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* null, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  store i8* inttoptr (i64 1024 to i8*), i8** %18, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %25 = load i32, i32* @NameServer_DID, align 4
  %26 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %24, i32 %25)
  store %struct.lpfc_nodelist* %26, %struct.lpfc_nodelist** %10, align 8
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %28 = icmp ne %struct.lpfc_nodelist* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %4
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %31 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %35 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %29, %4
  store i32 1, i32* %20, align 4
  br label %718

40:                                               ; preds = %33
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %41)
  store %struct.lpfc_dmabuf* %42, %struct.lpfc_dmabuf** %12, align 8
  %43 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %44 = icmp ne %struct.lpfc_dmabuf* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 2, i32* %20, align 4
  br label %718

46:                                               ; preds = %40
  %47 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %48 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %51 = load i32, i32* @MEM_PRI, align 4
  %52 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %53 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %52, i32 0, i32 0
  %54 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %50, i32 %51, i32* %53)
  %55 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %56 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %58 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %46
  store i32 3, i32* %20, align 4
  br label %715

62:                                               ; preds = %46
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %63)
  store %struct.lpfc_dmabuf* %64, %struct.lpfc_dmabuf** %13, align 8
  %65 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %66 = icmp ne %struct.lpfc_dmabuf* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 4, i32* %20, align 4
  br label %706

68:                                               ; preds = %62
  %69 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %70 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %69, i32 0, i32 2
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %73 = load i32, i32* @MEM_PRI, align 4
  %74 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %75 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %74, i32 0, i32 0
  %76 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %72, i32 %73, i32* %75)
  %77 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %78 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %80 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %68
  store i32 5, i32* %20, align 4
  br label %703

84:                                               ; preds = %68
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %86 = load i32, i32* @KERN_INFO, align 4
  %87 = load i32, i32* @LOG_DISCOVERY, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %90 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %93 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91, i32 %94, i8* %95)
  %97 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %98 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = bitcast i8* %99 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %100, %struct.ulp_bde64** %15, align 8
  %101 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %102 = call i32 @memset(%struct.ulp_bde64* %101, i32 0, i32 216)
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %104 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @putPaddrHigh(i32 %105)
  %107 = call i8* @le32_to_cpu(i8* %106)
  %108 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %109 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %111 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @putPaddrLow(i32 %112)
  %114 = call i8* @le32_to_cpu(i8* %113)
  %115 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %116 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %118 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 134
  br i1 %122, label %123, label %129

123:                                              ; preds = %84
  %124 = load i8*, i8** @GID_REQUEST_SZ, align 8
  %125 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %126 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  store i8* %124, i8** %128, align 8
  br label %224

129:                                              ; preds = %84
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 133
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i8*, i8** @GID_REQUEST_SZ, align 8
  %134 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %135 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  store i8* %133, i8** %137, align 8
  br label %223

138:                                              ; preds = %129
  %139 = load i32, i32* %7, align 4
  %140 = icmp eq i32 %139, 136
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i8*, i8** @GFF_REQUEST_SZ, align 8
  %143 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %144 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  store i8* %142, i8** %146, align 8
  br label %222

147:                                              ; preds = %138
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 135
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i8*, i8** @GFT_REQUEST_SZ, align 8
  %152 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %153 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  store i8* %151, i8** %155, align 8
  br label %221

156:                                              ; preds = %147
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 131
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i8*, i8** @RFT_REQUEST_SZ, align 8
  %161 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %162 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  store i8* %160, i8** %164, align 8
  br label %220

165:                                              ; preds = %156
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %166, 130
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i8*, i8** @RNN_REQUEST_SZ, align 8
  %170 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %171 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  store i8* %169, i8** %173, align 8
  br label %219

174:                                              ; preds = %165
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i8*, i8** @RSPN_REQUEST_SZ, align 8
  %179 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %180 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  store i8* %178, i8** %182, align 8
  br label %218

183:                                              ; preds = %174
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, 129
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load i8*, i8** @RSNN_REQUEST_SZ, align 8
  %188 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %189 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  store i8* %187, i8** %191, align 8
  br label %217

192:                                              ; preds = %183
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 137
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i8*, i8** @DA_ID_REQUEST_SZ, align 8
  %197 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %198 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  store i8* %196, i8** %200, align 8
  br label %216

201:                                              ; preds = %192
  %202 = load i32, i32* %7, align 4
  %203 = icmp eq i32 %202, 132
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i8*, i8** @RFF_REQUEST_SZ, align 8
  %206 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %207 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  store i8* %205, i8** %209, align 8
  br label %215

210:                                              ; preds = %201
  %211 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %212 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  store i8* null, i8** %214, align 8
  br label %215

215:                                              ; preds = %210, %204
  br label %216

216:                                              ; preds = %215, %195
  br label %217

217:                                              ; preds = %216, %186
  br label %218

218:                                              ; preds = %217, %177
  br label %219

219:                                              ; preds = %218, %168
  br label %220

220:                                              ; preds = %219, %159
  br label %221

221:                                              ; preds = %220, %150
  br label %222

222:                                              ; preds = %221, %141
  br label %223

223:                                              ; preds = %222, %132
  br label %224

224:                                              ; preds = %223, %123
  %225 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %226 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i8* @le32_to_cpu(i8* %228)
  %230 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %231 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 0
  store i8* %229, i8** %232, align 8
  %233 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %234 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = bitcast i8* %235 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %236, %struct.lpfc_sli_ct_request** %14, align 8
  %237 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %238 = bitcast %struct.lpfc_sli_ct_request* %237 to %struct.ulp_bde64*
  %239 = call i32 @memset(%struct.ulp_bde64* %238, i32 0, i32 216)
  %240 = load i32, i32* @SLI_CT_REVISION, align 4
  %241 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %242 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 1
  store i32 %240, i32* %244, align 8
  %245 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %246 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 0
  store i64 0, i64* %248, align 8
  %249 = load i32, i32* @SLI_CT_DIRECTORY_SERVICE, align 4
  %250 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %251 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* @SLI_CT_DIRECTORY_NAME_SERVER, align 4
  %253 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %254 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  %255 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %256 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 1
  store i64 0, i64* %258, align 8
  %259 = load i32, i32* %7, align 4
  switch i32 %259, label %672 [
    i32 134, label %260
    i32 133, label %284
    i32 136, label %308
    i32 135, label %320
    i32 131, label %332
    i32 130, label %437
    i32 128, label %465
    i32 129, label %497
    i32 137, label %529
    i32 132, label %543
  ]

260:                                              ; preds = %224
  %261 = call i8* @cpu_to_be16(i32 134)
  %262 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %263 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  store i8* %261, i8** %265, align 8
  %266 = load i8*, i8** %9, align 8
  %267 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %268 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 1
  store i8* %266, i8** %270, align 8
  %271 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %272 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = load i8*, i8** @LPFC_NS_QRY, align 8
  %275 = icmp ult i8* %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %260
  %277 = load i8*, i8** @LPFC_NS_QRY, align 8
  %278 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %279 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %278, i32 0, i32 2
  store i8* %277, i8** %279, align 8
  br label %280

280:                                              ; preds = %276, %260
  %281 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %282 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %281)
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*)* @lpfc_cmpl_ct_cmd_gid_ft to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  %283 = load i8*, i8** @FC_MAX_NS_RSP, align 8
  store i8* %283, i8** %18, align 8
  br label %672

284:                                              ; preds = %224
  %285 = call i8* @cpu_to_be16(i32 133)
  %286 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %287 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 0
  store i8* %285, i8** %289, align 8
  %290 = load i8*, i8** %9, align 8
  %291 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %292 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 0
  store i8* %290, i8** %294, align 8
  %295 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %296 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %295, i32 0, i32 2
  %297 = load i8*, i8** %296, align 8
  %298 = load i8*, i8** @LPFC_NS_QRY, align 8
  %299 = icmp ult i8* %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %284
  %301 = load i8*, i8** @LPFC_NS_QRY, align 8
  %302 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %303 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  br label %304

304:                                              ; preds = %300, %284
  %305 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %306 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %305)
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.1*, %struct.lpfc_iocbq.1*)* @lpfc_cmpl_ct_cmd_gid_pt to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  %307 = load i8*, i8** @FC_MAX_NS_RSP, align 8
  store i8* %307, i8** %18, align 8
  br label %672

308:                                              ; preds = %224
  %309 = call i8* @cpu_to_be16(i32 136)
  %310 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %311 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 0
  store i8* %309, i8** %313, align 8
  %314 = load i8*, i8** %9, align 8
  %315 = call i8* @cpu_to_be32(i8* %314)
  %316 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %317 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 7
  %319 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %318, i32 0, i32 0
  store i8* %315, i8** %319, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.2*, %struct.lpfc_iocbq.2*)* @lpfc_cmpl_ct_cmd_gff_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %672

320:                                              ; preds = %224
  %321 = call i8* @cpu_to_be16(i32 135)
  %322 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %323 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 0
  store i8* %321, i8** %325, align 8
  %326 = load i8*, i8** %9, align 8
  %327 = call i8* @cpu_to_be32(i8* %326)
  %328 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %329 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 6
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 0
  store i8* %327, i8** %331, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.3*, %struct.lpfc_iocbq.3*)* @lpfc_cmpl_ct_cmd_gft_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %672

332:                                              ; preds = %224
  %333 = load i32, i32* @FC_CT_RFT_ID, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %336 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 4
  %339 = call i8* @cpu_to_be16(i32 131)
  %340 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %341 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 0
  store i8* %339, i8** %343, align 8
  %344 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %345 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %344, i32 0, i32 3
  %346 = load i8*, i8** %345, align 8
  %347 = call i8* @cpu_to_be32(i8* %346)
  %348 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %349 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 5
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 2
  store i8* %347, i8** %351, align 8
  %352 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %353 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @LPFC_ENABLE_BOTH, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %363, label %357

357:                                              ; preds = %332
  %358 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %359 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @LPFC_ENABLE_FCP, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %368

363:                                              ; preds = %357, %332
  %364 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %365 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 0
  store i32 1, i32* %367, align 8
  br label %368

368:                                              ; preds = %363, %357
  %369 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %370 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @LPFC_ENABLE_BOTH, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %380, label %374

374:                                              ; preds = %368
  %375 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %376 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %389

380:                                              ; preds = %374, %368
  %381 = load i8*, i8** @LPFC_FC4_TYPE_BITMASK, align 8
  %382 = call i8* @cpu_to_be32(i8* %381)
  %383 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %384 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %385, i32 0, i32 1
  %387 = load i8**, i8*** %386, align 8
  %388 = getelementptr inbounds i8*, i8** %387, i64 0
  store i8* %382, i8** %388, align 8
  br label %389

389:                                              ; preds = %380, %374
  %390 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %391 = bitcast %struct.lpfc_sli_ct_request* %390 to i8**
  store i8** %391, i8*** %17, align 8
  %392 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %393 = load i32, i32* @KERN_INFO, align 4
  %394 = load i32, i32* @LOG_DISCOVERY, align 4
  %395 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %396 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = icmp ne i32 %399, 0
  %401 = zext i1 %400 to i64
  %402 = select i1 %400, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %403 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %404 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %404, i32 0, i32 5
  %406 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %405, i32 0, i32 1
  %407 = load i8**, i8*** %406, align 8
  %408 = getelementptr inbounds i8*, i8** %407, i64 0
  %409 = load i8*, i8** %408, align 8
  %410 = icmp ne i8* %409, null
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %413 = load i8**, i8*** %17, align 8
  %414 = load i8*, i8** %413, align 8
  %415 = load i8**, i8*** %17, align 8
  %416 = getelementptr inbounds i8*, i8** %415, i64 1
  %417 = load i8*, i8** %416, align 8
  %418 = load i8**, i8*** %17, align 8
  %419 = getelementptr inbounds i8*, i8** %418, i64 2
  %420 = load i8*, i8** %419, align 8
  %421 = load i8**, i8*** %17, align 8
  %422 = getelementptr inbounds i8*, i8** %421, i64 3
  %423 = load i8*, i8** %422, align 8
  %424 = load i8**, i8*** %17, align 8
  %425 = getelementptr inbounds i8*, i8** %424, i64 4
  %426 = load i8*, i8** %425, align 8
  %427 = load i8**, i8*** %17, align 8
  %428 = getelementptr inbounds i8*, i8** %427, i64 5
  %429 = load i8*, i8** %428, align 8
  %430 = load i8**, i8*** %17, align 8
  %431 = getelementptr inbounds i8*, i8** %430, i64 6
  %432 = load i8*, i8** %431, align 8
  %433 = load i8**, i8*** %17, align 8
  %434 = getelementptr inbounds i8*, i8** %433, i64 7
  %435 = load i8*, i8** %434, align 8
  %436 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %392, i32 %393, i32 %394, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %402, i8* %412, i8* %414, i8* %417, i8* %420, i8* %423, i8* %426, i8* %429, i8* %432, i8* %435)
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.4*, %struct.lpfc_iocbq.4*)* @lpfc_cmpl_ct_cmd_rft_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %672

437:                                              ; preds = %224
  %438 = load i32, i32* @FC_CT_RNN_ID, align 4
  %439 = xor i32 %438, -1
  %440 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %441 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %440, i32 0, i32 5
  %442 = load i32, i32* %441, align 4
  %443 = and i32 %442, %439
  store i32 %443, i32* %441, align 4
  %444 = call i8* @cpu_to_be16(i32 130)
  %445 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %446 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %447, i32 0, i32 0
  store i8* %444, i8** %448, align 8
  %449 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %450 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %449, i32 0, i32 3
  %451 = load i8*, i8** %450, align 8
  %452 = call i8* @cpu_to_be32(i8* %451)
  %453 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %454 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %454, i32 0, i32 4
  %456 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %455, i32 0, i32 1
  store i8* %452, i8** %456, align 8
  %457 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %458 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %458, i32 0, i32 4
  %460 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %463 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %462, i32 0, i32 6
  %464 = call i32 @memcpy(i32 %461, i32* %463, i32 4)
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.5*, %struct.lpfc_iocbq.5*)* @lpfc_cmpl_ct_cmd_rnn_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %672

465:                                              ; preds = %224
  %466 = load i32, i32* @FC_CT_RSPN_ID, align 4
  %467 = xor i32 %466, -1
  %468 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %469 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %468, i32 0, i32 5
  %470 = load i32, i32* %469, align 4
  %471 = and i32 %470, %467
  store i32 %471, i32* %469, align 4
  %472 = call i8* @cpu_to_be16(i32 128)
  %473 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %474 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 0
  store i8* %472, i8** %476, align 8
  %477 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %478 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %477, i32 0, i32 3
  %479 = load i8*, i8** %478, align 8
  %480 = call i8* @cpu_to_be32(i8* %479)
  %481 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %482 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %482, i32 0, i32 3
  %484 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %483, i32 0, i32 2
  store i8* %480, i8** %484, align 8
  store i64 4, i64* %19, align 8
  %485 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %486 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %487 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %487, i32 0, i32 3
  %489 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load i64, i64* %19, align 8
  %492 = call i32 @lpfc_vport_symbolic_port_name(%struct.lpfc_vport* %485, i32 %490, i64 %491)
  %493 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %494 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %494, i32 0, i32 3
  %496 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %495, i32 0, i32 1
  store i32 %492, i32* %496, align 4
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.6*, %struct.lpfc_iocbq.6*)* @lpfc_cmpl_ct_cmd_rspn_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %672

497:                                              ; preds = %224
  %498 = load i32, i32* @FC_CT_RSNN_NN, align 4
  %499 = xor i32 %498, -1
  %500 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %501 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %500, i32 0, i32 5
  %502 = load i32, i32* %501, align 4
  %503 = and i32 %502, %499
  store i32 %503, i32* %501, align 4
  %504 = call i8* @cpu_to_be16(i32 129)
  %505 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %506 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %507, i32 0, i32 0
  store i8* %504, i8** %508, align 8
  %509 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %510 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %515 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %514, i32 0, i32 6
  %516 = call i32 @memcpy(i32 %513, i32* %515, i32 4)
  store i64 4, i64* %19, align 8
  %517 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %518 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %519 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i64, i64* %19, align 8
  %524 = call i32 @lpfc_vport_symbolic_node_name(%struct.lpfc_vport* %517, i32 %522, i64 %523)
  %525 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %526 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %527, i32 0, i32 1
  store i32 %524, i32* %528, align 4
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.7*, %struct.lpfc_iocbq.7*)* @lpfc_cmpl_ct_cmd_rsnn_nn to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %672

529:                                              ; preds = %224
  %530 = call i8* @cpu_to_be16(i32 137)
  %531 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %532 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %533, i32 0, i32 0
  store i8* %530, i8** %534, align 8
  %535 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %536 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %535, i32 0, i32 3
  %537 = load i8*, i8** %536, align 8
  %538 = call i8* @cpu_to_be32(i8* %537)
  %539 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %540 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %541, i32 0, i32 0
  store i8* %538, i8** %542, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.8*, %struct.lpfc_iocbq.8*)* @lpfc_cmpl_ct_cmd_da_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %672

543:                                              ; preds = %224
  %544 = load i32, i32* @FC_CT_RFF_ID, align 4
  %545 = xor i32 %544, -1
  %546 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %547 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %546, i32 0, i32 5
  %548 = load i32, i32* %547, align 4
  %549 = and i32 %548, %545
  store i32 %549, i32* %547, align 4
  %550 = call i8* @cpu_to_be16(i32 132)
  %551 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %552 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %553, i32 0, i32 0
  store i8* %550, i8** %554, align 8
  %555 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %556 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %555, i32 0, i32 3
  %557 = load i8*, i8** %556, align 8
  %558 = call i8* @cpu_to_be32(i8* %557)
  %559 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %560 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %561, i32 0, i32 2
  store i8* %558, i8** %562, align 8
  %563 = load i32, i32* @FC4_FEATURE_INIT, align 4
  %564 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %565 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %566, i32 0, i32 0
  store i32 %563, i32* %567, align 8
  %568 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %569 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %568, i32 0, i32 4
  %570 = load i32, i32* %569, align 8
  %571 = load i32, i32* @LPFC_ENABLE_BOTH, align 4
  %572 = icmp eq i32 %570, %571
  br i1 %572, label %579, label %573

573:                                              ; preds = %543
  %574 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %575 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %574, i32 0, i32 4
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %578 = icmp eq i32 %576, %577
  br i1 %578, label %579, label %613

579:                                              ; preds = %573, %543
  %580 = load i8*, i8** %9, align 8
  %581 = load i8*, i8** @FC_TYPE_NVME, align 8
  %582 = icmp eq i8* %580, %581
  br i1 %582, label %583, label %613

583:                                              ; preds = %579
  %584 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %585 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %586 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %585, i32 0, i32 1
  %587 = load %struct.lpfc_vport*, %struct.lpfc_vport** %586, align 8
  %588 = icmp eq %struct.lpfc_vport* %584, %587
  br i1 %588, label %589, label %604

589:                                              ; preds = %583
  %590 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %591 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %604

594:                                              ; preds = %589
  %595 = load i32, i32* @FC4_FEATURE_TARGET, align 4
  %596 = load i32, i32* @FC4_FEATURE_NVME_DISC, align 4
  %597 = or i32 %595, %596
  %598 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %599 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %600, i32 0, i32 0
  store i32 %597, i32* %601, align 8
  %602 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %603 = call i32 @lpfc_nvmet_update_targetport(%struct.lpfc_hba* %602)
  br label %607

604:                                              ; preds = %589, %583
  %605 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %606 = call i32 @lpfc_nvme_update_localport(%struct.lpfc_vport* %605)
  br label %607

607:                                              ; preds = %604, %594
  %608 = load i8*, i8** %9, align 8
  %609 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %610 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %611, i32 0, i32 1
  store i8* %608, i8** %612, align 8
  br label %637

613:                                              ; preds = %579, %573
  %614 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %615 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %614, i32 0, i32 4
  %616 = load i32, i32* %615, align 8
  %617 = load i32, i32* @LPFC_ENABLE_BOTH, align 4
  %618 = icmp eq i32 %616, %617
  br i1 %618, label %625, label %619

619:                                              ; preds = %613
  %620 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %621 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %620, i32 0, i32 4
  %622 = load i32, i32* %621, align 8
  %623 = load i32, i32* @LPFC_ENABLE_FCP, align 4
  %624 = icmp eq i32 %622, %623
  br i1 %624, label %625, label %635

625:                                              ; preds = %619, %613
  %626 = load i8*, i8** %9, align 8
  %627 = load i8*, i8** @FC_TYPE_FCP, align 8
  %628 = icmp eq i8* %626, %627
  br i1 %628, label %629, label %635

629:                                              ; preds = %625
  %630 = load i8*, i8** %9, align 8
  %631 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %632 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %633, i32 0, i32 1
  store i8* %630, i8** %634, align 8
  br label %636

635:                                              ; preds = %625, %619
  br label %694

636:                                              ; preds = %629
  br label %637

637:                                              ; preds = %636, %607
  %638 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %639 = bitcast %struct.lpfc_sli_ct_request* %638 to i8**
  store i8** %639, i8*** %17, align 8
  %640 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %641 = load i32, i32* @KERN_INFO, align 4
  %642 = load i32, i32* @LOG_DISCOVERY, align 4
  %643 = load i8*, i8** %9, align 8
  %644 = load i8*, i8** @FC_TYPE_NVME, align 8
  %645 = icmp eq i8* %643, %644
  %646 = zext i1 %645 to i64
  %647 = select i1 %645, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %648 = load i8**, i8*** %17, align 8
  %649 = load i8*, i8** %648, align 8
  %650 = load i8**, i8*** %17, align 8
  %651 = getelementptr inbounds i8*, i8** %650, i64 1
  %652 = load i8*, i8** %651, align 8
  %653 = load i8**, i8*** %17, align 8
  %654 = getelementptr inbounds i8*, i8** %653, i64 2
  %655 = load i8*, i8** %654, align 8
  %656 = load i8**, i8*** %17, align 8
  %657 = getelementptr inbounds i8*, i8** %656, i64 3
  %658 = load i8*, i8** %657, align 8
  %659 = load i8**, i8*** %17, align 8
  %660 = getelementptr inbounds i8*, i8** %659, i64 4
  %661 = load i8*, i8** %660, align 8
  %662 = load i8**, i8*** %17, align 8
  %663 = getelementptr inbounds i8*, i8** %662, i64 5
  %664 = load i8*, i8** %663, align 8
  %665 = load i8**, i8*** %17, align 8
  %666 = getelementptr inbounds i8*, i8** %665, i64 6
  %667 = load i8*, i8** %666, align 8
  %668 = load i8**, i8*** %17, align 8
  %669 = getelementptr inbounds i8*, i8** %668, i64 7
  %670 = load i8*, i8** %669, align 8
  %671 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %640, i32 %641, i32 %642, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %647, i8* %649, i8* %652, i8* %655, i8* %658, i8* %661, i8* %664, i8* %667, i8* %670)
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.9*, %struct.lpfc_iocbq.9*)* @lpfc_cmpl_ct_cmd_rff_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %672

672:                                              ; preds = %224, %637, %529, %497, %465, %437, %389, %320, %308, %304, %280
  %673 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %674 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %675 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %676 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %677 = load void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  %678 = bitcast void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %677 to void (%struct.lpfc_hba*, %struct.lpfc_iocbq.10*, %struct.lpfc_iocbq.10*)*
  %679 = load i8*, i8** %18, align 8
  %680 = load i32, i32* %8, align 4
  %681 = call i32 @lpfc_ct_cmd(%struct.lpfc_vport* %673, %struct.lpfc_dmabuf* %674, %struct.lpfc_dmabuf* %675, %struct.lpfc_nodelist* %676, void (%struct.lpfc_hba*, %struct.lpfc_iocbq.10*, %struct.lpfc_iocbq.10*)* %678, i8* %679, i32 %680)
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %691, label %683

683:                                              ; preds = %672
  %684 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %685 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %686 = load i32, i32* %7, align 4
  %687 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %688 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %687, i32 0, i32 1
  %689 = load i32, i32* %688, align 8
  %690 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %684, i32 %685, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %686, i32 %689, i32 0)
  store i32 0, i32* %5, align 4
  br label %731

691:                                              ; preds = %672
  store i32 6, i32* %20, align 4
  %692 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %693 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %692)
  br label %694

694:                                              ; preds = %691, %635
  %695 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %696 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %697 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %696, i32 0, i32 1
  %698 = load i8*, i8** %697, align 8
  %699 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %700 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 8
  %702 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %695, i8* %698, i32 %701)
  br label %703

703:                                              ; preds = %694, %83
  %704 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %705 = call i32 @kfree(%struct.lpfc_dmabuf* %704)
  br label %706

706:                                              ; preds = %703, %67
  %707 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %708 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %709 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %708, i32 0, i32 1
  %710 = load i8*, i8** %709, align 8
  %711 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %712 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 8
  %714 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %707, i8* %710, i32 %713)
  br label %715

715:                                              ; preds = %706, %61
  %716 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %717 = call i32 @kfree(%struct.lpfc_dmabuf* %716)
  br label %718

718:                                              ; preds = %715, %45, %39
  %719 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %720 = load i32, i32* @KERN_ERR, align 4
  %721 = load i32, i32* @LOG_DISCOVERY, align 4
  %722 = load i32, i32* %7, align 4
  %723 = load i32, i32* %20, align 4
  %724 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %725 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %728 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %727, i32 0, i32 1
  %729 = load i32, i32* %728, align 4
  %730 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %719, i32 %720, i32 %721, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %722, i32 %723, i32 %726, i32 %729)
  store i32 1, i32* %5, align 4
  br label %731

731:                                              ; preds = %718, %683
  %732 = load i32, i32* %5, align 4
  ret i32 %732
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.ulp_bde64*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_gid_ft(%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_gid_pt(%struct.lpfc_hba*, %struct.lpfc_iocbq.1*, %struct.lpfc_iocbq.1*) #1

declare dso_local i8* @cpu_to_be32(i8*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_gff_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.2*, %struct.lpfc_iocbq.2*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_gft_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.3*, %struct.lpfc_iocbq.3*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rft_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.4*, %struct.lpfc_iocbq.4*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rnn_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.5*, %struct.lpfc_iocbq.5*) #1

declare dso_local i32 @lpfc_vport_symbolic_port_name(%struct.lpfc_vport*, i32, i64) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rspn_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.6*, %struct.lpfc_iocbq.6*) #1

declare dso_local i32 @lpfc_vport_symbolic_node_name(%struct.lpfc_vport*, i32, i64) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rsnn_nn(%struct.lpfc_hba*, %struct.lpfc_iocbq.7*, %struct.lpfc_iocbq.7*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_da_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.8*, %struct.lpfc_iocbq.8*) #1

declare dso_local i32 @lpfc_nvmet_update_targetport(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nvme_update_localport(%struct.lpfc_vport*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rff_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.9*, %struct.lpfc_iocbq.9*) #1

declare dso_local i32 @lpfc_ct_cmd(%struct.lpfc_vport*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_nodelist*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq.10*, %struct.lpfc_iocbq.10*)*, i8*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
