; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitAscDvcVar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitAscDvcVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32**, i32**, i32*, i64*, i32, i32, i8*, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32*, i64, i32, i64, i32, i8*, i8*, i64, i64 }

@ASC_IS_ISA = common dso_local global i32 0, align 4
@ASC_IS_PCI = common dso_local global i32 0, align 4
@ASC_IS_EISA = common dso_local global i32 0, align 4
@ASC_IS_VL = common dso_local global i32 0, align 4
@ASC_IERR_NO_BUS_TYPE = common dso_local global i32 0, align 4
@CC_HALT = common dso_local global i32 0, align 4
@ASC_DEF_DVC_CNTL = common dso_local global i32 0, align 4
@ASC_DEF_MAX_TOTAL_QNG = common dso_local global i32 0, align 4
@ASC_SCSI_WIDTH_BIT_SET = common dso_local global i8* null, align 8
@ASC_DEF_CHIP_SCSI_ID = common dso_local global i32 0, align 4
@asc_syn_xfer_period = common dso_local global i32 0, align 4
@ASC_CHIP_VER_PCI_ULTRA_3150 = common dso_local global i64 0, align 8
@ASC_IS_PCI_ULTRA = common dso_local global i32 0, align 4
@asc_syn_ultra_xfer_period = common dso_local global i32 0, align 4
@SEC_ACTIVE_NEGATE = common dso_local global i32 0, align 4
@SEC_SLEW_RATE = common dso_local global i32 0, align 4
@ASC_CHIP_VER_PCI_ULTRA_3050 = common dso_local global i64 0, align 8
@SEC_ENABLE_FILTER = common dso_local global i32 0, align 4
@ASC_DEF_ISA_DMA_SPEED = common dso_local global i32 0, align 4
@ASC_MAX_TID = common dso_local global i32 0, align 4
@ASC_MAX_SCSI1_QNG = common dso_local global i32 0, align 4
@ASC_MAX_INRAM_TAG_QNG = common dso_local global i32 0, align 4
@ASC_CHIP_MIN_VER_ISA_PNP = common dso_local global i64 0, align 8
@ASC_IS_ISAPNP = common dso_local global i32 0, align 4
@IFC_INIT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @AscInitAscDvcVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AscInitAscDvcVar(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 30
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 29
  store i32 0, i32* %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ASC_IS_ISA, align 4
  %15 = load i32, i32* @ASC_IS_PCI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ASC_IS_EISA, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ASC_IS_VL, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %13, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @ASC_IERR_NO_BUS_TYPE, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 29
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CC_HALT, align 4
  %32 = call i32 @AscSetChipControl(i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @AscSetChipStatus(i32 %33, i32 0)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 28
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 27
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 26
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 25
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 24
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 23
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 22
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 21
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 20
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 19
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 18
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 17
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 16
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 15
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 8
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 7
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @ASC_DEF_DVC_CNTL, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 14
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 13
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @ASC_DEF_MAX_TOTAL_QNG, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 3, i32* %82, align 8
  %83 = load i8*, i8** @ASC_SCSI_WIDTH_BIT_SET, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 11
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @AscGetMaxDmaCount(i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 4
  %92 = load i8*, i8** @ASC_SCSI_WIDTH_BIT_SET, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  store i8* %92, i8** %96, align 8
  %97 = load i8*, i8** @ASC_SCSI_WIDTH_BIT_SET, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  store i8* %97, i8** %101, align 8
  %102 = load i32, i32* @ASC_DEF_CHIP_SCSI_ID, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  store i32 %102, i32* %106, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @AscGetChipVersion(i32 %107, i32 %110)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store i64 %112, i64* %116, align 8
  %117 = load i32, i32* @asc_syn_xfer_period, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32 7, i32* %121, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ASC_IS_PCI, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %162

128:                                              ; preds = %29
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @ASC_CHIP_VER_PCI_ULTRA_3150, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %128
  %133 = load i32, i32* @ASC_IS_PCI_ULTRA, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @asc_syn_ultra_xfer_period, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  store i32 15, i32* %140, align 4
  %141 = load i64, i64* %5, align 8
  %142 = load i64, i64* @ASC_CHIP_VER_PCI_ULTRA_3150, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %132
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @SEC_ACTIVE_NEGATE, align 4
  %147 = load i32, i32* @SEC_SLEW_RATE, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @AscSetExtraControl(i32 %145, i32 %148)
  br label %161

150:                                              ; preds = %132
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* @ASC_CHIP_VER_PCI_ULTRA_3050, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @SEC_ACTIVE_NEGATE, align 4
  %157 = load i32, i32* @SEC_ENABLE_FILTER, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @AscSetExtraControl(i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %154, %150
  br label %161

161:                                              ; preds = %160, %144
  br label %162

162:                                              ; preds = %161, %128, %29
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ASC_IS_PCI, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @SEC_ACTIVE_NEGATE, align 4
  %171 = load i32, i32* @SEC_SLEW_RATE, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @AscSetExtraControl(i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %168, %162
  %175 = load i32, i32* @ASC_DEF_ISA_DMA_SPEED, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  store i32 %175, i32* %179, align 8
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %219, %174
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @ASC_MAX_TID, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %184, label %222

184:                                              ; preds = %180
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 8
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* @ASC_MAX_SCSI1_QNG, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 7
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %3, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %191, i32* %197, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 6
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  store i32* null, i32** %203, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 5
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  store i32* null, i32** %209, align 8
  %210 = load i32, i32* @ASC_MAX_INRAM_TAG_QNG, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %210, i32* %218, align 4
  br label %219

219:                                              ; preds = %184
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %180

222:                                              ; preds = %180
  ret void
}

declare dso_local i32 @AscSetChipControl(i32, i32) #1

declare dso_local i32 @AscSetChipStatus(i32, i32) #1

declare dso_local i32 @AscGetMaxDmaCount(i32) #1

declare dso_local i64 @AscGetChipVersion(i32, i32) #1

declare dso_local i32 @AscSetExtraControl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
