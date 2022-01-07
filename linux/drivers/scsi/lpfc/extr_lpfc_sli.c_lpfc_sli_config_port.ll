; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i64, %struct.TYPE_20__*, i32, i32*, i64, i32, i32, i64, i32, %struct.TYPE_22__, i32, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_25__, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI_MBOX_ACTIVE = common dso_local global i32 0, align 4
@LPFC_VPORT_UNKNOWN = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@LPFC_LINK_UNKNOWN = common dso_local global i32 0, align 4
@LPFC_INIT_MBX_CMDS = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI3_HBQ_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI3_CRP_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI3_DSS_ENABLED = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"0442 Adapter failed to init, mbxCmd x%x CONFIG_PORT, mbxStatus x%x Data: x%x\0A\00", align 1
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@LPFC_SLI_ASYNC_MBX_BLK = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"3110 Port did not grant ASABT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"2850 Security Crypto Active. FIPS x%d (Spec Rev: x%d)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"2856 Config Port Security Crypto Error: x%x \00", align 1
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"0443 Adapter did not grant BlockGuard\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_config_port(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @mempool_alloc(i32 %12, i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 13
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %434

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %186, %84, %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %187

37:                                               ; preds = %35
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 11
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 12
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 11
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 14
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %55)
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = call i32 @lpfc_sli_chipset_init(%struct.lpfc_hba* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  br label %187

62:                                               ; preds = %37
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 11
  %65 = call i32 @spin_lock_irq(i32* %64)
  %66 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 12
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 11
  %75 = call i32 @spin_unlock_irq(i32* %74)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = call i32 @lpfc_config_port_prep(%struct.lpfc_hba* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @ERESTART, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %62
  %85 = load i32, i32* @LPFC_LINK_UNKNOWN, align 4
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 8
  br label %28

88:                                               ; preds = %62
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %187

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* @LPFC_INIT_MBX_CMDS, align 4
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 13
  store i32 %94, i32* %96, align 8
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = call i32 @lpfc_config_port(%struct.lpfc_hba* %97, %struct.TYPE_16__* %98)
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = load i32, i32* @MBX_POLL, align 4
  %103 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %100, %struct.TYPE_16__* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %105 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @LPFC_SLI3_CRP_ENABLED, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @LPFC_SLI3_DSS_ENABLED, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @MBX_SUCCESS, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %149

119:                                              ; preds = %93
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %121 = load i32, i32* @KERN_ERR, align 4
  %122 = load i32, i32* @LOG_INIT, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %132, i32 0)
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 11
  %136 = call i32 @spin_lock_irq(i32* %135)
  %137 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 12
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %138
  store i32 %143, i32* %141, align 4
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 11
  %146 = call i32 @spin_unlock_irq(i32* %145)
  %147 = load i32, i32* @ENXIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %8, align 4
  br label %186

149:                                              ; preds = %93
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 11
  %152 = call i32 @spin_lock_irq(i32* %151)
  %153 = load i32, i32* @LPFC_SLI_ASYNC_MBX_BLK, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 12
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %154
  store i32 %159, i32* %157, align 4
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %161 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %160, i32 0, i32 11
  %162 = call i32 @spin_unlock_irq(i32* %161)
  store i32 1, i32* %9, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %185

171:                                              ; preds = %149
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %171
  %181 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %182 = load i32, i32* @KERN_WARNING, align 4
  %183 = load i32, i32* @LOG_INIT, align 4
  %184 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %181, i32 %182, i32 %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %180, %171, %149
  br label %186

186:                                              ; preds = %185, %119
  br label %28

187:                                              ; preds = %91, %61, %35
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %8, align 4
  br label %427

193:                                              ; preds = %187
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 3
  br i1 %201, label %202, label %412

202:                                              ; preds = %193
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 12
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %202
  %212 = load i32, i32* @ENXIO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %8, align 4
  br label %427

214:                                              ; preds = %202
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %216 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %262

219:                                              ; preds = %214
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 11
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %262

228:                                              ; preds = %219
  %229 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 10
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %242 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %241, i32 0, i32 3
  store i64 %240, i64* %242, align 8
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %244 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %247 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %246, i32 0, i32 10
  %248 = load i64, i64* %247, align 8
  %249 = icmp sgt i64 %245, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %228
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %252 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  br label %258

254:                                              ; preds = %228
  %255 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %256 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %255, i32 0, i32 10
  %257 = load i64, i64* %256, align 8
  br label %258

258:                                              ; preds = %254, %250
  %259 = phi i64 [ %253, %250 ], [ %257, %254 ]
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %261 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %260, i32 0, i32 10
  store i64 %259, i64* %261, align 8
  br label %265

262:                                              ; preds = %219, %214
  %263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %264 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %263, i32 0, i32 3
  store i64 0, i64* %264, align 8
  br label %265

265:                                              ; preds = %262, %258
  %266 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %267 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %266, i32 0, i32 9
  store i32 0, i32* %267, align 4
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %269 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %268, i32 0, i32 8
  store i32 0, i32* %269, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 9
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %312

278:                                              ; preds = %265
  %279 = load i32, i32* @LPFC_SLI3_DSS_ENABLED, align 4
  %280 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %281 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %292 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %291, i32 0, i32 9
  store i32 %290, i32* %292, align 4
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %301 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %300, i32 0, i32 8
  store i32 %299, i32* %301, align 8
  %302 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %303 = load i32, i32* @KERN_INFO, align 4
  %304 = load i32, i32* @LOG_INIT, align 4
  %305 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %306 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %305, i32 0, i32 9
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %309 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %308, i32 0, i32 8
  %310 = load i32, i32* %309, align 8
  %311 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %302, i32 %303, i32 %304, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %307, i32 %310)
  br label %312

