; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_create_static_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_create_static_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32 }
%struct.fc_vport_identifiers = type { i32, i64, i32, i32, i8*, i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_14__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.static_vport_info = type { i32, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.fc_vport = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32, %struct.TYPE_13__*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"0542 lpfc_create_static_vport failed to allocate mailbox memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"0543 lpfc_create_static_vport failed to allocate vport_info\0A\00", align 1
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [89 x i8] c"0544 lpfc_create_static_vport failed to issue dump mailbox command ret 0x%x status 0x%x\0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@DMP_RSP_OFFSET = common dso_local global i32 0, align 4
@VPORT_INFO_SIG = common dso_local global i32 0, align 4
@VPORT_INFO_REV_MASK = common dso_local global i32 0, align 4
@VPORT_INFO_REV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"0545 lpfc_create_static_vport bad information header 0x%x 0x%x\0A\00", align 1
@MAX_STATIC_VPORT_COUNT = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_PORTTYPE_NPIV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"0546 lpfc_create_static_vport failed to create vport\0A\00", align 1
@STATIC_VPORT = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_create_static_vport(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.fc_vport_identifiers*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.static_vport_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fc_vport_identifiers, align 8
  %9 = alloca %struct.fc_vport*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.lpfc_dmabuf*, align 8
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  store %struct.fc_vport_identifiers* null, %struct.fc_vport_identifiers** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.fc_vport_identifiers* @mempool_alloc(i32 %18, i32 %19)
  store %struct.fc_vport_identifiers* %20, %struct.fc_vport_identifiers** %3, align 8
  %21 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %22 = icmp ne %struct.fc_vport_identifiers* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load i32, i32* @LOG_INIT, align 4
  %27 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %333

28:                                               ; preds = %1
  %29 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %30 = call i32 @memset(%struct.fc_vport_identifiers* %29, i32 0, i32 72)
  %31 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %32 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %4, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.static_vport_info* @kzalloc(i32 24, i32 %34)
  store %struct.static_vport_info* %35, %struct.static_vport_info** %5, align 8
  %36 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %37 = icmp ne %struct.static_vport_info* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load i32, i32* @LOG_INIT, align 4
  %42 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mempool_free(%struct.fc_vport_identifiers* %43, i32 %46)
  br label %333

48:                                               ; preds = %28
  %49 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %50 = bitcast %struct.static_vport_info* %49 to i32*
  store i32* %50, i32** %13, align 8
  br label %51

51:                                               ; preds = %197, %48
  %52 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %53 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %58 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %60, %struct.lpfc_dmabuf** %14, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %62 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %63 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %66 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %61, i32 %64, i32 %67)
  %69 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %70 = bitcast %struct.lpfc_dmabuf* %69 to %struct.static_vport_info*
  %71 = call i32 @kfree(%struct.static_vport_info* %70)
  br label %72

72:                                               ; preds = %56, %51
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %74 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @lpfc_dump_static_vport(%struct.lpfc_hba* %73, %struct.fc_vport_identifiers* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %299

79:                                               ; preds = %72
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %84 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %86 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %87 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %88 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %85, %struct.fc_vport_identifiers* %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MBX_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %79
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92, %79
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %99 = load i32, i32* @KERN_WARNING, align 4
  %100 = load i32, i32* @LOG_INIT, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %101, i64 %104)
  br label %299

106:                                              ; preds = %92
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @LPFC_SLI_REV4, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %149

112:                                              ; preds = %106
  %113 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %114 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %15, align 4
  %121 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %122 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %124, %struct.lpfc_dmabuf** %14, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 24, %128
  %130 = icmp ugt i64 %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %112
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 24, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %131, %112
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %142 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @memcpy(i32* %140, i32 %143, i32 %144)
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %12, align 4
  br label %189

149:                                              ; preds = %106
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 24, %157
  %159 = icmp ugt i64 %155, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %149
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 24, %162
  %164 = trunc i64 %163 to i32
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 8
  br label %169

169:                                              ; preds = %160, %149
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %15, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = bitcast %struct.TYPE_14__* %175 to i32*
  %177 = load i32, i32* @DMP_RSP_OFFSET, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32*, i32** %13, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @lpfc_sli_pcimem_bcopy(i32* %179, i32* %183, i32 %184)
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %169, %136
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ult i64 %195, 24
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i1 [ false, %190 ], [ %196, %193 ]
  br i1 %198, label %51, label %199

199:                                              ; preds = %197
  %200 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %201 = getelementptr inbounds %struct.static_vport_info, %struct.static_vport_info* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @le32_to_cpu(i32 %202)
  %204 = load i32, i32* @VPORT_INFO_SIG, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %215, label %206

206:                                              ; preds = %199
  %207 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %208 = getelementptr inbounds %struct.static_vport_info, %struct.static_vport_info* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @le32_to_cpu(i32 %209)
  %211 = load i32, i32* @VPORT_INFO_REV_MASK, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* @VPORT_INFO_REV, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %206, %199
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %217 = load i32, i32* @KERN_ERR, align 4
  %218 = load i32, i32* @LOG_INIT, align 4
  %219 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %220 = getelementptr inbounds %struct.static_vport_info, %struct.static_vport_info* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @le32_to_cpu(i32 %221)
  %223 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %224 = getelementptr inbounds %struct.static_vport_info, %struct.static_vport_info* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @le32_to_cpu(i32 %225)
  %227 = load i32, i32* @VPORT_INFO_REV_MASK, align 4
  %228 = and i32 %226, %227
  %229 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %216, i32 %217, i32 %218, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %222, i32 %228)
  br label %299

230:                                              ; preds = %206
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %232 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call %struct.Scsi_Host* @lpfc_shost_from_vport(i32 %233)
  store %struct.Scsi_Host* %234, %struct.Scsi_Host** %10, align 8
  store i32 0, i32* %7, align 4
  br label %235

235:                                              ; preds = %295, %230
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @MAX_STATIC_VPORT_COUNT, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %298

239:                                              ; preds = %235
  %240 = call i32 @memset(%struct.fc_vport_identifiers* %8, i32 0, i32 72)
  %241 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %242 = getelementptr inbounds %struct.static_vport_info, %struct.static_vport_info* %241, i32 0, i32 2
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @wwn_to_u64(i32 %248)
  %250 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %8, i32 0, i32 5
  store i8* %249, i8** %250, align 8
  %251 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %252 = getelementptr inbounds %struct.static_vport_info, %struct.static_vport_info* %251, i32 0, i32 2
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i8* @wwn_to_u64(i32 %258)
  %260 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %8, i32 0, i32 4
  store i8* %259, i8** %260, align 8
  %261 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %8, i32 0, i32 5
  %262 = load i8*, i8** %261, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %239
  %265 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %8, i32 0, i32 4
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %264, %239
  br label %295

269:                                              ; preds = %264
  %270 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %271 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %8, i32 0, i32 3
  store i32 %270, i32* %271, align 4
  %272 = load i32, i32* @FC_PORTTYPE_NPIV, align 4
  %273 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %8, i32 0, i32 2
  store i32 %272, i32* %273, align 8
  %274 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %8, i32 0, i32 0
  store i32 0, i32* %274, align 8
  %275 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %276 = call %struct.fc_vport* @fc_vport_create(%struct.Scsi_Host* %275, i32 0, %struct.fc_vport_identifiers* %8)
  store %struct.fc_vport* %276, %struct.fc_vport** %9, align 8
  %277 = load %struct.fc_vport*, %struct.fc_vport** %9, align 8
  %278 = icmp ne %struct.fc_vport* %277, null
  br i1 %278, label %284, label %279

279:                                              ; preds = %269
  %280 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %281 = load i32, i32* @KERN_WARNING, align 4
  %282 = load i32, i32* @LOG_INIT, align 4
  %283 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %280, i32 %281, i32 %282, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %295

284:                                              ; preds = %269
  %285 = load %struct.fc_vport*, %struct.fc_vport** %9, align 8
  %286 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to %struct.lpfc_vport**
  %289 = load %struct.lpfc_vport*, %struct.lpfc_vport** %288, align 8
  store %struct.lpfc_vport* %289, %struct.lpfc_vport** %11, align 8
  %290 = load i32, i32* @STATIC_VPORT, align 4
  %291 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %292 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %284, %279, %268
  %296 = load i32, i32* %7, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %7, align 4
  br label %235

298:                                              ; preds = %235
  br label %299

299:                                              ; preds = %298, %215, %97, %78
  %300 = load %struct.static_vport_info*, %struct.static_vport_info** %5, align 8
  %301 = call i32 @kfree(%struct.static_vport_info* %300)
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* @MBX_TIMEOUT, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %332

305:                                              ; preds = %299
  %306 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %307 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %326

310:                                              ; preds = %305
  %311 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %312 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = inttoptr i64 %313 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %314, %struct.lpfc_dmabuf** %14, align 8
  %315 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %316 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %317 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %320 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %315, i32 %318, i32 %321)
  %323 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %324 = bitcast %struct.lpfc_dmabuf* %323 to %struct.static_vport_info*
  %325 = call i32 @kfree(%struct.static_vport_info* %324)
  br label %326

326:                                              ; preds = %310, %305
  %327 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %3, align 8
  %328 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %329 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @mempool_free(%struct.fc_vport_identifiers* %327, i32 %330)
  br label %332

332:                                              ; preds = %326, %299
  br label %333

333:                                              ; preds = %332, %38, %23
  ret void
}

declare dso_local %struct.fc_vport_identifiers* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.fc_vport_identifiers*, i32, i32) #1

declare dso_local %struct.static_vport_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mempool_free(%struct.fc_vport_identifiers*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.static_vport_info*) #1

declare dso_local i64 @lpfc_dump_static_vport(%struct.lpfc_hba*, %struct.fc_vport_identifiers*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.fc_vport_identifiers*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(i32*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(i32) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local %struct.fc_vport* @fc_vport_create(%struct.Scsi_Host*, i32, %struct.fc_vport_identifiers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
