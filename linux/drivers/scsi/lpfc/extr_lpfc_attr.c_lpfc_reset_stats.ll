; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32, i32, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32, i32, %struct.lpfc_lnk_stat }
%struct.lpfc_lnk_stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.lpfc_vport*, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i8*, i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@LPFC_BLOCK_MGMT_IO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MBX_READ_STATUS = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i8* null, align 8
@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@MBX_READ_LNK_STAT = common dso_local global i32 0, align 4
@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @lpfc_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_reset_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli*, align 8
  %6 = alloca %struct.lpfc_lnk_stat*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %3, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %15, align 8
  store %struct.lpfc_hba* %16, %struct.lpfc_hba** %4, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 5
  store %struct.lpfc_sli* %18, %struct.lpfc_sli** %5, align 8
  %19 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %19, i32 0, i32 2
  store %struct.lpfc_lnk_stat* %20, %struct.lpfc_lnk_stat** %6, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LPFC_BLOCK_MGMT_IO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %235

29:                                               ; preds = %1
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.TYPE_15__* @mempool_alloc(i32 %32, i32 %33)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %7, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %235

38:                                               ; preds = %29
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = call i32 @memset(%struct.TYPE_15__* %39, i32 0, i32 64)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %8, align 8
  %44 = load i32, i32* @MBX_READ_STATUS, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** @OWN_HOST, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store %struct.lpfc_vport* %57, %struct.lpfc_vport** %59, align 8
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %38
  %67 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %66, %38
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = load i32, i32* @MBX_POLL, align 4
  %77 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %74, %struct.TYPE_15__* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %86

78:                                               ; preds = %66
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 2
  %85 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %79, %struct.TYPE_15__* %80, i32 %84)
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @MBX_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @MBX_TIMEOUT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mempool_free(%struct.TYPE_15__* %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %90
  br label %235

101:                                              ; preds = %86
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %103 = call i32 @memset(%struct.TYPE_15__* %102, i32 0, i32 64)
  %104 = load i32, i32* @MBX_READ_LNK_STAT, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** @OWN_HOST, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store %struct.lpfc_vport* %112, %struct.lpfc_vport** %114, align 8
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %116 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %101
  %122 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %123 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %121, %101
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %131 = load i32, i32* @MBX_POLL, align 4
  %132 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %129, %struct.TYPE_15__* %130, i32 %131)
  store i32 %132, i32* %9, align 4
  br label %141

133:                                              ; preds = %121
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %138, 2
  %140 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %134, %struct.TYPE_15__* %135, i32 %139)
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %133, %128
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @MBX_SUCCESS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @MBX_TIMEOUT, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @mempool_free(%struct.TYPE_15__* %150, i32 %153)
  br label %155

155:                                              ; preds = %149, %145
  br label %235

156:                                              ; preds = %141
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %163 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %170 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %177 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %191 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %198 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %205 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %207 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @HBA_FCOE_MODE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %156
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = ashr i32 %215, 1
  %217 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %218 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 4
  br label %226

219:                                              ; preds = %156
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %221 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = ashr i32 %222, 1
  %224 = load %struct.lpfc_lnk_stat*, %struct.lpfc_lnk_stat** %6, align 8
  %225 = getelementptr inbounds %struct.lpfc_lnk_stat, %struct.lpfc_lnk_stat* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %219, %212
  %227 = call i32 (...) @ktime_get_seconds()
  %228 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %229 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %232 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @mempool_free(%struct.TYPE_15__* %230, i32 %233)
  br label %235

235:                                              ; preds = %226, %155, %100, %37, %28
  ret void
}

declare dso_local %struct.TYPE_15__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ktime_get_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
