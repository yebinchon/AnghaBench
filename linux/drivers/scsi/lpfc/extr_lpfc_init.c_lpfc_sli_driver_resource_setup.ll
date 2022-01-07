; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli_driver_resource_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli_driver_resource_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_hba = type { i32, i32, i64, i32, i32, i32*, i32, i8*, %struct.TYPE_7__*, i64, i32, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@lpfc_poll_timeout = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@HA_MBATT = common dso_local global i32 0, align 4
@HA_LATT = common dso_local global i32 0, align 4
@HA_RXMASK = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_HORNET = common dso_local global i64 0, align 8
@HBA_MENLO_SUPPORT = common dso_local global i32 0, align 4
@LPFC_DEFAULT_MENLO_SG_SEG_CNT = common dso_local global i32 0, align 4
@LPFC_SLI3_MAX_RING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lpfc_vport_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@lpfc_template_no_hr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@lpfc_template = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_MAX_SG_SEG_CNT = common dso_local global i32 0, align 4
@LPFC_MAX_SG_SEG_CNT_DIF = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"9088 sg_tablesize:%d dmabuf_size:%d total_bde:%d\0A\00", align 1
@LPFC_MAX_VPI = common dso_local global i32 0, align 4
@BPL_ALIGN_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"lpfc_sg_dma_buf_pool\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"lpfc_cmd_rsp_buf_pool\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"2808 Requested number of SR-IOV virtual functions (%d) is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli_driver_resource_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_driver_resource_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 14
  %8 = load i32, i32* @lpfc_poll_timeout, align 4
  %9 = call i32 @timer_setup(i32* %7, i32 %8, i32 0)
  %10 = load i32, i32* @HA_ERATT, align 4
  %11 = load i32, i32* @HA_MBATT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @HA_LATT, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @HA_RXMASK, align 4
  %18 = load i32, i32* @LPFC_ELS_RING, align 4
  %19 = mul nsw i32 %18, 4
  %20 = shl i32 %17, %19
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = call i32 @lpfc_get_cfgparam(%struct.lpfc_hba* %25)
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = call i32 @lpfc_setup_driver_resource_phase1(%struct.lpfc_hba* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %243

34:                                               ; preds = %1
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCI_DEVICE_ID_HORNET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = load i32, i32* @HBA_MENLO_SUPPORT, align 4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LPFC_DEFAULT_MENLO_SG_SEG_CNT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @LPFC_DEFAULT_MENLO_SG_SEG_CNT, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %42
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 12
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @LPFC_SLI3_MAX_RING, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i64 @kcalloc(i32 %65, i32 4, i32 %66)
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 12
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %58
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 12
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %243

80:                                               ; preds = %71
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lpfc_vport_template, i32 0, i32 0), align 4
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lpfc_template_no_hr, i32 0, i32 0), align 4
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @lpfc_template, i32 0, i32 0), align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @LPFC_SLI_REV4, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  store i32 4, i32* %5, align 4
  br label %97

96:                                               ; preds = %80
  store i32 4, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %95
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 11
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load i32, i32* @LPFC_MAX_SG_SEG_CNT, align 4
  %104 = load i32, i32* %5, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = add i64 8, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @LPFC_MAX_SG_SEG_CNT_DIF, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %102
  %117 = load i32, i32* @LPFC_MAX_SG_SEG_CNT_DIF, align 4
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %102
  %121 = load i32, i32* @LPFC_MAX_SG_SEG_CNT, align 4
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  br label %142

124:                                              ; preds = %97
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 2
  %129 = load i32, i32* %5, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = add i64 8, %131
  %133 = trunc i64 %132 to i32
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 2
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %124, %120
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %144 = load i32, i32* @KERN_INFO, align 4
  %145 = load i32, i32* @LOG_INIT, align 4
  %146 = load i32, i32* @LOG_FCP, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %143, i32 %144, i32 %147, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %153, i32 %156)
  %158 = load i32, i32* @LPFC_MAX_VPI, align 4
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %160 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %159, i32 0, i32 10
  store i32 %158, i32* %160, align 8
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %162 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %161, i32 0, i32 9
  store i64 0, i64* %162, align 8
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %164 = call i32 @lpfc_sli_setup(%struct.lpfc_hba* %163)
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %166 = call i32 @lpfc_sli_queue_init(%struct.lpfc_hba* %165)
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %168 = load i32, i32* @BPL_ALIGN_SZ, align 4
  %169 = call i64 @lpfc_mem_alloc(%struct.lpfc_hba* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %142
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %243

174:                                              ; preds = %142
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @BPL_ALIGN_SZ, align 4
  %183 = call i8* @dma_pool_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %178, i32 %181, i32 %182, i32 0)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %186 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %185, i32 0, i32 5
  store i32* %184, i32** %186, align 8
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %188 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %174
  br label %238

192:                                              ; preds = %174
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i32, i32* @BPL_ALIGN_SZ, align 4
  %198 = call i8* @dma_pool_create(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %196, i32 8, i32 %197, i32 0)
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 7
  store i8* %198, i8** %200, align 8
  %201 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %202 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %201, i32 0, i32 7
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %192
  br label %231

206:                                              ; preds = %192
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %206
  %212 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba* %212, i32 %215)
  store i32 %216, i32* %4, align 4
  %217 = load i32, i32* %4, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %211
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %221 = load i32, i32* @KERN_WARNING, align 4
  %222 = load i32, i32* @LOG_INIT, align 4
  %223 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %224 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %220, i32 %221, i32 %222, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %228 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %227, i32 0, i32 6
  store i32 0, i32* %228, align 8
  br label %229

229:                                              ; preds = %219, %211
  br label %230

230:                                              ; preds = %229, %206
  store i32 0, i32* %2, align 4
  br label %243

231:                                              ; preds = %205
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %233 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %232, i32 0, i32 5
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @dma_pool_destroy(i32* %234)
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %237 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %236, i32 0, i32 5
  store i32* null, i32** %237, align 8
  br label %238

238:                                              ; preds = %231, %191
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %240 = call i32 @lpfc_mem_free(%struct.lpfc_hba* %239)
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %238, %230, %171, %77, %31
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @lpfc_get_cfgparam(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_setup_driver_resource_phase1(%struct.lpfc_hba*) #1

declare dso_local i64 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_sli_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_queue_init(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_mem_alloc(%struct.lpfc_hba*, i32) #1

declare dso_local i8* @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local i32 @lpfc_mem_free(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
