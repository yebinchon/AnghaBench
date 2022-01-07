; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli_issue_iocb_s3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli_issue_iocb_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.lpfc_iocbq = type { i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@CMD_ABORT_XRI_CN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"1807 IOCB x%x failed. No vport\0A\00", align 1
@IOCB_ERROR = common dso_local global i32 0, align 4
@DEFER_ERATT = common dso_local global i32 0, align 4
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_MENLO_MAINT = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CMD = common dso_local global i32 0, align 4
@MENLO_TRANSPORT_TYPE = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@SLI_IOCB_RET_IOCB = common dso_local global i64 0, align 8
@IOCB_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64, %struct.lpfc_iocbq*, i64)* @__lpfc_sli_issue_iocb_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lpfc_sli_issue_iocb_s3(%struct.lpfc_hba* %0, i64 %1, %struct.lpfc_iocbq* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %16, i64 %17
  store %struct.lpfc_sli_ring* %18, %struct.lpfc_sli_ring** %12, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 4
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %4
  %27 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %28 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %26
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CMD_ABORT_XRI_CN, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %31
  %39 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %40 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 134
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load i32, i32* @LOG_SLI, align 4
  %48 = load i32, i32* @LOG_VPORT, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %45, i32 %46, i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = call i32 (...) @dump_stack()
  %56 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %56, i32* %5, align 4
  br label %231

57:                                               ; preds = %38, %31, %26, %4
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pci_channel_offline(i32 %60)
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %65, i32* %5, align 4
  br label %231

66:                                               ; preds = %57
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DEFER_ERATT, align 4
  %71 = and i32 %69, %70
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %75, i32* %5, align 4
  br label %231

76:                                               ; preds = %66
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %81 = icmp slt i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %86, i32* %5, align 4
  br label %231

87:                                               ; preds = %76
  %88 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %89 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %92 = and i32 %90, %91
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %212

96:                                               ; preds = %87
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %154

105:                                              ; preds = %96
  %106 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %107 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %152 [
    i32 131, label %110
    i32 130, label %110
    i32 128, label %142
    i32 129, label %142
    i32 132, label %151
    i32 134, label %151
    i32 133, label %151
  ]

110:                                              ; preds = %105, %105
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %110
  %119 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %120 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FC_RCTL_DD_UNSOL_CMD, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %140, label %129

129:                                              ; preds = %118
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %131 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MENLO_TRANSPORT_TYPE, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %129, %118, %110
  br label %212

141:                                              ; preds = %129
  br label %153

142:                                              ; preds = %105, %105
  %143 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %144 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %149 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %147, %142
  br label %151

151:                                              ; preds = %105, %105, %105, %150
  br label %153

152:                                              ; preds = %105
  br label %212

153:                                              ; preds = %151, %141
  br label %176

154:                                              ; preds = %96
  %155 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %156 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @LPFC_FCP_RING, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %154
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %162 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br label %169

169:                                              ; preds = %160, %154
  %170 = phi i1 [ false, %154 ], [ %168, %160 ]
  %171 = zext i1 %170 to i32
  %172 = call i64 @unlikely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %212

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %153
  br label %177

177:                                              ; preds = %189, %176
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %179 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %180 = call i32* @lpfc_sli_next_iocb_slot(%struct.lpfc_hba* %178, %struct.lpfc_sli_ring* %179)
  store i32* %180, i32** %11, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %184 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %185 = call %struct.lpfc_iocbq* @lpfc_sli_next_iocb(%struct.lpfc_hba* %183, %struct.lpfc_sli_ring* %184, %struct.lpfc_iocbq** %8)
  store %struct.lpfc_iocbq* %185, %struct.lpfc_iocbq** %10, align 8
  %186 = icmp ne %struct.lpfc_iocbq* %185, null
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi i1 [ false, %177 ], [ %186, %182 ]
  br i1 %188, label %189, label %195

189:                                              ; preds = %187
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %191 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %194 = call i32 @lpfc_sli_submit_iocb(%struct.lpfc_hba* %190, %struct.lpfc_sli_ring* %191, i32* %192, %struct.lpfc_iocbq* %193)
  br label %177

195:                                              ; preds = %187
  %196 = load i32*, i32** %11, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %200 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %201 = call i32 @lpfc_sli_update_ring(%struct.lpfc_hba* %199, %struct.lpfc_sli_ring* %200)
  br label %206

202:                                              ; preds = %195
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %204 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %205 = call i32 @lpfc_sli_update_full_ring(%struct.lpfc_hba* %203, %struct.lpfc_sli_ring* %204)
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %208 = icmp ne %struct.lpfc_iocbq* %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* @IOCB_SUCCESS, align 4
  store i32 %210, i32* %5, align 4
  br label %231

211:                                              ; preds = %206
  br label %218

212:                                              ; preds = %174, %152, %140, %95
  %213 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %214 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %211
  %219 = load i64, i64* %9, align 8
  %220 = load i64, i64* @SLI_IOCB_RET_IOCB, align 8
  %221 = and i64 %219, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %218
  %224 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %225 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %226 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %227 = call i32 @__lpfc_sli_ringtx_put(%struct.lpfc_hba* %224, %struct.lpfc_sli_ring* %225, %struct.lpfc_iocbq* %226)
  %228 = load i32, i32* @IOCB_SUCCESS, align 4
  store i32 %228, i32* %5, align 4
  br label %231

229:                                              ; preds = %218
  %230 = load i32, i32* @IOCB_BUSY, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %229, %223, %209, %85, %74, %64, %44
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32* @lpfc_sli_next_iocb_slot(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_next_iocb(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq**) #1

declare dso_local i32 @lpfc_sli_submit_iocb(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_update_ring(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @lpfc_sli_update_full_ring(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @__lpfc_sli_ringtx_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
