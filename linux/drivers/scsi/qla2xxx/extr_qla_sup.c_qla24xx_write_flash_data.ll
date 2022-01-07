; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_write_flash_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_write_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@OPTROM_BURST_DWORDS = common dso_local global i64 0, align 8
@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed allocate burst (%x bytes)\0A\00", align 1
@ql_dbg_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Unprotect flash...\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to unprotect flash.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Erase sector %#x...\0A\00", align 1
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to erase sector %x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Write burst (%#lx dwords)...\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed burst-write at %x (%p/%#llx)....\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Reverting to slow write...\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed slopw write %x (%x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Protect flash...\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed to protect flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*, i64, i64)* @qla24xx_write_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_write_flash_data(%struct.TYPE_11__* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i64, i64* @OPTROM_BURST_DWORDS, align 8
  store i64 %18, i64* %11, align 8
  store i8* null, i8** %16, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %17, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %23 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %4
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %27 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %31 = call i32 @IS_QLA83XX(%struct.qla_hw_data* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %35 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %39 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %58

42:                                               ; preds = %37, %33, %29, %25, %4
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @dma_alloc_coherent(i32* %46, i32 %47, i64* %15, i32 %48)
  store i8* %49, i8** %16, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load i64, i64* @ql_log_warn, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %56 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %53, %struct.TYPE_11__* %54, i32 28821, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %42
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i64, i64* @ql_log_warn, align 8
  %60 = load i64, i64* @ql_dbg_verbose, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %61, %struct.TYPE_11__* %62, i32 28821, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = call i32 @qla24xx_unprotect_flash(%struct.TYPE_11__* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i64, i64* @ql_log_warn, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %69, %struct.TYPE_11__* %70, i32 28822, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %230

72:                                               ; preds = %58
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %74 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 2
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = xor i64 %79, -1
  store i64 %80, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %81

81:                                               ; preds = %208, %72
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %215

85:                                               ; preds = %81
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %12, align 8
  %88 = and i64 %86, %87
  %89 = shl i64 %88, 2
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %13, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %112, label %94

94:                                               ; preds = %85
  %95 = load i64, i64* @ql_log_warn, align 8
  %96 = load i64, i64* @ql_dbg_verbose, align 8
  %97 = add nsw i64 %95, %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %97, %struct.TYPE_11__* %98, i32 28821, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @qla24xx_erase_sector(%struct.TYPE_11__* %101, i64 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load i32, i32* @ql_dbg_user, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i64, ...) @ql_dbg(i32 %107, %struct.TYPE_11__* %108, i32 28679, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %109)
  br label %215

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %85
  %113 = load i8*, i8** %16, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %189

115:                                              ; preds = %112
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %10, align 8
  %118 = sub nsw i64 %116, %117
  %119 = load i64, i64* %11, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %10, align 8
  %124 = sub nsw i64 %122, %123
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %121, %115
  %126 = load i8*, i8** %16, align 8
  %127 = load i64*, i64** %6, align 8
  %128 = load i64, i64* %11, align 8
  %129 = shl i64 %128, 2
  %130 = call i32 @memcpy(i8* %126, i64* %127, i64 %129)
  %131 = load i64, i64* @ql_log_warn, align 8
  %132 = load i64, i64* @ql_dbg_verbose, align 8
  %133 = add nsw i64 %131, %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %133, %struct.TYPE_11__* %134, i32 28821, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @flash_data_addr(%struct.qla_hw_data* %139, i64 %140)
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @qla2x00_load_ram(%struct.TYPE_11__* %137, i64 %138, i32 %141, i64 %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %125
  %147 = load i64, i64* %11, align 8
  %148 = sub nsw i64 %147, 1
  %149 = load i64, i64* %10, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %10, align 8
  %151 = load i64, i64* %11, align 8
  %152 = sub nsw i64 %151, 1
  %153 = load i64, i64* %7, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %7, align 8
  %155 = load i64, i64* %11, align 8
  %156 = sub nsw i64 %155, 1
  %157 = load i64*, i64** %6, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 %156
  store i64* %158, i64** %6, align 8
  br label %208

159:                                              ; preds = %125
  %160 = load i64, i64* @ql_log_warn, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @flash_data_addr(%struct.qla_hw_data* %162, i64 %163)
  %165 = load i8*, i8** %16, align 8
  %166 = load i64, i64* %15, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %160, %struct.TYPE_11__* %161, i32 28823, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %164, i8* %165, i32 %167)
  %169 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %170 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %169, i32 0, i32 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %174 = load i8*, i8** %16, align 8
  %175 = load i64, i64* %15, align 8
  %176 = call i32 @dma_free_coherent(i32* %172, i32 %173, i8* %174, i64 %175)
  store i8* null, i8** %16, align 8
  %177 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %178 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %159
  %181 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %182 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %159
  br label %215

185:                                              ; preds = %180
  %186 = load i64, i64* @ql_log_warn, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %186, %struct.TYPE_11__* %187, i32 28824, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %189

189:                                              ; preds = %185, %112
  %190 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %191 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %192 = load i64, i64* %7, align 8
  %193 = call i32 @flash_data_addr(%struct.qla_hw_data* %191, i64 %192)
  %194 = load i64*, i64** %6, align 8
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @cpu_to_le32(i64 %195)
  %197 = call i32 @qla24xx_write_flash_dword(%struct.qla_hw_data* %190, i32 %193, i32 %196)
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %189
  %201 = load i32, i32* @ql_dbg_user, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = load i64, i64* %7, align 8
  %204 = load i64*, i64** %6, align 8
  %205 = load i64, i64* %204, align 8
  %206 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i64, ...) @ql_dbg(i32 %201, %struct.TYPE_11__* %202, i32 28678, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %203, i64 %205)
  br label %215

207:                                              ; preds = %189
  br label %208

208:                                              ; preds = %207, %146
  %209 = load i64, i64* %10, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %10, align 8
  %211 = load i64, i64* %7, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %7, align 8
  %213 = load i64*, i64** %6, align 8
  %214 = getelementptr inbounds i64, i64* %213, i32 1
  store i64* %214, i64** %6, align 8
  br label %81

215:                                              ; preds = %200, %184, %106, %81
  %216 = load i64, i64* @ql_log_warn, align 8
  %217 = load i64, i64* @ql_dbg_verbose, align 8
  %218 = add nsw i64 %216, %217
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %220 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %218, %struct.TYPE_11__* %219, i32 28821, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %222 = call i32 @qla24xx_protect_flash(%struct.TYPE_11__* %221)
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %215
  %226 = load i64, i64* @ql_log_warn, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %228 = call i32 (i64, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i64 %226, %struct.TYPE_11__* %227, i32 28825, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %229

229:                                              ; preds = %225, %215
  br label %230

230:                                              ; preds = %229, %68
  %231 = load i8*, i8** %16, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %242

233:                                              ; preds = %230
  %234 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %235 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %234, i32 0, i32 1
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %239 = load i8*, i8** %16, align 8
  %240 = load i64, i64* %15, align 8
  %241 = call i32 @dma_free_coherent(i32* %237, i32 %238, i8* %239, i64 %240)
  br label %242

242:                                              ; preds = %233, %230
  %243 = load i32, i32* %9, align 4
  ret i32 %243
}

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ql_log(i64, %struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @qla24xx_unprotect_flash(%struct.TYPE_11__*) #1

declare dso_local i32 @qla24xx_erase_sector(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_11__*, i32, i8*, i64, ...) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

declare dso_local i32 @qla2x00_load_ram(%struct.TYPE_11__*, i64, i32, i64) #1

declare dso_local i32 @flash_data_addr(%struct.qla_hw_data*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @qla24xx_write_flash_dword(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @qla24xx_protect_flash(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
