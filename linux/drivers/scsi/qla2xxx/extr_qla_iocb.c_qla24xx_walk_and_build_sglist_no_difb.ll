; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_walk_and_build_sglist_no_difb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_walk_and_build_sglist_no_difb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.dsd64 = type { i8*, i64 }
%struct.qla_tc_param = type { i64, i32*, %struct.TYPE_13__*, %struct.scatterlist*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dsd_dma = type { i64, i32, i8* }
%struct.qla2_sgx = type { i64, i64, i32, i32, %struct.TYPE_14__* }
%struct.scsi_cmnd = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@QLA_DSDS_PER_IOCB = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SRB_CRC_CTX_DSD_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_walk_and_build_sglist_no_difb(%struct.qla_hw_data* %0, %struct.TYPE_14__* %1, %struct.dsd64* %2, i64 %3, %struct.qla_tc_param* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.dsd64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.qla_tc_param*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.dsd_dma*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca %struct.dsd64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.qla2_sgx, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.scsi_cmnd*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store %struct.dsd64* %2, %struct.dsd64** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.qla_tc_param* %4, %struct.qla_tc_param** %11, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.dsd64*, %struct.dsd64** %9, align 8
  store %struct.dsd64* %26, %struct.dsd64** %17, align 8
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %18, align 8
  store i64 0, i64* %24, align 8
  %28 = call i32 @memset(%struct.qla2_sgx* %21, i32 0, i32 32)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %5
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_14__* %32)
  store %struct.scsi_cmnd* %33, %struct.scsi_cmnd** %25, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %19, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %40 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %39)
  %41 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %21, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %43 = call i32 @scsi_sglist(%struct.scsi_cmnd* %42)
  %44 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %21, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %21, i32 0, i32 4
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %46, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %48 = call %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd* %47)
  store %struct.scatterlist* %48, %struct.scatterlist** %16, align 8
  br label %70

49:                                               ; preds = %5
  %50 = load %struct.qla_tc_param*, %struct.qla_tc_param** %11, align 8
  %51 = icmp ne %struct.qla_tc_param* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.qla_tc_param*, %struct.qla_tc_param** %11, align 8
  %54 = getelementptr inbounds %struct.qla_tc_param, %struct.qla_tc_param* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %19, align 8
  %56 = load %struct.qla_tc_param*, %struct.qla_tc_param** %11, align 8
  %57 = getelementptr inbounds %struct.qla_tc_param, %struct.qla_tc_param* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %21, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.qla_tc_param*, %struct.qla_tc_param** %11, align 8
  %61 = getelementptr inbounds %struct.qla_tc_param, %struct.qla_tc_param* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %21, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load %struct.qla_tc_param*, %struct.qla_tc_param** %11, align 8
  %65 = getelementptr inbounds %struct.qla_tc_param, %struct.qla_tc_param* %64, i32 0, i32 3
  %66 = load %struct.scatterlist*, %struct.scatterlist** %65, align 8
  store %struct.scatterlist* %66, %struct.scatterlist** %16, align 8
  br label %69

67:                                               ; preds = %49
  %68 = call i32 (...) @BUG()
  store i32 1, i32* %6, align 4
  br label %203

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %31
  br label %71

71:                                               ; preds = %195, %70
  %72 = load i64, i64* %19, align 8
  %73 = call i64 @qla24xx_get_one_block_sg(i64 %72, %struct.qla2_sgx* %21, i64* %20)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %196

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %21, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %22, align 8
  %78 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %21, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %23, align 8
  br label %80

80:                                               ; preds = %194, %75
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %164

83:                                               ; preds = %80
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* @QLA_DSDS_PER_IOCB, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* @QLA_DSDS_PER_IOCB, align 8
  br label %91

89:                                               ; preds = %83
  %90 = load i64, i64* %18, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = mul nsw i32 %95, 12
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %14, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %18, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %18, align 8
  %102 = load i32, i32* @GFP_ATOMIC, align 4
  %103 = call %struct.dsd_dma* @kzalloc(i32 24, i32 %102)
  store %struct.dsd_dma* %103, %struct.dsd_dma** %15, align 8
  %104 = load %struct.dsd_dma*, %struct.dsd_dma** %15, align 8
  %105 = icmp ne %struct.dsd_dma* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %91
  store i32 1, i32* %6, align 4
  br label %203

