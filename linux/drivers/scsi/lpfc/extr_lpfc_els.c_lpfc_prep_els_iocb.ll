; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_prep_els_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_prep_els_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_iocbq = type { i32, i32, i64, %struct.lpfc_vport*, i64, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32, %struct.TYPE_16__ }
%struct.lpfc_dmabuf = type { i32, i8*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8* }
%struct.lpfc_vport = type { i32, i64, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32, i64, i32* }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.ulp_bde64 = type { %struct.TYPE_12__, i8*, i8* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@Fabric_DID = common dso_local global i64 0, align 8
@HBA_FIP_SUPPORT = common dso_local global i32 0, align 4
@LPFC_ELS_ID_FLOGI = common dso_local global i32 0, align 4
@LPFC_FIP_ELS_ID_SHIFT = common dso_local global i32 0, align 4
@LPFC_FIP_ELS_ID_MASK = common dso_local global i32 0, align 4
@LPFC_ELS_ID_FDISC = common dso_local global i32 0, align 4
@LPFC_ELS_ID_LOGO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4
@BUFF_TYPE_BLP_64 = common dso_local global i8* null, align 8
@CMD_ELS_REQUEST64_CR = common dso_local global i32 0, align 4
@FF_DEF_RATOV = common dso_local global i32 0, align 4
@CMD_XMIT_ELS_RSP64_CX = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@FC_PT2PT = common dso_local global i32 0, align 4
@ELS_CMD_ECHO = common dso_local global i64 0, align 8
@FCELSSIZE = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i64 0, align 8
@LPFC_DRVR_TIMEOUT = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"0116 Xmit ELS command x%x to remote NPORT x%x I/O tag: x%x, port state:x%x rpi x%x fc_flag:x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [108 x i8] c"0117 Xmit ELS response x%x to remote NPORT x%x I/O tag: x%x, size: x%x port_state x%x  rpi x%x fc_flag x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %0, i64 %1, i32 %2, i64 %3, %struct.lpfc_nodelist* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.lpfc_nodelist*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.lpfc_hba*, align 8
  %17 = alloca %struct.lpfc_iocbq*, align 8
  %18 = alloca %struct.lpfc_dmabuf*, align 8
  %19 = alloca %struct.lpfc_dmabuf*, align 8
  %20 = alloca %struct.lpfc_dmabuf*, align 8
  %21 = alloca %struct.ulp_bde64*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store %struct.lpfc_nodelist* %4, %struct.lpfc_nodelist** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %24, align 8
  store %struct.lpfc_hba* %25, %struct.lpfc_hba** %16, align 8
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %27 = call i32 @lpfc_is_link_up(%struct.lpfc_hba* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %7
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  br label %535

30:                                               ; preds = %7
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %32 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %31)
  store %struct.lpfc_iocbq* %32, %struct.lpfc_iocbq** %17, align 8
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %34 = icmp eq %struct.lpfc_iocbq* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  br label %535

36:                                               ; preds = %30
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @Fabric_DID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HBA_FIP_SUPPORT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %40
  %48 = load i64, i64* %15, align 8
  %49 = icmp eq i64 %48, 129
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %15, align 8
  %52 = icmp eq i64 %51, 130
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %15, align 8
  %55 = icmp eq i64 %54, 128
  br i1 %55, label %56, label %89

56:                                               ; preds = %53, %50, %47
  %57 = load i64, i64* %15, align 8
  switch i64 %57, label %88 [
    i64 129, label %58
    i64 130, label %68
    i64 128, label %78
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* @LPFC_ELS_ID_FLOGI, align 4
  %60 = load i32, i32* @LPFC_FIP_ELS_ID_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @LPFC_FIP_ELS_ID_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %65 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %88

68:                                               ; preds = %56
  %69 = load i32, i32* @LPFC_ELS_ID_FDISC, align 4
  %70 = load i32, i32* @LPFC_FIP_ELS_ID_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* @LPFC_FIP_ELS_ID_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %75 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %88

78:                                               ; preds = %56
  %79 = load i32, i32* @LPFC_ELS_ID_LOGO, align 4
  %80 = load i32, i32* @LPFC_FIP_ELS_ID_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @LPFC_FIP_ELS_ID_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %85 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %56, %78, %68, %58
  br label %96

89:                                               ; preds = %53, %40, %36
  %90 = load i32, i32* @LPFC_FIP_ELS_ID_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %93 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %89, %88
  %97 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %98 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %97, i32 0, i32 8
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %22, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %99)
  store %struct.lpfc_dmabuf* %100, %struct.lpfc_dmabuf** %18, align 8
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %102 = icmp ne %struct.lpfc_dmabuf* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %105 = load i32, i32* @MEM_PRI, align 4
  %106 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %107 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %106, i32 0, i32 0
  %108 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %104, i32 %105, i32* %107)
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %110 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %103, %96
  %112 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %113 = icmp ne %struct.lpfc_dmabuf* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %116 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114, %111
  br label %529

