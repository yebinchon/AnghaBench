; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_pre_xmit_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_pre_xmit_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_cmd = type { %struct.TYPE_2__*, i32, i32*, i32, %struct.qla_qpair*, %struct.se_cmd }
%struct.TYPE_2__ = type { i32 }
%struct.qla_qpair = type { i32 }
%struct.se_cmd = type { i32, i32*, i32, i32 }
%struct.qla_tgt_prm = type { i32, i32, i32, i32, i32*, i32, i64, i64, i32*, i32*, i32, i32*, i32, %struct.qla_tgt_cmd* }

@TRANSPORT_SENSE_BUFFER = common dso_local global i32 0, align 4
@QLA_TGT_XMIT_DATA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SCF_UNDERFLOW_BIT = common dso_local global i32 0, align 4
@ql_dbg_io = common dso_local global i64 0, align 8
@ql_dbg_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"Residual underflow: %d (tag %lld, op %x, bufflen %d, rq_result %x)\0A\00", align 1
@SS_RESIDUAL_UNDER = common dso_local global i32 0, align 4
@SCF_OVERFLOW_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Residual overflow: %d (tag %lld, op %x, bufflen %d, rq_result %x)\0A\00", align 1
@SS_RESIDUAL_OVER = common dso_local global i32 0, align 4
@QLA_TGT_XMIT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_tgt_cmd*, %struct.qla_tgt_prm*, i32, i32, i32*)* @qlt_pre_xmit_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_pre_xmit_response(%struct.qla_tgt_cmd* %0, %struct.qla_tgt_prm* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_tgt_cmd*, align 8
  %8 = alloca %struct.qla_tgt_prm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.se_cmd*, align 8
  %13 = alloca %struct.qla_qpair*, align 8
  store %struct.qla_tgt_cmd* %0, %struct.qla_tgt_cmd** %7, align 8
  store %struct.qla_tgt_prm* %1, %struct.qla_tgt_prm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %14, i32 0, i32 5
  store %struct.se_cmd* %15, %struct.se_cmd** %12, align 8
  %16 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %16, i32 0, i32 4
  %18 = load %struct.qla_qpair*, %struct.qla_qpair** %17, align 8
  store %struct.qla_qpair* %18, %struct.qla_qpair** %13, align 8
  %19 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %20 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %21 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %20, i32 0, i32 13
  store %struct.qla_tgt_cmd* %19, %struct.qla_tgt_cmd** %21, align 8
  %22 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %26 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %25, i32 0, i32 12
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %28 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %27, i32 0, i32 11
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %31 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %37 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @TRANSPORT_SENSE_BUFFER, align 4
  %39 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %40 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %42 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %41, i32 0, i32 9
  store i32* null, i32** %42, align 8
  %43 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %44 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %46 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %48 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %47, i32 0, i32 5
  store i32 0, i32* %48, align 8
  %49 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %50 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %52 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %51, i32 0, i32 8
  store i32* null, i32** %52, align 8
  %53 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %54 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %53, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %56 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @QLA_TGT_XMIT_DATA, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %5
  %62 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %63 = call i64 @qlt_has_data(%struct.qla_tgt_cmd* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %67 = call i64 @qlt_pci_map_calc_cnt(%struct.qla_tgt_prm* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %209

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %61, %5
  %74 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %75 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %79 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %125

84:                                               ; preds = %73
  %85 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %86 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %89 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* @ql_dbg_io, align 8
  %91 = load i64, i64* @ql_dbg_verbose, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.qla_qpair*, %struct.qla_qpair** %13, align 8
  %94 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %95 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %98 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %101 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %84
  %105 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %106 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  br label %111

110:                                              ; preds = %84
  br label %111

111:                                              ; preds = %110, %104
  %112 = phi i32 [ %109, %104 ], [ 0, %110 ]
  %113 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %117 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ql_dbg_qp(i64 %92, %struct.qla_qpair* %93, i32 12380, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32 %112, i32 %115, i32 %118)
  %120 = load i32, i32* @SS_RESIDUAL_UNDER, align 4
  %121 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %122 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %172

125:                                              ; preds = %73
  %126 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %127 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SCF_OVERFLOW_BIT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %171

132:                                              ; preds = %125
  %133 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %134 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %137 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load i64, i64* @ql_dbg_io, align 8
  %139 = load %struct.qla_qpair*, %struct.qla_qpair** %13, align 8
  %140 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %141 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %144 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %147 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %132
  %151 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %152 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  br label %157

156:                                              ; preds = %132
  br label %157

157:                                              ; preds = %156, %150
  %158 = phi i32 [ %155, %150 ], [ 0, %156 ]
  %159 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %163 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ql_dbg_qp(i64 %138, %struct.qla_qpair* %139, i32 12381, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %145, i32 %158, i32 %161, i32 %164)
  %166 = load i32, i32* @SS_RESIDUAL_OVER, align 4
  %167 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %168 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %157, %125
  br label %172

172:                                              ; preds = %171, %111
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @QLA_TGT_XMIT_STATUS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %208

177:                                              ; preds = %172
  %178 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %179 = call i64 @qlt_has_data(%struct.qla_tgt_cmd* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  %182 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %183 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = call i64 @QLA_TGT_SENSE_VALID(i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %181
  %188 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %189 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @IS_FWI2_CAPABLE(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %187
  %196 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %197 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195, %181
  %201 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %8, align 8
  %202 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %201, i32 0, i32 2
  store i32 1, i32* %202, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %200, %195, %187
  br label %207

207:                                              ; preds = %206, %177
  br label %208

208:                                              ; preds = %207, %172
  store i32 0, i32* %6, align 4
  br label %209

209:                                              ; preds = %208, %69
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i64 @qlt_has_data(%struct.qla_tgt_cmd*) #1

declare dso_local i64 @qlt_pci_map_calc_cnt(%struct.qla_tgt_prm*) #1

declare dso_local i32 @ql_dbg_qp(i64, %struct.qla_qpair*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @QLA_TGT_SENSE_VALID(i32*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
