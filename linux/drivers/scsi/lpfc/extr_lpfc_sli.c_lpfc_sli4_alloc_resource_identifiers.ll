; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_alloc_resource_identifiers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_alloc_resource_identifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@lpfc_idx_rsrc_rdy = common dso_local global i32 0, align 4
@LPFC_IDX_RSRC_RDY = common dso_local global i64 0, align 8
@LPFC_RSC_TYPE_FCOE_VFI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_VPI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_XRI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_RPI = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"2931 Detected extent resource change.  Reallocating all extents.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"3279 Invalid provisioning of rpi:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"3280 Invalid provisioning of vpi:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"3281 Invalid provisioning of xri:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"3282 Invalid provisioning of vfi:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_alloc_resource_identifiers(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %138

30:                                               ; preds = %24
  %31 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  %35 = call i64 @bf_get(i32 %31, i32* %34)
  %36 = load i64, i64* @LPFC_IDX_RSRC_RDY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %30
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VFI, align 4
  %41 = call i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VPI, align 4
  %50 = call i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = load i32, i32* @LPFC_RSC_TYPE_FCOE_XRI, align 4
  %59 = call i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = load i32, i32* @LPFC_RSC_TYPE_FCOE_RPI, align 4
  %68 = call i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load i32, i32* @LOG_MBOX, align 4
  %81 = load i32, i32* @LOG_INIT, align 4
  %82 = or i32 %80, %81
  %83 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %78, i32 %79, i32 %82, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VFI, align 4
  %86 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %84, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VPI, align 4
  %89 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = load i32, i32* @LPFC_RSC_TYPE_FCOE_XRI, align 4
  %92 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %94 = load i32, i32* @LPFC_RSC_TYPE_FCOE_RPI, align 4
  %95 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %570

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %30
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %100 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VFI, align 4
  %101 = call i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %568

106:                                              ; preds = %98
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %108 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VPI, align 4
  %109 = call i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba* %107, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %568

114:                                              ; preds = %106
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = load i32, i32* @LPFC_RSC_TYPE_FCOE_RPI, align 4
  %117 = call i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba* %115, i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %568

122:                                              ; preds = %114
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %124 = load i32, i32* @LPFC_RSC_TYPE_FCOE_XRI, align 4
  %125 = call i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba* %123, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %568