107:                                              ; preds = %91
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @GFP_ATOMIC, align 4
  %112 = load %struct.dsd_dma*, %struct.dsd_dma** %15, align 8
  %113 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %112, i32 0, i32 0
  %114 = call i8* @dma_pool_alloc(i32 %110, i32 %111, i64* %113)
  store i8* %114, i8** %12, align 8
  %115 = load %struct.dsd_dma*, %struct.dsd_dma** %15, align 8
  %116 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %107
  %120 = load %struct.dsd_dma*, %struct.dsd_dma** %15, align 8
  %121 = call i32 @kfree(%struct.dsd_dma* %120)
  store i32 1, i32* %6, align 4
  br label %203

122:                                              ; preds = %107
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %122
  %126 = load %struct.dsd_dma*, %struct.dsd_dma** %15, align 8
  %127 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %126, i32 0, i32 1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = call i32 @list_add_tail(i32* %127, i32* %133)
  %135 = load i32, i32* @SRB_CRC_CTX_DSD_VALID, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %151

140:                                              ; preds = %122
  %141 = load %struct.dsd_dma*, %struct.dsd_dma** %15, align 8
  %142 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %141, i32 0, i32 1
  %143 = load %struct.qla_tc_param*, %struct.qla_tc_param** %11, align 8
  %144 = getelementptr inbounds %struct.qla_tc_param, %struct.qla_tc_param* %143, i32 0, i32 2
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = call i32 @list_add_tail(i32* %142, i32* %146)
  %148 = load %struct.qla_tc_param*, %struct.qla_tc_param** %11, align 8
  %149 = getelementptr inbounds %struct.qla_tc_param, %struct.qla_tc_param* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %140, %125
  %152 = load %struct.dsd_dma*, %struct.dsd_dma** %15, align 8
  %153 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %156 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %155, i32 0, i32 1
  %157 = call i32 @put_unaligned_le64(i64 %154, i64* %156)
  %158 = load i64, i64* %14, align 8
  %159 = call i8* @cpu_to_le32(i64 %158)
  %160 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %161 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = bitcast i8* %162 to %struct.dsd64*
  store %struct.dsd64* %163, %struct.dsd64** %17, align 8
  br label %164

164:                                              ; preds = %151, %80
  %165 = load i64, i64* %22, align 8
  %166 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %167 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %166, i32 0, i32 1
  %168 = call i32 @put_unaligned_le64(i64 %165, i64* %167)
  %169 = load i64, i64* %23, align 8
  %170 = call i8* @cpu_to_le32(i64 %169)
  %171 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %172 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %174 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %173, i32 1
  store %struct.dsd64* %174, %struct.dsd64** %17, align 8
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %13, align 4
  %177 = load i64, i64* %20, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %195

179:                                              ; preds = %164
  %180 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %181 = call i64 @sg_dma_address(%struct.scatterlist* %180)
  %182 = load i64, i64* %24, align 8
  %183 = add nsw i64 %181, %182
  store i64 %183, i64* %22, align 8
  store i64 8, i64* %23, align 8
  %184 = load i64, i64* %23, align 8
  %185 = load i64, i64* %24, align 8
  %186 = add nsw i64 %185, %184
  store i64 %186, i64* %24, align 8
  %187 = load i64, i64* %24, align 8
  %188 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %189 = call i64 @sg_dma_len(%struct.scatterlist* %188)
  %190 = icmp eq i64 %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %179
  store i64 0, i64* %24, align 8
  %192 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %193 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %192)
  store %struct.scatterlist* %193, %struct.scatterlist** %16, align 8
  br label %194

194:                                              ; preds = %191, %179
  store i64 1, i64* %20, align 8
  br label %80

195:                                              ; preds = %164
  br label %71

196:                                              ; preds = %71
  %197 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %198 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %197, i32 0, i32 1
  store i64 0, i64* %198, align 8
  %199 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %200 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %199, i32 0, i32 0
  store i8* null, i8** %200, align 8
  %201 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %202 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %201, i32 1
  store %struct.dsd64* %202, %struct.dsd64** %17, align 8
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %196, %119, %106, %67
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32 @memset(%struct.qla2_sgx*, i32, i32) #1

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_14__*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @qla24xx_get_one_block_sg(i64, %struct.qla2_sgx*, i64*) #1

declare dso_local %struct.dsd_dma* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_pool_alloc(i32, i32, i64*) #1

declare dso_local i32 @kfree(%struct.dsd_dma*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @put_unaligned_le64(i64, i64*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
