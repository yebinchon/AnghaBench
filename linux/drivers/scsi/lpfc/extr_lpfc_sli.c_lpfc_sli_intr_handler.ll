; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8
@HA_ERATT = common dso_local global i32 0, align 4
@HBA_ERATT_HANDLED = common dso_local global i32 0, align 4
@DEFER_ERATT = common dso_local global i32 0, align 4
@HC_MBINT_ENA = common dso_local global i32 0, align 4
@HC_R0INT_ENA = common dso_local global i32 0, align 4
@HC_R1INT_ENA = common dso_local global i32 0, align 4
@HC_R2INT_ENA = common dso_local global i32 0, align 4
@HC_LAINT_ENA = common dso_local global i32 0, align 4
@HC_ERINT_ENA = common dso_local global i32 0, align 4
@HA_LATT = common dso_local global i32 0, align 4
@HA_MBATT = common dso_local global i32 0, align 4
@HA_RXMASK = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@LPFC_EXTRA_RING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lpfc_sli_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.lpfc_hba*
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %15 = icmp ne %struct.lpfc_hba* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @IRQ_NONE, align 8
  store i64 %21, i64* %3, align 8
  br label %255

22:                                               ; preds = %2
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %24 = call i64 @lpfc_intr_state_check(%struct.lpfc_hba* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @IRQ_NONE, align 8
  store i64 %27, i64* %3, align 8
  br label %255

28:                                               ; preds = %22
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 3
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 0
  %37 = call i64 @lpfc_readl(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 3
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %43, i64* %3, align 8
  br label %255

44:                                               ; preds = %28
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 3
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i64, i64* @IRQ_NONE, align 8
  store i64 %57, i64* %3, align 8
  br label %255

58:                                               ; preds = %44
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HA_ERATT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %58
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* @HA_ERATT, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %85

79:                                               ; preds = %65
  %80 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  br label %86

86:                                               ; preds = %85, %58
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DEFER_ERATT, align 4
  %92 = and i32 %90, %91
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 3
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i64, i64* @IRQ_NONE, align 8
  store i64 %99, i64* %3, align 8
  br label %255

100:                                              ; preds = %87
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @lpfc_readl(i32 %103, i32* %11)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 3
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %110, i64* %3, align 8
  br label %255

111:                                              ; preds = %100
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @HC_MBINT_ENA, align 4
  %114 = load i32, i32* @HC_R0INT_ENA, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @HC_R1INT_ENA, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @HC_R2INT_ENA, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @HC_LAINT_ENA, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @HC_ERINT_ENA, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = and i32 %112, %124
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %127 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @writel(i32 %125, i32 %128)
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @HA_LATT, align 4
  %134 = load i32, i32* @HA_ERATT, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = and i32 %132, %136
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %139 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @writel(i32 %137, i32 %140)
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @writel(i32 %142, i32 %145)
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %148 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @readl(i32 %149)
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 3
  %153 = call i32 @spin_unlock(i32* %152)
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @HA_MBATT, align 4
  %158 = load i32, i32* @HA_LATT, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @HA_ERATT, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %156, %161
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %9, align 8
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @HA_RXMASK, align 4
  %168 = load i32, i32* @LPFC_ELS_RING, align 4
  %169 = mul nsw i32 4, %168
  %170 = shl i32 %167, %169
  %171 = and i32 %166, %170
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %10, align 8
  %173 = load i32, i32* @LPFC_ELS_RING, align 4
  %174 = mul nsw i32 4, %173
  %175 = load i64, i64* %10, align 8
  %176 = zext i32 %174 to i64
  %177 = lshr i64 %175, %176
  store i64 %177, i64* %10, align 8
  %178 = load i64, i64* %9, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %111
  %181 = load i64, i64* %10, align 8
  %182 = load i32, i32* @HA_RXMASK, align 4
  %183 = sext i32 %182 to i64
  %184 = and i64 %181, %183
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %180, %111
  %187 = load i32, i32* %4, align 4
  %188 = load i8*, i8** %5, align 8
  %189 = call i64 @lpfc_sli_sp_intr_handler(i32 %187, i8* %188)
  store i64 %189, i64* %7, align 8
  br label %192

190:                                              ; preds = %180
  %191 = load i64, i64* @IRQ_NONE, align 8
  store i64 %191, i64* %7, align 8
  br label %192

192:                                              ; preds = %190, %186
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @HA_RXMASK, align 4
  %197 = load i32, i32* @LPFC_FCP_RING, align 4
  %198 = mul nsw i32 4, %197
  %199 = shl i32 %196, %198
  %200 = and i32 %195, %199
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %9, align 8
  %202 = load i32, i32* @LPFC_FCP_RING, align 4
  %203 = mul nsw i32 4, %202
  %204 = load i64, i64* %9, align 8
  %205 = zext i32 %203 to i64
  %206 = lshr i64 %204, %205
  store i64 %206, i64* %9, align 8
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %226

211:                                              ; preds = %192
  %212 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %213 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @HA_RXMASK, align 4
  %216 = load i32, i32* @LPFC_EXTRA_RING, align 4
  %217 = mul nsw i32 4, %216
  %218 = shl i32 %215, %217
  %219 = and i32 %214, %218
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %10, align 8
  %221 = load i32, i32* @LPFC_EXTRA_RING, align 4
  %222 = mul nsw i32 4, %221
  %223 = load i64, i64* %10, align 8
  %224 = zext i32 %222 to i64
  %225 = lshr i64 %223, %224
  store i64 %225, i64* %10, align 8
  br label %227

226:                                              ; preds = %192
  store i64 0, i64* %10, align 8
  br label %227

227:                                              ; preds = %226, %211
  %228 = load i64, i64* %9, align 8
  %229 = load i32, i32* @HA_RXMASK, align 4
  %230 = sext i32 %229 to i64
  %231 = and i64 %228, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %227
  %234 = load i64, i64* %10, align 8
  %235 = load i32, i32* @HA_RXMASK, align 4
  %236 = sext i32 %235 to i64
  %237 = and i64 %234, %236
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %233, %227
  %240 = load i32, i32* %4, align 4
  %241 = load i8*, i8** %5, align 8
  %242 = call i64 @lpfc_sli_fp_intr_handler(i32 %240, i8* %241)
  store i64 %242, i64* %8, align 8
  br label %245

243:                                              ; preds = %233
  %244 = load i64, i64* @IRQ_NONE, align 8
  store i64 %244, i64* %8, align 8
  br label %245

245:                                              ; preds = %243, %239
  %246 = load i64, i64* %7, align 8
  %247 = load i64, i64* @IRQ_HANDLED, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i64, i64* %7, align 8
  br label %253

251:                                              ; preds = %245
  %252 = load i64, i64* %8, align 8
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i64 [ %250, %249 ], [ %252, %251 ]
  store i64 %254, i64* %3, align 8
  br label %255

255:                                              ; preds = %253, %106, %95, %53, %39, %26, %20
  %256 = load i64, i64* %3, align 8
  ret i64 %256
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @lpfc_intr_state_check(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @lpfc_sli_sp_intr_handler(i32, i8*) #1

declare dso_local i64 @lpfc_sli_fp_intr_handler(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