130:                                              ; preds = %122
  %131 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 7
  %135 = load i64, i64* @LPFC_IDX_RSRC_RDY, align 8
  %136 = call i32 @bf_set(i32 %131, i32* %134, i64 %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %570

138:                                              ; preds = %24
  %139 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 7
  %143 = call i64 @bf_get(i32 %139, i32* %142)
  %144 = load i64, i64* @LPFC_IDX_RSRC_RDY, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %148 = call i32 @lpfc_sli4_dealloc_resource_identifiers(%struct.lpfc_hba* %147)
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = call i32 @lpfc_sli4_remove_rpis(%struct.lpfc_hba* %149)
  br label %151

151:                                              ; preds = %146, %138
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %161 = load i32, i32* @KERN_ERR, align 4
  %162 = load i32, i32* @LOG_SLI, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  br label %568

167:                                              ; preds = %151
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %169 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @BITS_PER_LONG, align 4
  %175 = add nsw i32 %173, %174
  %176 = sub nsw i32 %175, 1
  %177 = load i32, i32* @BITS_PER_LONG, align 4
  %178 = sdiv i32 %176, %177
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %9, align 8
  %180 = load i64, i64* %9, align 8
  %181 = trunc i64 %180 to i32
  %182 = load i32, i32* @GFP_KERNEL, align 4
  %183 = call i8* @kcalloc(i32 %181, i32 8, i32 %182)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %186 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  store i32* %184, i32** %187, align 8
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %189 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = icmp ne i32* %191, null
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %167
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %568

200:                                              ; preds = %167
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @GFP_KERNEL, align 4
  %203 = call i8* @kcalloc(i32 %201, i32 4, i32 %202)
  %204 = bitcast i8* %203 to i32*
  %205 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %206 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  store i32* %204, i32** %207, align 8
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %209 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %200
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %5, align 4
  br label %559

220:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %236, %220
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %221
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %226, %227
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %230 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %4, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %228, i32* %235, align 4
  br label %236

236:                                              ; preds = %225
  %237 = load i32, i32* %4, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %4, align 4
  br label %221

239:                                              ; preds = %221
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %241 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %239
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %249 = load i32, i32* @KERN_ERR, align 4
  %250 = load i32, i32* @LOG_SLI, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %248, i32 %249, i32 %250, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %5, align 4
  br label %550

255:                                              ; preds = %239
  %256 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %257 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @BITS_PER_LONG, align 4
  %263 = add nsw i32 %261, %262
  %264 = sub nsw i32 %263, 1
  %265 = load i32, i32* @BITS_PER_LONG, align 4
  %266 = sdiv i32 %264, %265
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %9, align 8
  %268 = load i64, i64* %9, align 8
  %269 = trunc i64 %268 to i32
  %270 = load i32, i32* @GFP_KERNEL, align 4
  %271 = call i8* @kcalloc(i32 %269, i32 8, i32 %270)
  %272 = bitcast i8* %271 to i32*
  %273 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %274 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %273, i32 0, i32 0
  store i32* %272, i32** %274, align 8
  %275 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %276 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = icmp ne i32* %277, null
  %279 = xor i1 %278, true
  %280 = zext i1 %279 to i32
  %281 = call i64 @unlikely(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %255
  %284 = load i32, i32* @ENOMEM, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %5, align 4
  br label %550

286:                                              ; preds = %255
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @GFP_KERNEL, align 4
  %289 = call i8* @kcalloc(i32 %287, i32 4, i32 %288)
  %290 = bitcast i8* %289 to i32*
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %292 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %291, i32 0, i32 1
  store i32* %290, i32** %292, align 8
  %293 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %294 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = icmp ne i32* %295, null
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  %299 = call i64 @unlikely(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %286
  %302 = load i32, i32* @ENOMEM, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %5, align 4
  br label %543

304:                                              ; preds = %286
  store i32 0, i32* %4, align 4
  br label %305

305:                                              ; preds = %319, %304
  %306 = load i32, i32* %4, align 4
  %307 = load i32, i32* %7, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %322

309:                                              ; preds = %305
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* %4, align 4
  %312 = add nsw i32 %310, %311
  %313 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %314 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %4, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  store i32 %312, i32* %318, align 4
  br label %319

319:                                              ; preds = %309
  %320 = load i32, i32* %4, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %4, align 4
  br label %305

322:                                              ; preds = %305
  %323 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %324 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  store i32 %327, i32* %7, align 4
  %328 = load i32, i32* %7, align 4
  %329 = icmp sle i32 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %322
  %331 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %332 = load i32, i32* @KERN_ERR, align 4
  %333 = load i32, i32* @LOG_SLI, align 4
  %334 = load i32, i32* %7, align 4
  %335 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %331, i32 %332, i32 %333, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %334)
  %336 = load i32, i32* @EINVAL, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %5, align 4
  br label %536

338:                                              ; preds = %322
  %339 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %340 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %8, align 4
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* @BITS_PER_LONG, align 4
  %346 = add nsw i32 %344, %345
  %347 = sub nsw i32 %346, 1
  %348 = load i32, i32* @BITS_PER_LONG, align 4
  %349 = sdiv i32 %347, %348
  %350 = sext i32 %349 to i64
  store i64 %350, i64* %9, align 8
  %351 = load i64, i64* %9, align 8
  %352 = trunc i64 %351 to i32
  %353 = load i32, i32* @GFP_KERNEL, align 4
  %354 = call i8* @kcalloc(i32 %352, i32 8, i32 %353)
  %355 = bitcast i8* %354 to i32*
  %356 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %357 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 3
  store i32* %355, i32** %358, align 8
  %359 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %360 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 3
  %362 = load i32*, i32** %361, align 8
  %363 = icmp ne i32* %362, null
  %364 = xor i1 %363, true
  %365 = zext i1 %364 to i32
  %366 = call i64 @unlikely(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %338
  %369 = load i32, i32* @ENOMEM, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %5, align 4
  br label %536

371:                                              ; preds = %338
  %372 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %373 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 8
  store i64 0, i64* %375, align 8
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* @GFP_KERNEL, align 4
  %378 = call i8* @kcalloc(i32 %376, i32 4, i32 %377)
  %379 = bitcast i8* %378 to i32*
  %380 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %381 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 4
  store i32* %379, i32** %382, align 8
  %383 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %384 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 4
  %386 = load i32*, i32** %385, align 8
  %387 = icmp ne i32* %386, null
  %388 = xor i1 %387, true
  %389 = zext i1 %388 to i32
  %390 = call i64 @unlikely(i32 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %371
  %393 = load i32, i32* @ENOMEM, align 4
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %5, align 4
  br label %527

395:                                              ; preds = %371
  store i32 0, i32* %4, align 4
  br label %396

396:                                              ; preds = %411, %395
  %397 = load i32, i32* %4, align 4
  %398 = load i32, i32* %7, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %414

400:                                              ; preds = %396
  %401 = load i32, i32* %8, align 4
  %402 = load i32, i32* %4, align 4
  %403 = add nsw i32 %401, %402
  %404 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %405 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 4
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %4, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  store i32 %403, i32* %410, align 4
  br label %411

411:                                              ; preds = %400
  %412 = load i32, i32* %4, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %4, align 4
  br label %396

414:                                              ; preds = %396
  %415 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %416 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 6
  %419 = load i32, i32* %418, align 8
  store i32 %419, i32* %7, align 4
  %420 = load i32, i32* %7, align 4
  %421 = icmp sle i32 %420, 0
  br i1 %421, label %422, label %430

422:                                              ; preds = %414
  %423 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %424 = load i32, i32* @KERN_ERR, align 4
  %425 = load i32, i32* @LOG_SLI, align 4
  %426 = load i32, i32* %7, align 4
  %427 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %423, i32 %424, i32 %425, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %426)
  %428 = load i32, i32* @EINVAL, align 4
  %429 = sub nsw i32 0, %428
  store i32 %429, i32* %5, align 4
  br label %518

430:                                              ; preds = %414
  %431 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %432 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i32 0, i32 7
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %8, align 4
  %436 = load i32, i32* %7, align 4
  %437 = load i32, i32* @BITS_PER_LONG, align 4
  %438 = add nsw i32 %436, %437
  %439 = sub nsw i32 %438, 1
  %440 = load i32, i32* @BITS_PER_LONG, align 4
  %441 = sdiv i32 %439, %440
  %442 = sext i32 %441 to i64
  store i64 %442, i64* %9, align 8
  %443 = load i64, i64* %9, align 8
  %444 = trunc i64 %443 to i32
  %445 = load i32, i32* @GFP_KERNEL, align 4
  %446 = call i8* @kcalloc(i32 %444, i32 8, i32 %445)
  %447 = bitcast i8* %446 to i32*
  %448 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %449 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 5
  store i32* %447, i32** %450, align 8
  %451 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %452 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 5
  %454 = load i32*, i32** %453, align 8
  %455 = icmp ne i32* %454, null
  %456 = xor i1 %455, true
  %457 = zext i1 %456 to i32
  %458 = call i64 @unlikely(i32 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %430
  %461 = load i32, i32* @ENOMEM, align 4
  %462 = sub nsw i32 0, %461
  store i32 %462, i32* %5, align 4
  br label %518

463:                                              ; preds = %430
  %464 = load i32, i32* %7, align 4
  %465 = load i32, i32* @GFP_KERNEL, align 4
  %466 = call i8* @kcalloc(i32 %464, i32 4, i32 %465)
  %467 = bitcast i8* %466 to i32*
  %468 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %469 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 6
  store i32* %467, i32** %470, align 8
  %471 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %472 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 6
  %474 = load i32*, i32** %473, align 8
  %475 = icmp ne i32* %474, null
  %476 = xor i1 %475, true
  %477 = zext i1 %476 to i32
  %478 = call i64 @unlikely(i32 %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %483

480:                                              ; preds = %463
  %481 = load i32, i32* @ENOMEM, align 4
  %482 = sub nsw i32 0, %481
  store i32 %482, i32* %5, align 4
  br label %509

483:                                              ; preds = %463
  store i32 0, i32* %4, align 4
  br label %484

484:                                              ; preds = %499, %483
  %485 = load i32, i32* %4, align 4
  %486 = load i32, i32* %7, align 4
  %487 = icmp slt i32 %485, %486
  br i1 %487, label %488, label %502

488:                                              ; preds = %484
  %489 = load i32, i32* %8, align 4
  %490 = load i32, i32* %4, align 4
  %491 = add nsw i32 %489, %490
  %492 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %493 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 6
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %4, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  store i32 %491, i32* %498, align 4
  br label %499

499:                                              ; preds = %488
  %500 = load i32, i32* %4, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %4, align 4
  br label %484

502:                                              ; preds = %484
  %503 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %504 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %505 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i32 0, i32 7
  %507 = load i64, i64* @LPFC_IDX_RSRC_RDY, align 8
  %508 = call i32 @bf_set(i32 %503, i32* %506, i64 %507)
  store i32 0, i32* %2, align 4
  br label %570

509:                                              ; preds = %480
  %510 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %511 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 5
  %513 = load i32*, i32** %512, align 8
  %514 = call i32 @kfree(i32* %513)
  %515 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %516 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %515, i32 0, i32 2
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 5
  store i32* null, i32** %517, align 8
  br label %518

518:                                              ; preds = %509, %460, %422
  %519 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %520 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %520, i32 0, i32 4
  %522 = load i32*, i32** %521, align 8
  %523 = call i32 @kfree(i32* %522)
  %524 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %525 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 4
  store i32* null, i32** %526, align 8
  br label %527

527:                                              ; preds = %518, %392
  %528 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %529 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %528, i32 0, i32 2
  %530 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %529, i32 0, i32 3
  %531 = load i32*, i32** %530, align 8
  %532 = call i32 @kfree(i32* %531)
  %533 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %534 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %534, i32 0, i32 3
  store i32* null, i32** %535, align 8
  br label %536

536:                                              ; preds = %527, %368, %330
  %537 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %538 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %537, i32 0, i32 1
  %539 = load i32*, i32** %538, align 8
  %540 = call i32 @kfree(i32* %539)
  %541 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %542 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %541, i32 0, i32 1
  store i32* null, i32** %542, align 8
  br label %543

543:                                              ; preds = %536, %301
  %544 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %545 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %544, i32 0, i32 0
  %546 = load i32*, i32** %545, align 8
  %547 = call i32 @kfree(i32* %546)
  %548 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %549 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %548, i32 0, i32 0
  store i32* null, i32** %549, align 8
  br label %550

550:                                              ; preds = %543, %283, %247
  %551 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %552 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %551, i32 0, i32 2
  %553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i32 0, i32 2
  %554 = load i32*, i32** %553, align 8
  %555 = call i32 @kfree(i32* %554)
  %556 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %557 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 2
  store i32* null, i32** %558, align 8
  br label %559

559:                                              ; preds = %550, %217
  %560 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %561 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %561, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = call i32 @kfree(i32* %563)
  %565 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %566 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %565, i32 0, i32 2
  %567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %566, i32 0, i32 1
  store i32* null, i32** %567, align 8
  br label %568

568:                                              ; preds = %559, %197, %159, %129, %121, %113, %105
  %569 = load i32, i32* %5, align 4
  store i32 %569, i32* %2, align 4
  br label %570

570:                                              ; preds = %568, %502, %130, %96
  %571 = load i32, i32* %2, align 4
  ret i32 %571
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_set(i32, i32*, i64) #1

declare dso_local i32 @lpfc_sli4_dealloc_resource_identifiers(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_remove_rpis(%struct.lpfc_hba*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
