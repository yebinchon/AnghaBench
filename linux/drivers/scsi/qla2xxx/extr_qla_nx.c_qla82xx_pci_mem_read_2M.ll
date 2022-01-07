; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_mem_read_2M.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_mem_read_2M.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLA82XX_ADDR_QDR_NET = common dso_local global i32 0, align 4
@QLA82XX_P3_ADDR_QDR_NET_MAX = common dso_local global i32 0, align 4
@QLA82XX_CRB_QDR_NET = common dso_local global i32 0, align 4
@QLA82XX_CRB_DDR_NET = common dso_local global i32 0, align 4
@MIU_TEST_AGT_ADDR_LO = common dso_local global i32 0, align 4
@MIU_TEST_AGT_ADDR_HI = common dso_local global i32 0, align 4
@MIU_TA_CTL_ENABLE = common dso_local global i32 0, align 4
@MIU_TEST_AGT_CTRL = common dso_local global i32 0, align 4
@MIU_TA_CTL_START = common dso_local global i32 0, align 4
@MAX_CTL_CHECK = common dso_local global i32 0, align 4
@MIU_TA_CTL_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to read through agent.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_pci_mem_read_2M(%struct.qla_hw_data* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i32], align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = bitcast [2 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @QLA82XX_ADDR_QDR_NET, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @QLA82XX_P3_ADDR_QDR_NET_MAX, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @QLA82XX_CRB_QDR_NET, align 4
  store i32 %33, i32* %22, align 4
  br label %48

34:                                               ; preds = %28, %4
  %35 = load i32, i32* @QLA82XX_CRB_DDR_NET, align 4
  store i32 %35, i32* %22, align 4
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @qla82xx_pci_mem_bound_check(%struct.qla_hw_data* %36, i32 %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @qla82xx_pci_mem_read_direct(%struct.qla_hw_data* %42, i32 %43, i8* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %263

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, -16
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 15
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 16, %56
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  br label %65

61:                                               ; preds = %48
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 16, %63
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i32 [ %60, %59 ], [ %64, %61 ]
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %66, i32* %67, align 4
  store i32 4, i32* %18, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %18, align 4
  %74 = ashr i32 %72, %73
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %77, %79
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %196, %65
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %199

86:                                               ; preds = %82
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %18, align 4
  %90 = shl i32 %88, %89
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %19, align 4
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* @MIU_TEST_AGT_ADDR_LO, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %92, i32 %95, i32 %96)
  store i32 0, i32* %19, align 4
  %98 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* @MIU_TEST_AGT_ADDR_HI, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %98, i32 %101, i32 %102)
  %104 = load i32, i32* @MIU_TA_CTL_ENABLE, align 4
  store i32 %104, i32* %19, align 4
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* @MIU_TEST_AGT_CTRL, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %105, i32 %108, i32 %109)
  %111 = load i32, i32* @MIU_TA_CTL_START, align 4
  %112 = load i32, i32* @MIU_TA_CTL_ENABLE, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %19, align 4
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* @MIU_TEST_AGT_CTRL, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %114, i32 %117, i32 %118)
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %136, %86
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @MAX_CTL_CHECK, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* @MIU_TEST_AGT_CTRL, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %125, i32 %128)
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* @MIU_TA_CTL_BUSY, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %139

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %120

139:                                              ; preds = %134, %120
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @MAX_CTL_CHECK, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = call i64 (...) @printk_ratelimit()
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %148 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = call i32 @dev_err(i32* %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %152

152:                                              ; preds = %146, %143
  br label %199

153:                                              ; preds = %139
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 2
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %162, %166
  %168 = sub nsw i32 %167, 1
  %169 = ashr i32 %168, 2
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %192, %153
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %195

175:                                              ; preds = %171
  %176 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @MIU_TEST_AGT_RDDATA(i32 %178)
  %180 = add nsw i32 %177, %179
  %181 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %176, i32 %180)
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %12, align 4
  %184 = and i32 %183, 1
  %185 = mul nsw i32 32, %184
  %186 = shl i32 %182, %185
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %186
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %175
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %171

195:                                              ; preds = %171
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %82

199:                                              ; preds = %152, %82
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @MAX_CTL_CHECK, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 -1, i32* %5, align 4
  br label %263

204:                                              ; preds = %199
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, 7
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %21, align 4
  br label %244

212:                                              ; preds = %204
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %216, 8
  %218 = ashr i32 %214, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %221, 8
  %223 = zext i32 %222 to i64
  %224 = shl i64 -1, %223
  %225 = xor i64 %224, -1
  %226 = and i64 %219, %225
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %231, 8
  %233 = zext i32 %232 to i64
  %234 = shl i64 -1, %233
  %235 = xor i64 %234, -1
  %236 = and i64 %229, %235
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 %238, 8
  %240 = zext i32 %239 to i64
  %241 = shl i64 %236, %240
  %242 = or i64 %226, %241
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %21, align 4
  br label %244

244:                                              ; preds = %212, %209
  %245 = load i32, i32* %9, align 4
  switch i32 %245, label %262 [
    i32 1, label %246
    i32 2, label %250
    i32 4, label %254
    i32 8, label %258
  ]

246:                                              ; preds = %244
  %247 = load i32, i32* %21, align 4
  %248 = load i8*, i8** %8, align 8
  %249 = bitcast i8* %248 to i32*
  store i32 %247, i32* %249, align 4
  br label %262

250:                                              ; preds = %244
  %251 = load i32, i32* %21, align 4
  %252 = load i8*, i8** %8, align 8
  %253 = bitcast i8* %252 to i32*
  store i32 %251, i32* %253, align 4
  br label %262

254:                                              ; preds = %244
  %255 = load i32, i32* %21, align 4
  %256 = load i8*, i8** %8, align 8
  %257 = bitcast i8* %256 to i32*
  store i32 %255, i32* %257, align 4
  br label %262

258:                                              ; preds = %244
  %259 = load i32, i32* %21, align 4
  %260 = load i8*, i8** %8, align 8
  %261 = bitcast i8* %260 to i32*
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %244, %258, %254, %250, %246
  store i32 0, i32* %5, align 4
  br label %263

263:                                              ; preds = %262, %203, %41
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @qla82xx_pci_mem_bound_check(%struct.qla_hw_data*, i32, i32) #2

declare dso_local i32 @qla82xx_pci_mem_read_direct(%struct.qla_hw_data*, i32, i8*, i32) #2

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #2

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #2

declare dso_local i64 @printk_ratelimit(...) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @MIU_TEST_AGT_RDDATA(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