120:                                              ; preds = %114
  %121 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %122 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %121, i32 0, i32 2
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %120
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %127)
  store %struct.lpfc_dmabuf* %128, %struct.lpfc_dmabuf** %19, align 8
  %129 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %130 = icmp ne %struct.lpfc_dmabuf* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %133 = load i32, i32* @MEM_PRI, align 4
  %134 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %135 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %134, i32 0, i32 0
  %136 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %132, i32 %133, i32* %135)
  %137 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %138 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %131, %126
  %140 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %141 = icmp ne %struct.lpfc_dmabuf* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %144 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %142, %139
  br label %518

148:                                              ; preds = %142
  %149 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %150 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %149, i32 0, i32 2
  %151 = call i32 @INIT_LIST_HEAD(i32* %150)
  br label %153

152:                                              ; preds = %120
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %19, align 8
  br label %153

153:                                              ; preds = %152, %148
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %154)
  store %struct.lpfc_dmabuf* %155, %struct.lpfc_dmabuf** %20, align 8
  %156 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %157 = icmp ne %struct.lpfc_dmabuf* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %160 = load i32, i32* @MEM_PRI, align 4
  %161 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %162 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %161, i32 0, i32 0
  %163 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %159, i32 %160, i32* %162)
  %164 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %165 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %158, %153
  %167 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %168 = icmp ne %struct.lpfc_dmabuf* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %171 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %169, %166
  br label %503

175:                                              ; preds = %169
  %176 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %177 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %176, i32 0, i32 2
  %178 = call i32 @INIT_LIST_HEAD(i32* %177)
  %179 = load i64, i64* %10, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %244

