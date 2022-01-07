; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_read_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_read_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i64, i32, i32, %struct.TYPE_13__, i32, i32, %struct.TYPE_12__*, %struct.TYPE_14__, i32*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_11__, i64, %struct.lpfc_vport* }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_vport = type { i32, i32 }
%struct.Scsi_Host = type { i32* }
%struct.lpfc_mbx_read_top = type { i64 }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32 }

@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LINK_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"1307 READ_LA mbox error x%x state x%x\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i64 0, align 8
@lpfc_mbx_read_top_att_type = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_pb = common dso_local global i32 0, align 4
@FC_BYPASSED_MODE = common dso_local global i32 0, align 4
@LPFC_ATT_LINK_UP = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_mbx_read_top_mm = common dso_local global i32 0, align 4
@LPFC_MENLO_MAINT = common dso_local global i32 0, align 4
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"1306 Link Up Event in loop back mode x%x received Data: x%x x%x x%x x%x\0A\00", align 1
@lpfc_mbx_read_top_alpa_granted = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_link_spd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"1303 Link Up Event x%x received Data: x%x x%x x%x x%x x%x x%x %d\0A\00", align 1
@lpfc_mbx_read_top_fa = common dso_local global i32 0, align 4
@LPFC_ATT_LINK_DOWN = common dso_local global i64 0, align 8
@LPFC_ATT_UNEXP_WWPN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"1308 Link Down Event in loop back mode x%x received Data: x%x x%x x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"1313 Link Down UNEXP WWPN Event x%x received Data: x%x x%x x%x x%x x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"1305 Link Down Event x%x received Data: x%x x%x x%x x%x x%x\0A\00", align 1
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"1312 Link Down Event x%x received Data: x%x x%x x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"1310 Menlo Maint Mode Link up Event x%x rcvd Data: x%x x%x x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"1311 fa %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_read_topology(%struct.lpfc_hba* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_mbx_read_top*, align 8
  %8 = alloca %struct.lpfc_sli_ring*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  store %struct.lpfc_vport* %15, %struct.lpfc_vport** %5, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %6, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %24, %struct.lpfc_dmabuf** %10, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = call %struct.lpfc_sli_ring* @lpfc_phba_elsring(%struct.lpfc_hba* %25)
  store %struct.lpfc_sli_ring* %26, %struct.lpfc_sli_ring** %8, align 8
  %27 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %28 = icmp ne %struct.lpfc_sli_ring* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = load i32, i32* @KERN_INFO, align 4
  %44 = load i32, i32* @LOG_LINK_EVENT, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %49 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %50)
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %53 = call i32 @lpfc_mbx_issue_link_down(%struct.lpfc_hba* %52)
  %54 = load i64, i64* @LPFC_HBA_ERROR, align 8
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %461

