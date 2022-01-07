; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_set_exchoffld_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_set_exchoffld_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i64, %struct.TYPE_10__, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.init_cb_81xx = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get exlogin status.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Actual exchange offload count: %d.\0A\00", align 1
@FW_DEF_EXCHANGES_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"Exchange offload: max_count=%d, actual count=%d entry sz=0x%x, total sz=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Exchange Buffers requested size = 0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to allocate memory for Exchange Offload.\0A\00", align 1
@REDUCE_EXCHANGES_CNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Disabling Exchange offload due to lack of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [91 x i8] c"Exchange offload not enable: offld size=%d, actual count=%d entry sz=0x%x, total sz=0x%x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Setup exchange offload buffer ****FAILED****.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_set_exchoffld_buffer(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca %struct.init_cb_81xx*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %9, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %209

21:                                               ; preds = %1
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %23 = call i32 @IS_EXCHG_OFFLD_CAPABLE(%struct.qla_hw_data* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %26, i32* %2, align 4
  br label %209

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = call i32 @qla_get_exchoffld_status(%struct.TYPE_11__* %28, i32* %5, i32* %6)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @QLA_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @ql_log_fatal, align 4
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 5
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i32 @ql_log_pci(i32 %34, %struct.TYPE_12__* %37, i32 53266, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %209

40:                                               ; preds = %27
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @qla2x00_number_of_exch(%struct.TYPE_11__* %41, i32* %7, i32 %42)
  %44 = load i32, i32* @ql_log_info, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %44, %struct.TYPE_11__* %45, i32 53268, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %150

56:                                               ; preds = %40
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %58 = call i32 @qla2x00_free_exchoffld_buffer(%struct.qla_hw_data* %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @FW_DEF_EXCHANGES_CNT, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %68, i32* %2, align 4
  br label %209

69:                                               ; preds = %56
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @ql_log_info, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %73, %struct.TYPE_11__* %74, i32 53270, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @ql_log_info, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %80, %struct.TYPE_11__* %81, i32 53271, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 5
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %94 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %93, i32 0, i32 6
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32 @dma_alloc_coherent(i32* %89, i32 %92, i32* %94, i32 %95)
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %100 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %149, label %103

103:                                              ; preds = %69
  %104 = load i32, i32* @ql_log_fatal, align 4
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %106 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %105, i32 0, i32 5
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = call i32 @ql_log_pci(i32 %104, %struct.TYPE_12__* %107, i32 53267, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %110 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FW_DEF_EXCHANGES_CNT, align 4
  %113 = load i32, i32* @REDUCE_EXCHANGES_CNT, align 4
  %114 = add nsw i32 %112, %113
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %103
  %117 = load i32, i32* @REDUCE_EXCHANGES_CNT, align 4
  %118 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %119 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %144

122:                                              ; preds = %103
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FW_DEF_EXCHANGES_CNT, align 4
  %127 = add nsw i32 %126, 512
  %128 = icmp sgt i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %131 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 512
  store i32 %133, i32* %131, align 4
  br label %143

134:                                              ; preds = %122
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %136 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* @ql_log_fatal, align 4
  %139 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %140 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %139, i32 0, i32 5
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = call i32 @ql_log_pci(i32 %138, %struct.TYPE_12__* %141, i32 53267, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %134, %129
  br label %144

144:                                              ; preds = %143, %116
  %145 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %146 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %209

149:                                              ; preds = %69
  br label %177

150:                                              ; preds = %40
  %151 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %152 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @FW_DEF_EXCHANGES_CNT, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %155, %150
  %160 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %161 = call i32 @qla2x00_free_exchoffld_buffer(%struct.qla_hw_data* %160)
  %162 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %163 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  %164 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %165 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  %167 = load i32, i32* @ql_log_info, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %170 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %167, %struct.TYPE_11__* %168, i32 53270, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0), i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 0, i32* %2, align 4
  br label %209

176:                                              ; preds = %155
  br label %177

177:                                              ; preds = %176, %149
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %179 = call i32 @qla_set_exchoffld_mem_cfg(%struct.TYPE_11__* %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i32, i32* @ql_log_fatal, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %185 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %183, %struct.TYPE_11__* %184, i32 53294, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %186 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %187 = call i32 @qla2x00_free_exchoffld_buffer(%struct.qla_hw_data* %186)
  br label %207

188:                                              ; preds = %177
  %189 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %190 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to %struct.init_cb_81xx*
  store %struct.init_cb_81xx* %192, %struct.init_cb_81xx** %10, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %194 = call i64 @qla_ini_mode_enabled(%struct.TYPE_11__* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load %struct.init_cb_81xx*, %struct.init_cb_81xx** %10, align 8
  %198 = getelementptr inbounds %struct.init_cb_81xx, %struct.init_cb_81xx* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  br label %206

199:                                              ; preds = %188
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @cpu_to_le16(i32 %202)
  %204 = load %struct.init_cb_81xx*, %struct.init_cb_81xx** %10, align 8
  %205 = getelementptr inbounds %struct.init_cb_81xx, %struct.init_cb_81xx* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %199, %196
  br label %207

207:                                              ; preds = %206, %182
  %208 = load i32, i32* %4, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %159, %144, %62, %33, %25, %19
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @IS_EXCHG_OFFLD_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla_get_exchoffld_status(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @ql_log_pci(i32, %struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @qla2x00_number_of_exch(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_free_exchoffld_buffer(%struct.qla_hw_data*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qla_set_exchoffld_mem_cfg(%struct.TYPE_11__*) #1

declare dso_local i64 @qla_ini_mode_enabled(%struct.TYPE_11__*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