181:                                              ; preds = %175
  %182 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %183 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @putPaddrHigh(i32 %184)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  store i8* %185, i8** %190, align 8
  %191 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %192 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @putPaddrLow(i32 %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  store i8* %194, i8** %199, align 8
  %200 = load i8*, i8** @BUFF_TYPE_BLP_64, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  store i8* %200, i8** %205, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  store i32 80, i32* %210, align 8
  %211 = load i64, i64* %14, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  store i64 %211, i64* %215, align 8
  %216 = load i32, i32* @CMD_ELS_REQUEST64_CR, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 8
  store i32 %216, i32* %218, align 4
  %219 = load i64, i64* %15, align 8
  %220 = icmp eq i64 %219, 129
  br i1 %220, label %221, label %226

221:                                              ; preds = %181
  %222 = load i32, i32* @FF_DEF_RATOV, align 4
  %223 = mul nsw i32 %222, 2
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %243

226:                                              ; preds = %181
  %227 = load i64, i64* %15, align 8
  %228 = icmp eq i64 %227, 128
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  br label %242

235:                                              ; preds = %226
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %237 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 %238, 2
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %235, %229
  br label %243

243:                                              ; preds = %242, %221
  br label %282

244:                                              ; preds = %175
  %245 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %246 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i8* @putPaddrHigh(i32 %247)
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 3
  store i8* %248, i8** %253, align 8
  %254 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %255 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i8* @putPaddrLow(i32 %256)
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 6
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 2
  store i8* %257, i8** %262, align 8
  %263 = load i8*, i8** @BUFF_TYPE_BLP_64, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 6
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  store i8* %263, i8** %268, align 8
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 6
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  store i32 40, i32* %273, align 8
  %274 = load i64, i64* %14, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 6
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  store i64 %274, i64* %278, align 8
  %279 = load i32, i32* @CMD_XMIT_ELS_RSP64_CX, align 4
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 8
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %244, %243
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 1
  store i32 1, i32* %284, align 4
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 2
  store i32 1, i32* %286, align 8
  %287 = load i32, i32* @CLASS3, align 4
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 7
  store i32 %287, i32* %289, align 8
  %290 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %291 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %309, label %296

296:                                              ; preds = %282
  %297 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %298 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @LPFC_SLI_REV4, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %343

302:                                              ; preds = %296
  %303 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %304 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @FC_PT2PT, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %343

309:                                              ; preds = %302, %282
  %310 = load i64, i64* %10, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %330

312:                                              ; preds = %309
  %313 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %314 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 6
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  store i32 %315, i32* %319, align 8
  %320 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %321 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %320, i32 0, i32 4
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %324 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 5
  store i32 %327, i32* %329, align 8
  br label %330

330:                                              ; preds = %312, %309
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 4
  store i64 0, i64* %332, align 8
  %333 = load i64, i64* %15, align 8
  %334 = load i64, i64* @ELS_CMD_ECHO, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %339

336:                                              ; preds = %330
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 3
  store i32 0, i32* %338, align 4
  br label %342

339:                                              ; preds = %330
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 3
  store i32 1, i32* %341, align 4
  br label %342

342:                                              ; preds = %339, %336
  br label %343

343:                                              ; preds = %342, %302, %296
  %344 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %345 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = bitcast i8* %346 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %347, %struct.ulp_bde64** %21, align 8
  %348 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %349 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i8* @putPaddrLow(i32 %350)
  %352 = call i8* @le32_to_cpu(i8* %351)
  %353 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %354 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %353, i32 0, i32 2
  store i8* %352, i8** %354, align 8
  %355 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %356 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i8* @putPaddrHigh(i32 %357)
  %359 = call i8* @le32_to_cpu(i8* %358)
  %360 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %361 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %360, i32 0, i32 1
  store i8* %359, i8** %361, align 8
  %362 = load i32, i32* %11, align 4
  %363 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %364 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 1
  store i32 %362, i32* %366, align 8
  %367 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %368 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 0
  store i64 0, i64* %370, align 8
  %371 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %372 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8
  %375 = call i8* @le32_to_cpu(i8* %374)
  %376 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %377 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  store i8* %375, i8** %378, align 8
  %379 = load i64, i64* %10, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %416

381:                                              ; preds = %343
  %382 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %383 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %382, i32 1
  store %struct.ulp_bde64* %383, %struct.ulp_bde64** %21, align 8
  %384 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %385 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i8* @putPaddrLow(i32 %386)
  %388 = call i8* @le32_to_cpu(i8* %387)
  %389 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %390 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %389, i32 0, i32 2
  store i8* %388, i8** %390, align 8
  %391 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %392 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = call i8* @putPaddrHigh(i32 %393)
  %395 = call i8* @le32_to_cpu(i8* %394)
  %396 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %397 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %396, i32 0, i32 1
  store i8* %395, i8** %397, align 8
  %398 = load i32, i32* @FCELSSIZE, align 4
  %399 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %400 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 1
  store i32 %398, i32* %402, align 8
  %403 = load i64, i64* @BUFF_TYPE_BDE_64, align 8
  %404 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %405 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  store i64 %403, i64* %407, align 8
  %408 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %409 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 0
  %411 = load i8*, i8** %410, align 8
  %412 = call i8* @le32_to_cpu(i8* %411)
  %413 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %414 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 0
  store i8* %412, i8** %415, align 8
  br label %416

416:                                              ; preds = %381, %343
  %417 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %418 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %417)
  %419 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %420 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %419, i32 0, i32 7
  store i32 %418, i32* %420, align 8
  %421 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %422 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %421, i32 0, i32 7
  %423 = load i32, i32* %422, align 8
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %416
  br label %503