57:                                               ; preds = %36
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to %struct.lpfc_mbx_read_top*
  store %struct.lpfc_mbx_read_top* %63, %struct.lpfc_mbx_read_top** %7, align 8
  %64 = load i32, i32* @lpfc_mbx_read_top_att_type, align 4
  %65 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %66 = call i64 @bf_get(i32 %64, %struct.lpfc_mbx_read_top* %65)
  store i64 %66, i64* %11, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 10
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %72 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32* %70, i32 %73, i32 128)
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load i32, i32* @lpfc_mbx_read_top_pb, align 4
  %81 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %82 = call i64 @bf_get(i32 %80, %struct.lpfc_mbx_read_top* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %57
  %85 = load i32, i32* @FC_BYPASSED_MODE, align 4
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %97

90:                                               ; preds = %57
  %91 = load i32, i32* @FC_BYPASSED_MODE, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %94 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %90, %84
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %99 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %107 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %105, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %97
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* @LPFC_ATT_LINK_UP, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = call i32 @lpfc_linkdown(%struct.lpfc_hba* %125)
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %110
  br label %129

129:                                              ; preds = %128, %97
  %130 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %131 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %134 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @LPFC_SLI_REV4, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %169

140:                                              ; preds = %129
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 12
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @spin_lock_irqsave(i32* %142, i64 %143)
  %145 = load i32, i32* @lpfc_mbx_read_top_mm, align 4
  %146 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %147 = call i64 @bf_get(i32 %145, %struct.lpfc_mbx_read_top* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %140
  %150 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %150
  store i32 %155, i32* %153, align 8
  br label %164

156:                                              ; preds = %140
  %157 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %160 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %158
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %156, %149
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %166 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %165, i32 0, i32 12
  %167 = load i64, i64* %12, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  br label %169

169:                                              ; preds = %164, %129
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 11
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* @LPFC_ATT_LINK_UP, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %254

177:                                              ; preds = %169
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %254, label %185

185:                                              ; preds = %177
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %187 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %185
  %198 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %199 = load i32, i32* @KERN_ERR, align 4
  %200 = load i32, i32* @LOG_LINK_EVENT, align 4
  %201 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %202 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %205 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @lpfc_mbx_read_top_alpa_granted, align 4
  %208 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %209 = call i64 @bf_get(i32 %207, %struct.lpfc_mbx_read_top* %208)
  %210 = load i32, i32* @lpfc_mbx_read_top_link_spd, align 4
  %211 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %212 = call i64 @bf_get(i32 %210, %struct.lpfc_mbx_read_top* %211)
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 10
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %198, i32 %199, i32 %200, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %203, i64 %206, i64 %209, i64 %212, i32 %217)
  br label %250

219:                                              ; preds = %185
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %221 = load i32, i32* @KERN_ERR, align 4
  %222 = load i32, i32* @LOG_LINK_EVENT, align 4
  %223 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %224 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %227 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* @lpfc_mbx_read_top_alpa_granted, align 4
  %230 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %231 = call i64 @bf_get(i32 %229, %struct.lpfc_mbx_read_top* %230)
  %232 = load i32, i32* @lpfc_mbx_read_top_link_spd, align 4
  %233 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %234 = call i64 @bf_get(i32 %232, %struct.lpfc_mbx_read_top* %233)
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %236 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %235, i32 0, i32 10
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @lpfc_mbx_read_top_mm, align 4
  %241 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %242 = call i64 @bf_get(i32 %240, %struct.lpfc_mbx_read_top* %241)
  %243 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %244 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %245 = call i64 @bf_get(i32 %243, %struct.lpfc_mbx_read_top* %244)
  %246 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %247 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %220, i32 %221, i32 %222, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %225, i64 %228, i64 %231, i64 %234, i32 %239, i64 %242, i64 %245, i32 %248)
  br label %250

250:                                              ; preds = %219, %197
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %252 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %253 = call i32 @lpfc_mbx_process_link_up(%struct.lpfc_hba* %251, %struct.lpfc_mbx_read_top* %252)
  br label %352

254:                                              ; preds = %177, %169
  %255 = load i64, i64* %11, align 8
  %256 = load i64, i64* @LPFC_ATT_LINK_DOWN, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* @LPFC_ATT_UNEXP_WWPN, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %351

262:                                              ; preds = %258, %254
  %263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %264 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %263, i32 0, i32 9
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 8
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %269 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %262
  %275 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %276 = load i32, i32* @KERN_ERR, align 4
  %277 = load i32, i32* @LOG_LINK_EVENT, align 4
  %278 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %279 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %282 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %285 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %284, i32 0, i32 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %290 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %275, i32 %276, i32 %277, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i64 %280, i64 %283, i32 %288, i32 %291)
  br label %348

293:                                              ; preds = %262
  %294 = load i64, i64* %11, align 8
  %295 = load i64, i64* @LPFC_ATT_UNEXP_WWPN, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %322

297:                                              ; preds = %293
  %298 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %299 = load i32, i32* @KERN_ERR, align 4
  %300 = load i32, i32* @LOG_LINK_EVENT, align 4
  %301 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %302 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %305 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %308 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %307, i32 0, i32 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %313 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @lpfc_mbx_read_top_mm, align 4
  %316 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %317 = call i64 @bf_get(i32 %315, %struct.lpfc_mbx_read_top* %316)
  %318 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %319 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %320 = call i64 @bf_get(i32 %318, %struct.lpfc_mbx_read_top* %319)
  %321 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %298, i32 %299, i32 %300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i64 %303, i64 %306, i32 %311, i32 %314, i64 %317, i64 %320)
  br label %347

