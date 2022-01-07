; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_read_fcoe_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_read_fcoe_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__*, i64, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.lpfc_mqe }
%struct.lpfc_mqe = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64* }
%struct.lpfc_dmabuf = type { i32, i32 }

@LPFC_FCOE_FCF_MAP0 = common dso_local global i32 0, align 4
@LPFC_FCOE_FCF_MAP1 = common dso_local global i32 0, align 4
@LPFC_FCOE_FCF_MAP2 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [136 x i8] c"(%d):2571 Mailbox cmd x%x Status x%x Data: x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x x%x CQ: x%x x%x x%x x%x\0A\00", align 1
@lpfc_mqe_command = common dso_local global i32 0, align 4
@lpfc_mqe_status = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMP_RGN23_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_read_fcoe_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_read_fcoe_params(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.lpfc_mqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @LPFC_FCOE_FCF_MAP0, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @LPFC_FCOE_FCF_MAP1, align 4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @LPFC_FCOE_FCF_MAP2, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i64 @mempool_alloc(i32 %28, i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %4, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %268

37:                                               ; preds = %1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store %struct.lpfc_mqe* %40, %struct.lpfc_mqe** %6, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = call i64 @lpfc_sli4_dump_cfg_rg23(%struct.lpfc_hba* %41, %struct.TYPE_13__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %261

48:                                               ; preds = %37
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %52, %struct.lpfc_dmabuf** %5, align 8
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load i32, i32* @MBX_POLL, align 4
  %56 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %53, %struct.TYPE_13__* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = load i32, i32* @KERN_INFO, align 4
  %59 = load i32, i32* @LOG_MBOX, align 4
  %60 = load i32, i32* @LOG_SLI, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %48
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  br label %73

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72, %66
  %74 = phi i32 [ %71, %66 ], [ 0, %72 ]
  %75 = load i32, i32* @lpfc_mqe_command, align 4
  %76 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %77 = call i32 @bf_get(i32 %75, %struct.lpfc_mqe* %76)
  %78 = load i32, i32* @lpfc_mqe_status, align 4
  %79 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %80 = call i32 @bf_get(i32 %78, %struct.lpfc_mqe* %79)
  %81 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %88 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %94 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %100 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %106 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 4
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %112 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 5
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %118 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %124 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 7
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %130 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 8
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %136 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 9
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %142 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 10
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %148 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 11
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %154 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 12
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %160 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 13
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %166 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 14
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %172 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 15
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %178 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 16
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 50
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %57, i32 %58, i32 %61, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77, i32 %80, i64 %86, i64 %92, i64 %98, i64 %104, i64 %110, i64 %116, i64 %122, i64 %128, i64 %134, i64 %140, i64 %146, i64 %152, i64 %158, i64 %164, i64 %170, i64 %176, i64 %182, i64 %188, i32 %192, i32 %196, i32 %200, i32 %204)
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %73
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %210 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %211 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %214 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %209, i32 %212, i32 %215)
  %217 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %218 = call i32 @kfree(%struct.lpfc_dmabuf* %217)
  %219 = load i32, i32* @EIO, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %8, align 4
  br label %261

221:                                              ; preds = %73
  %222 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %223 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 5
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %7, align 8
  %228 = load i64, i64* %7, align 8
  %229 = load i64, i64* @DMP_RGN23_SIZE, align 8
  %230 = icmp sgt i64 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %221
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %233 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %234 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %237 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %232, i32 %235, i32 %238)
  %240 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %241 = call i32 @kfree(%struct.lpfc_dmabuf* %240)
  %242 = load i32, i32* @EIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %8, align 4
  br label %261

244:                                              ; preds = %221
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %246 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %247 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i64, i64* %7, align 8
  %250 = call i32 @lpfc_parse_fcoe_conf(%struct.lpfc_hba* %245, i32 %248, i64 %249)
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %252 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %253 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %256 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %251, i32 %254, i32 %257)
  %259 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %260 = call i32 @kfree(%struct.lpfc_dmabuf* %259)
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %244, %231, %208, %45
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %264 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @mempool_free(%struct.TYPE_13__* %262, i32 %265)
  %267 = load i32, i32* %8, align 4
  store i32 %267, i32* %2, align 4
  br label %268

268:                                              ; preds = %261, %34
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i64 @lpfc_sli4_dump_cfg_rg23(%struct.lpfc_hba*, %struct.TYPE_13__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_mqe*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_parse_fcoe_conf(%struct.lpfc_hba*, i32, i64) #1

declare dso_local i32 @mempool_free(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
