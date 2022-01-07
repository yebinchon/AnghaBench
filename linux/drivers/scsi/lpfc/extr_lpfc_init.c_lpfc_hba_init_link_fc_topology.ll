; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_init_link_fc_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_init_link_fc_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, i32, i8*, i32, i32, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.lpfc_vport*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_MAX = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_1G = common dso_local global i32 0, align 4
@LMT_1Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_2G = common dso_local global i32 0, align 4
@LMT_2Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_4G = common dso_local global i32 0, align 4
@LMT_4Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_8G = common dso_local global i32 0, align 4
@LMT_8Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_10G = common dso_local global i32 0, align 4
@LMT_10Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_16G = common dso_local global i32 0, align 4
@LMT_16Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_32G = common dso_local global i32 0, align 4
@LMT_32Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_64G = common dso_local global i32 0, align 4
@LMT_64Gb = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LINK_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"1302 Invalid speed for this board:%d Reset link speed to auto.\0A\00", align 1
@LPFC_USER_LINK_SPEED_AUTO = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@MBX_BUSY = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"0498 Adapter failed to init, mbxCmd x%x INIT_LINK, mbxStatus x%x\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@MBX_POLL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LPFC_INITIALIZE_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_hba_init_link_fc_topology(%struct.lpfc_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %13, align 8
  store %struct.lpfc_vport* %14, %struct.lpfc_vport** %8, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_10__* @mempool_alloc(i32 %17, i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %253

28:                                               ; preds = %3
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %10, align 8
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store %struct.lpfc_vport* %32, %struct.lpfc_vport** %34, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LPFC_USER_LINK_SPEED_MAX, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %144, label %40

40:                                               ; preds = %28
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LPFC_USER_LINK_SPEED_1G, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LMT_1Gb, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %144

53:                                               ; preds = %46, %40
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @LPFC_USER_LINK_SPEED_2G, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LMT_2Gb, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %144

66:                                               ; preds = %59, %53
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @LPFC_USER_LINK_SPEED_4G, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LMT_4Gb, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %72, %66
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @LPFC_USER_LINK_SPEED_8G, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @LMT_8Gb, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %85, %79
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @LPFC_USER_LINK_SPEED_10G, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @LMT_10Gb, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %144

105:                                              ; preds = %98, %92
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @LPFC_USER_LINK_SPEED_16G, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @LMT_16Gb, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %144

118:                                              ; preds = %111, %105
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @LPFC_USER_LINK_SPEED_32G, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @LMT_32Gb, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124, %118
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @LPFC_USER_LINK_SPEED_64G, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %131
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %139 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @LMT_64Gb, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %137, %124, %111, %98, %85, %72, %59, %46, %28
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %146 = load i32, i32* @KERN_ERR, align 4
  %147 = load i32, i32* @LOG_LINK_EVENT, align 4
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @LPFC_USER_LINK_SPEED_AUTO, align 4
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %144, %137, %131
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %160 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @lpfc_init_link(%struct.lpfc_hba* %156, %struct.TYPE_10__* %157, i32 %158, i32 %161)
  %163 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %167 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @LPFC_SLI_REV4, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %155
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %173 = call i32 @lpfc_set_loopback_flag(%struct.lpfc_hba* %172)
  br label %174

174:                                              ; preds = %171, %155
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %175, %struct.TYPE_10__* %176, i32 %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @MBX_BUSY, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %239

182:                                              ; preds = %174
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @MBX_SUCCESS, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %239

186:                                              ; preds = %182
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %188 = load i32, i32* @KERN_ERR, align 4
  %189 = load i32, i32* @LOG_INIT, align 4
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %192, i32 %195)
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %198 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @LPFC_SLI_REV3, align 8
  %201 = icmp sle i64 %199, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %186
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %204 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @writel(i32 0, i32 %205)
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @readl(i32 %209)
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %212 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @writel(i32 -1, i32 %213)
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %216 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @readl(i32 %217)
  br label %219

219:                                              ; preds = %202, %186
  %220 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %222 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %221, i32 0, i32 4
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @MBX_BUSY, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %230, label %226

226:                                              ; preds = %219
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @MBX_POLL, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %226, %219
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %233 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @mempool_free(%struct.TYPE_10__* %231, i32 %234)
  br label %236

236:                                              ; preds = %230, %226
  %237 = load i32, i32* @EIO, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  br label %253

239:                                              ; preds = %182, %174
  %240 = load i32, i32* @LPFC_INITIALIZE_LINK, align 4
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %242 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %241, i32 0, i32 3
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @MBX_POLL, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %239
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %249 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @mempool_free(%struct.TYPE_10__* %247, i32 %250)
  br label %252

252:                                              ; preds = %246, %239
  store i32 0, i32* %4, align 4
  br label %253

253:                                              ; preds = %252, %236, %22
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local %struct.TYPE_10__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_init_link(%struct.lpfc_hba*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @lpfc_set_loopback_flag(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