322:                                              ; preds = %293
  %323 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %324 = load i32, i32* @KERN_ERR, align 4
  %325 = load i32, i32* @LOG_LINK_EVENT, align 4
  %326 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %327 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %330 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %333 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %332, i32 0, i32 8
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %338 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @lpfc_mbx_read_top_mm, align 4
  %341 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %342 = call i64 @bf_get(i32 %340, %struct.lpfc_mbx_read_top* %341)
  %343 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %344 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %345 = call i64 @bf_get(i32 %343, %struct.lpfc_mbx_read_top* %344)
  %346 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %323, i32 %324, i32 %325, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %328, i64 %331, i32 %336, i32 %339, i64 %342, i64 %345)
  br label %347

347:                                              ; preds = %322, %297
  br label %348

348:                                              ; preds = %347, %274
  %349 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %350 = call i32 @lpfc_mbx_issue_link_down(%struct.lpfc_hba* %349)
  br label %351

351:                                              ; preds = %348, %258
  br label %352

352:                                              ; preds = %351, %250
  %353 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %354 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %429

360:                                              ; preds = %352
  %361 = load i64, i64* %11, align 8
  %362 = load i64, i64* @LPFC_ATT_LINK_UP, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %429

364:                                              ; preds = %360
  %365 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %366 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %369 = icmp ne i64 %367, %368
  br i1 %369, label %370, label %396

370:                                              ; preds = %364
  %371 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %372 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %371, i32 0, i32 9
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %373, align 8
  %376 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %377 = load i32, i32* @KERN_ERR, align 4
  %378 = load i32, i32* @LOG_LINK_EVENT, align 4
  %379 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %380 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %383 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %386 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %385, i32 0, i32 8
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %391 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %376, i32 %377, i32 %378, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %381, i64 %384, i32 %389, i32 %392)
  %394 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %395 = call i32 @lpfc_mbx_issue_link_down(%struct.lpfc_hba* %394)
  br label %399

396:                                              ; preds = %364
  %397 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %398 = call i32 @lpfc_enable_la(%struct.lpfc_hba* %397)
  br label %399

399:                                              ; preds = %396, %370
  %400 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %401 = load i32, i32* @KERN_ERR, align 4
  %402 = load i32, i32* @LOG_LINK_EVENT, align 4
  %403 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %404 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %407 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %410 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %409, i32 0, i32 8
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %415 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %400, i32 %401, i32 %402, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i64 %405, i64 %408, i32 %413, i32 %416)
  %418 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %419 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %418, i32 0, i32 7
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %399
  %423 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %424 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %423, i32 0, i32 7
  store i32 0, i32* %424, align 8
  %425 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %426 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %425, i32 0, i32 6
  %427 = call i32 @wake_up_interruptible(i32* %426)
  br label %428

428:                                              ; preds = %422, %399
  br label %429

429:                                              ; preds = %428, %360, %352
  %430 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %431 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %430, i32 0, i32 2
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @LPFC_SLI_REV4, align 8
  %434 = icmp slt i64 %432, %433
  br i1 %434, label %435, label %460

435:                                              ; preds = %429
  %436 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %437 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %438 = call i64 @bf_get(i32 %436, %struct.lpfc_mbx_read_top* %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %460

440:                                              ; preds = %435
  %441 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %442 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %441, i32 0, i32 5
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %440
  %449 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %450 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %451 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %449, %struct.lpfc_vport* %450)
  br label %452

452:                                              ; preds = %448, %440
  %453 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %454 = load i32, i32* @KERN_INFO, align 4
  %455 = load i32, i32* @LOG_LINK_EVENT, align 4
  %456 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %457 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %458 = call i64 @bf_get(i32 %456, %struct.lpfc_mbx_read_top* %457)
  %459 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %453, i32 %454, i32 %455, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 %458)
  br label %460

460:                                              ; preds = %452, %435, %429
  br label %461

461:                                              ; preds = %460, %41
  %462 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %463 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %464 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %467 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %462, i32 %465, i32 %468)
  %470 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %471 = call i32 @kfree(%struct.lpfc_dmabuf* %470)
  %472 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %473 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %474 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @mempool_free(%struct.TYPE_16__* %472, i32 %475)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_sli_ring* @lpfc_phba_elsring(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @lpfc_mbx_issue_link_down(%struct.lpfc_hba*) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_mbx_read_top*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_linkdown(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_mbx_process_link_up(%struct.lpfc_hba*, %struct.lpfc_mbx_read_top*) #1

declare dso_local i32 @lpfc_enable_la(%struct.lpfc_hba*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
