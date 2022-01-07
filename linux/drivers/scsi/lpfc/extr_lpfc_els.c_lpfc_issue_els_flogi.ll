; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_flogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i8*, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_14__, i8*, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.serv_parm = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_24__ = type { i64, i64, i32, i64, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, i32, %struct.TYPE_26__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i64 }
%struct.lpfc_iocbq = type { %struct.TYPE_17__, i32, i64 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_FLOGI = common dso_local global i8* null, align 8
@FC_PH3 = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_0 = common dso_local global i64 0, align 8
@SLI4_CT_FCFI = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@LPFC_DISC_FLOGI_TMO = common dso_local global i8* null, align 8
@lpfc_cmpl_els_flogi = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue FLOGI:     opt:x%x\00", align 1
@HBA_FLOGI_ISSUED = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i8* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"3354 Xmit deferred FLOGI ACC: rx_id: x%x, ox_id: x%x, hba_flag x%x\0A\00", align 1
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32)* @lpfc_issue_els_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_els_flogi(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.serv_parm*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.lpfc_iocbq, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %8, align 8
  store i32 96, i32* %14, align 4
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** @ELS_CMD_FLOGI, align 8
  %29 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %21, i32 1, i32 %22, i32 %23, %struct.lpfc_nodelist* %24, i32 %27, i8* %28)
  store %struct.lpfc_iocbq* %29, %struct.lpfc_iocbq** %11, align 8
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %31 = icmp ne %struct.lpfc_iocbq* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %274

33:                                               ; preds = %3
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 0
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %10, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %37 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.lpfc_dmabuf*
  %40 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %13, align 8
  %43 = load i8*, i8** @ELS_CMD_FLOGI, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = bitcast i32* %44 to i8**
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %49, i32 0, i32 1
  %51 = call i32 @memcpy(i32* %48, i32* %50, i32 88)
  %52 = load i32*, i32** %13, align 8
  %53 = bitcast i32* %52 to %struct.serv_parm*
  store %struct.serv_parm* %53, %struct.serv_parm** %9, align 8
  %54 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %55 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %58 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %62 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %65 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %68 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FC_PH3, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %33
  %74 = load i64, i64* @FC_PH3, align 8
  %75 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %76 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %33
  %79 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %80 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FC_PH3, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i64, i64* @FC_PH3, align 8
  %87 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %88 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LPFC_SLI_REV4, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %130

96:                                               ; preds = %90
  %97 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = call i64 @bf_get(i32 %97, i32* %100)
  %102 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_0, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load i32, i32* @SLI4_CT_FCFI, align 4
  %106 = ashr i32 %105, 1
  %107 = and i32 %106, 1
  %108 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %109 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @SLI4_CT_FCFI, align 4
  %112 = and i32 %111, 1
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 9
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %121 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %104, %96
  %124 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %125 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %128 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  br label %170

130:                                              ; preds = %90
  %131 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %132 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %139 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %142 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  %148 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %149 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %130
  %158 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %159 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  store i32 0, i32* %164, align 4
  br label %169

165:                                              ; preds = %130
  %166 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %167 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 2
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %165, %157
  br label %170

170:                                              ; preds = %169, %123
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %176, %170
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %187 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %186, i32 0, i32 8
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %15, align 8
  %189 = load i8*, i8** @LPFC_DISC_FLOGI_TMO, align 8
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %191 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %190, i32 0, i32 8
  store i8* %189, i8** %191, align 8
  %192 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %193 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %192)
  %194 = load i8*, i8** %15, align 8
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 8
  store i8* %194, i8** %196, align 8
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %198 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  %202 = load i32, i32* @lpfc_cmpl_els_flogi, align 4
  %203 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %204 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %206 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %205, i32 %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %209, i32 0, i32 0)
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %212 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %213 = call i32 @lpfc_issue_fabric_iocb(%struct.lpfc_hba* %211, %struct.lpfc_iocbq* %212)
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* @HBA_FLOGI_ISSUED, align 4
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %216 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %220 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %265

223:                                              ; preds = %185
  %224 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %225 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  store i8* %226, i8** %16, align 8
  %227 = load i8*, i8** @Fabric_DID, align 8
  %228 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %229 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %228, i32 0, i32 0
  store i8* %227, i8** %229, align 8
  %230 = call i32 @memset(%struct.lpfc_iocbq* %12, i32 0, i32 48)
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %232 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %237 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  store i32 %238, i32* %242, align 8
  %243 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %244 = load i32, i32* @KERN_INFO, align 4
  %245 = load i32, i32* @LOG_ELS, align 4
  %246 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %247 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %253 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %243, i32 %244, i32 %245, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %248, i32 %251, i32 %254)
  %256 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %257 = load i8*, i8** @ELS_CMD_FLOGI, align 8
  %258 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %259 = call i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %256, i8* %257, %struct.lpfc_iocbq* %12, %struct.lpfc_nodelist* %258, i32* null)
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %261 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %260, i32 0, i32 3
  store i32 0, i32* %261, align 8
  %262 = load i8*, i8** %16, align 8
  %263 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %264 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %263, i32 0, i32 0
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %223, %185
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* @IOCB_ERROR, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %271 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %272 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %270, %struct.lpfc_iocbq* %271)
  store i32 1, i32* %4, align 4
  br label %274

273:                                              ; preds = %265
  store i32 0, i32* %4, align 4
  br label %274

274:                                              ; preds = %273, %269, %32
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_issue_fabric_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @memset(%struct.lpfc_iocbq*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_els_rsp_acc(%struct.lpfc_vport*, i8*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