312:                                              ; preds = %278, %265
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 6
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %312
  %322 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %323 = load i32, i32* @KERN_ERR, align 4
  %324 = load i32, i32* @LOG_INIT, align 4
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 6
  %331 = load i64, i64* %330, align 8
  %332 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %322, i32 %323, i32 %324, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %331)
  br label %333

333:                                              ; preds = %321, %312
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 5
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %333
  %343 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %344 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %345 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %342, %333
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %348
  %358 = load i32, i32* @LPFC_SLI3_CRP_ENABLED, align 4
  %359 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %360 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 4
  br label %363

363:                                              ; preds = %357, %348
  %364 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %365 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %364, i32 0, i32 4
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 1
  %370 = load i32*, i32** %369, align 8
  %371 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %372 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %371, i32 0, i32 6
  store i32* %370, i32** %372, align 8
  %373 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %374 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %373, i32 0, i32 4
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %381 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %380, i32 0, i32 5
  store i32 %379, i32* %381, align 8
  %382 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %383 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %411

388:                                              ; preds = %363
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %388
  %398 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %399 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %398, i32 0, i32 7
  store i64 0, i64* %399, align 8
  %400 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %401 = xor i32 %400, -1
  %402 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %403 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = and i32 %404, %401
  store i32 %405, i32* %403, align 4
  %406 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %407 = load i32, i32* @KERN_ERR, align 4
  %408 = load i32, i32* @LOG_INIT, align 4
  %409 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %406, i32 %407, i32 %408, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %410

410:                                              ; preds = %397, %388
  br label %411

411:                                              ; preds = %410, %363
  br label %426

412:                                              ; preds = %193
  %413 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %414 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %413, i32 0, i32 6
  store i32* null, i32** %414, align 8
  %415 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %416 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %415, i32 0, i32 4
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %423 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %422, i32 0, i32 5
  store i32 %421, i32* %423, align 8
  %424 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %425 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %424, i32 0, i32 3
  store i64 0, i64* %425, align 8
  br label %426

426:                                              ; preds = %412, %411
  br label %427

427:                                              ; preds = %426, %211, %190
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %429 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %430 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @mempool_free(%struct.TYPE_16__* %428, i32 %431)
  %433 = load i32, i32* %8, align 4
  store i32 %433, i32* %3, align 4
  br label %434

434:                                              ; preds = %427, %18
  %435 = load i32, i32* %3, align 4
  ret i32 %435
}

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_chipset_init(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_config_port_prep(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_config_port(%struct.lpfc_hba*, %struct.TYPE_16__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
