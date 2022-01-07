; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64 }
%struct.qla82xx_md_entry_crb = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.qla82xx_md_template_hdr = type { i32* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA82XX_DBG_OPCODE_WR = common dso_local global i32 0, align 4
@QLA82XX_DBG_OPCODE_RW = common dso_local global i32 0, align 4
@QLA82XX_DBG_OPCODE_AND = common dso_local global i32 0, align 4
@QLA82XX_DBG_OPCODE_OR = common dso_local global i32 0, align 4
@QLA82XX_DBG_OPCODE_POLL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA82XX_DBG_OPCODE_RDSTATE = common dso_local global i32 0, align 4
@QLA82XX_DBG_OPCODE_WRSTATE = common dso_local global i32 0, align 4
@QLA82XX_DBG_OPCODE_MDSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32**)* @qla82xx_minidump_process_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_minidump_process_control(%struct.TYPE_7__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.qla82xx_md_entry_crb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.qla82xx_md_template_hdr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %7, align 8
  %22 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %22, i32* %17, align 4
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.qla82xx_md_template_hdr*
  store %struct.qla82xx_md_template_hdr* %26, %struct.qla82xx_md_template_hdr** %16, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = bitcast i32* %27 to %struct.qla82xx_md_entry_crb*
  store %struct.qla82xx_md_entry_crb* %28, %struct.qla82xx_md_entry_crb** %8, align 8
  %29 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %30 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %32

32:                                               ; preds = %351, %3
  %33 = load i32, i32* %18, align 4
  %34 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %35 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %354

38:                                               ; preds = %32
  %39 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %40 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @QLA82XX_DBG_OPCODE_WR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %51 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %48, i32 %49, i32 %52, i32 1)
  %54 = load i32, i32* @QLA82XX_DBG_OPCODE_WR, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %47, %38
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @QLA82XX_DBG_OPCODE_RW, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %64, i32 %65, i32 0, i32 0)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %67, i32 %68, i32 %69, i32 1)
  %71 = load i32, i32* @QLA82XX_DBG_OPCODE_RW, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %63, %58
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @QLA82XX_DBG_OPCODE_AND, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %75
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %81, i32 %82, i32 0, i32 0)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %85 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @QLA82XX_DBG_OPCODE_AND, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @QLA82XX_DBG_OPCODE_OR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %80
  %98 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %99 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @QLA82XX_DBG_OPCODE_OR, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %97, %80
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %108, i32 %109, i32 %110, i32 1)
  br label %112

112:                                              ; preds = %107, %75
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @QLA82XX_DBG_OPCODE_OR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %118, i32 %119, i32 0, i32 0)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %122 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %126, i32 %127, i32 %128, i32 1)
  %130 = load i32, i32* @QLA82XX_DBG_OPCODE_OR, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %10, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %117, %112
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @QLA82XX_DBG_OPCODE_POLL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %181

139:                                              ; preds = %134
  %140 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %141 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* @jiffies, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %15, align 8
  %148 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %148, i32 %149, i32 0, i32 0)
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %175, %139
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %154 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %152, %155
  %157 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %158 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %176

162:                                              ; preds = %151
  %163 = load i32, i32* @jiffies, align 4
  %164 = load i64, i64* %15, align 8
  %165 = call i64 @time_after_eq(i32 %163, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %168, i32* %17, align 4
  br label %176

169:                                              ; preds = %162
  %170 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %170, i32 %171, i32 0, i32 0)
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  br i1 true, label %151, label %176

176:                                              ; preds = %175, %167, %161
  %177 = load i32, i32* @QLA82XX_DBG_OPCODE_POLL, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %176, %134
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @QLA82XX_DBG_OPCODE_RDSTATE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %225

186:                                              ; preds = %181
  %187 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %188 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %186
  %193 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %194 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %13, align 4
  %197 = load %struct.qla82xx_md_template_hdr*, %struct.qla82xx_md_template_hdr** %16, align 8
  %198 = getelementptr inbounds %struct.qla82xx_md_template_hdr, %struct.qla82xx_md_template_hdr* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %12, align 4
  br label %206