426:                                              ; preds = %416
  %427 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %428 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %429 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %428, i32 0, i32 6
  store %struct.lpfc_dmabuf* %427, %struct.lpfc_dmabuf** %429, align 8
  %430 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %431 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %432 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %431, i32 0, i32 5
  store %struct.lpfc_dmabuf* %430, %struct.lpfc_dmabuf** %432, align 8
  %433 = load i64, i64* %12, align 8
  %434 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %435 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %434, i32 0, i32 4
  store i64 %433, i64* %435, align 8
  %436 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %437 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %438 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %437, i32 0, i32 3
  store %struct.lpfc_vport* %436, %struct.lpfc_vport** %438, align 8
  %439 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %440 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = shl i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = load i64, i64* @LPFC_DRVR_TIMEOUT, align 8
  %445 = add nsw i64 %443, %444
  %446 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %447 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %446, i32 0, i32 2
  store i64 %445, i64* %447, align 8
  %448 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %449 = icmp ne %struct.lpfc_dmabuf* %448, null
  br i1 %449, label %450, label %456

450:                                              ; preds = %426
  %451 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %452 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %451, i32 0, i32 2
  %453 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %454 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %453, i32 0, i32 2
  %455 = call i32 @list_add(i32* %452, i32* %454)
  br label %456

456:                                              ; preds = %450, %426
  %457 = load i64, i64* %10, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %478

459:                                              ; preds = %456
  %460 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %461 = load i32, i32* @KERN_INFO, align 4
  %462 = load i32, i32* @LOG_ELS, align 4
  %463 = load i64, i64* %15, align 8
  %464 = load i64, i64* %14, align 8
  %465 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %466 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %469 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %472 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %475 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i64, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %460, i32 %461, i32 %462, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i64 %463, i64 %464, i32 %467, i32 %470, i32 %473, i32 %476)
  br label %501

478:                                              ; preds = %456
  %479 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %480 = load i32, i32* @KERN_INFO, align 4
  %481 = load i32, i32* @LOG_ELS, align 4
  %482 = load i64, i64* %15, align 8
  %483 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %484 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = sext i32 %485 to i64
  %487 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %488 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* %11, align 4
  %491 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %492 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %495 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %498 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i64, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %479, i32 %480, i32 %481, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0), i64 %482, i64 %486, i32 %489, i32 %490, i32 %493, i32 %496, i32 %499)
  br label %501

501:                                              ; preds = %478, %459
  %502 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  store %struct.lpfc_iocbq* %502, %struct.lpfc_iocbq** %8, align 8
  br label %535

503:                                              ; preds = %425, %174
  %504 = load i64, i64* %10, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %515

506:                                              ; preds = %503
  %507 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %508 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %509 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %508, i32 0, i32 1
  %510 = load i8*, i8** %509, align 8
  %511 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %512 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %507, i8* %510, i32 %513)
  br label %515

515:                                              ; preds = %506, %503
  %516 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %517 = call i32 @kfree(%struct.lpfc_dmabuf* %516)
  br label %518

518:                                              ; preds = %515, %147
  %519 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %520 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %521 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %520, i32 0, i32 1
  %522 = load i8*, i8** %521, align 8
  %523 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %524 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %519, i8* %522, i32 %525)
  %527 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %528 = call i32 @kfree(%struct.lpfc_dmabuf* %527)
  br label %529

529:                                              ; preds = %518, %119
  %530 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %531 = call i32 @kfree(%struct.lpfc_dmabuf* %530)
  %532 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %533 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %534 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %532, %struct.lpfc_iocbq* %533)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  br label %535

535:                                              ; preds = %529, %501, %35, %29
  %536 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  ret %struct.lpfc_iocbq* %536
}

declare dso_local i32 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i8* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i64, i32, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