204:                                              ; preds = %186
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %204, %192
  %207 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %207, i32 %208, i32 0, i32 0)
  store i32 %209, i32* %9, align 4
  %210 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %211 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.qla82xx_md_template_hdr*, %struct.qla82xx_md_template_hdr** %16, align 8
  %216 = getelementptr inbounds %struct.qla82xx_md_template_hdr, %struct.qla82xx_md_template_hdr* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %214, i32* %220, align 4
  %221 = load i32, i32* @QLA82XX_DBG_OPCODE_RDSTATE, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %10, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %10, align 4
  br label %225

225:                                              ; preds = %206, %181
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @QLA82XX_DBG_OPCODE_WRSTATE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %281

230:                                              ; preds = %225
  %231 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %232 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %230
  %237 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %238 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %13, align 4
  %241 = load %struct.qla82xx_md_template_hdr*, %struct.qla82xx_md_template_hdr** %16, align 8
  %242 = getelementptr inbounds %struct.qla82xx_md_template_hdr, %struct.qla82xx_md_template_hdr* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %12, align 4
  br label %250

248:                                              ; preds = %230
  %249 = load i32, i32* %14, align 4
  store i32 %249, i32* %12, align 4
  br label %250

250:                                              ; preds = %248, %236
  %251 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %252 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %251, i32 0, i32 6
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %250
  %257 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %258 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %13, align 4
  %261 = load %struct.qla82xx_md_template_hdr*, %struct.qla82xx_md_template_hdr** %16, align 8
  %262 = getelementptr inbounds %struct.qla82xx_md_template_hdr, %struct.qla82xx_md_template_hdr* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %9, align 4
  br label %272

268:                                              ; preds = %250
  %269 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %270 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %268, %256
  %273 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* %9, align 4
  %276 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %273, i32 %274, i32 %275, i32 1)
  %277 = load i32, i32* @QLA82XX_DBG_OPCODE_WRSTATE, align 4
  %278 = xor i32 %277, -1
  %279 = load i32, i32* %10, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %10, align 4
  br label %281

281:                                              ; preds = %272, %225
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @QLA82XX_DBG_OPCODE_MDSTATE, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %342

286:                                              ; preds = %281
  %287 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %288 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %287, i32 0, i32 6
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %13, align 4
  %291 = load %struct.qla82xx_md_template_hdr*, %struct.qla82xx_md_template_hdr** %16, align 8
  %292 = getelementptr inbounds %struct.qla82xx_md_template_hdr, %struct.qla82xx_md_template_hdr* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %9, align 4
  %298 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %299 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %9, align 4
  %303 = shl i32 %302, %301
  store i32 %303, i32* %9, align 4
  %304 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %305 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %304, i32 0, i32 6
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %9, align 4
  %309 = ashr i32 %308, %307
  store i32 %309, i32* %9, align 4
  %310 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %311 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %286
  %315 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %316 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %9, align 4
  %319 = and i32 %318, %317
  store i32 %319, i32* %9, align 4
  br label %320

320:                                              ; preds = %314, %286
  %321 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %322 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %9, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %9, align 4
  %326 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %327 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* %9, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %9, align 4
  %331 = load i32, i32* %9, align 4
  %332 = load %struct.qla82xx_md_template_hdr*, %struct.qla82xx_md_template_hdr** %16, align 8
  %333 = getelementptr inbounds %struct.qla82xx_md_template_hdr, %struct.qla82xx_md_template_hdr* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %13, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %331, i32* %337, align 4
  %338 = load i32, i32* @QLA82XX_DBG_OPCODE_MDSTATE, align 4
  %339 = xor i32 %338, -1
  %340 = load i32, i32* %10, align 4
  %341 = and i32 %340, %339
  store i32 %341, i32* %10, align 4
  br label %342

342:                                              ; preds = %320, %281
  %343 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %8, align 8
  %344 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* %14, align 4
  %348 = sext i32 %347 to i64
  %349 = add nsw i64 %348, %346
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %14, align 4
  br label %351

351:                                              ; preds = %342
  %352 = load i32, i32* %18, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %18, align 4
  br label %32

354:                                              ; preds = %32
  %355 = load i32, i32* %17, align 4
  ret i32 %355
}

declare dso_local i32 @qla82xx_md_rw_32(%struct.qla_hw_data*, i32, i32, i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
