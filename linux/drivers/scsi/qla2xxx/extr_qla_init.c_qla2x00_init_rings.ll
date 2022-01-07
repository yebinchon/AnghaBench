; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i64, i32, %struct.TYPE_17__, i64, i64, %struct.TYPE_15__*, i32, %struct.TYPE_14__, i32, %struct.rsp_que**, i32, %struct.req_que**, i64 }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { {}*, {}* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.rsp_que = type { i64*, i64, i64 }
%struct.req_que = type { i32, i32, i64, i64, i64, i64, i64, i32**, i64* }
%struct.mid_init_cb_24xx = type { %struct.TYPE_16__, i8*, i8* }
%struct.TYPE_16__ = type { i32, i8* }

@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Issue init firmware.\0A\00", align 1
@LOOP = common dso_local global i64 0, align 8
@MIN_MULTI_ID_FABRIC = common dso_local global i64 0, align 8
@BIT_1 = common dso_local global i64 0, align 8
@BIT_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"DPORT Support: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@BIT_6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"FA-WWPN Support: %s.\0A\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Init Firmware **** FAILED ****.\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Init Firmware -- success.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_init_rings(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.req_que*, align 8
  %9 = alloca %struct.rsp_que*, align 8
  %10 = alloca %struct.mid_init_cb_24xx*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i64 0, i64* %4, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %7, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mid_init_cb_24xx*
  store %struct.mid_init_cb_24xx* %17, %struct.mid_init_cb_24xx** %10, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %92, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %95

28:                                               ; preds = %22
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 13
  %31 = load %struct.req_que**, %struct.req_que*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.req_que*, %struct.req_que** %31, i64 %33
  %35 = load %struct.req_que*, %struct.req_que** %34, align 8
  store %struct.req_que* %35, %struct.req_que** %8, align 8
  %36 = load %struct.req_que*, %struct.req_que** %8, align 8
  %37 = icmp ne %struct.req_que* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %28
  br label %92

46:                                               ; preds = %38
  %47 = load %struct.req_que*, %struct.req_que** %8, align 8
  %48 = getelementptr inbounds %struct.req_que, %struct.req_que* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.req_que*, %struct.req_que** %8, align 8
  %51 = getelementptr inbounds %struct.req_que, %struct.req_que* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = inttoptr i64 %53 to i8*
  %55 = bitcast i8* %54 to i64*
  %56 = load %struct.req_que*, %struct.req_que** %8, align 8
  %57 = getelementptr inbounds %struct.req_que, %struct.req_que* %56, i32 0, i32 8
  store i64* %55, i64** %57, align 8
  %58 = load %struct.req_que*, %struct.req_que** %8, align 8
  %59 = getelementptr inbounds %struct.req_que, %struct.req_que* %58, i32 0, i32 8
  %60 = load i64*, i64** %59, align 8
  store i64 0, i64* %60, align 8
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %74, %46
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.req_que*, %struct.req_que** %8, align 8
  %64 = getelementptr inbounds %struct.req_que, %struct.req_que* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.req_que*, %struct.req_que** %8, align 8
  %69 = getelementptr inbounds %struct.req_que, %struct.req_que* %68, i32 0, i32 7
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.req_que*, %struct.req_que** %8, align 8
  %79 = getelementptr inbounds %struct.req_que, %struct.req_que* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.req_que*, %struct.req_que** %8, align 8
  %81 = getelementptr inbounds %struct.req_que, %struct.req_que* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.req_que*, %struct.req_que** %8, align 8
  %84 = getelementptr inbounds %struct.req_que, %struct.req_que* %83, i32 0, i32 6
  store i64 %82, i64* %84, align 8
  %85 = load %struct.req_que*, %struct.req_que** %8, align 8
  %86 = getelementptr inbounds %struct.req_que, %struct.req_que* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.req_que*, %struct.req_que** %8, align 8
  %88 = getelementptr inbounds %struct.req_que, %struct.req_que* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.req_que*, %struct.req_que** %8, align 8
  %91 = getelementptr inbounds %struct.req_que, %struct.req_que* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %77, %45
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %22

95:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %145, %95
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %99 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %148

102:                                              ; preds = %96
  %103 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %104 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %103, i32 0, i32 11
  %105 = load %struct.rsp_que**, %struct.rsp_que*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %105, i64 %107
  %109 = load %struct.rsp_que*, %struct.rsp_que** %108, align 8
  store %struct.rsp_que* %109, %struct.rsp_que** %9, align 8
  %110 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %111 = icmp ne %struct.rsp_que* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @test_bit(i32 %113, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112, %102
  br label %145

120:                                              ; preds = %112
  %121 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %122 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %125 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = inttoptr i64 %127 to i8*
  %129 = bitcast i8* %128 to i64*
  %130 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %131 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %130, i32 0, i32 0
  store i64* %129, i64** %131, align 8
  %132 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %133 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  store i64 0, i64* %134, align 8
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %136 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %120
  %139 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %140 = call i32 @qlafx00_init_response_q_entries(%struct.rsp_que* %139)
  br label %144

141:                                              ; preds = %120
  %142 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %143 = call i32 @qla2x00_init_response_q_entries(%struct.rsp_que* %142)
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %119
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %96

148:                                              ; preds = %96
  %149 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %150 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %154 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 4
  %156 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %157 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %156, i32 0, i32 9
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %160 = call i32 @qlt_init_atio_q_entries(%struct.TYPE_18__* %159)
  %161 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %162 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %161, i32 0, i32 7
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = bitcast {}** %164 to i32 (%struct.TYPE_18__*)**
  %166 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %165, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %168 = call i32 %166(%struct.TYPE_18__* %167)
  %169 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %170 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %169, i32 0, i32 8
  %171 = load i64, i64* %4, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  %173 = load i32, i32* @ql_dbg_init, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %175 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %173, %struct.TYPE_18__* %174, i32 209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %176 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %177 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %148
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %181 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %182 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @qlafx00_init_firmware(%struct.TYPE_18__* %180, i32 %183)
  store i32 %184, i32* %3, align 4
  br label %285

185:                                              ; preds = %148
  %186 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %187 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %186, i32 0, i32 7
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = bitcast {}** %189 to i32 (%struct.TYPE_18__*)**
  %191 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %190, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %193 = call i32 %191(%struct.TYPE_18__* %192)
  %194 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %195 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %221

199:                                              ; preds = %185
  %200 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %201 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @LOOP, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %199
  %206 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %207 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %205
  %210 = load i64, i64* @MIN_MULTI_ID_FABRIC, align 8
  %211 = sub nsw i64 %210, 1
  %212 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %213 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %212, i32 0, i32 6
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %209, %205, %199
  %215 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %216 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = call i8* @cpu_to_le16(i64 %217)
  %219 = load %struct.mid_init_cb_24xx*, %struct.mid_init_cb_24xx** %10, align 8
  %220 = getelementptr inbounds %struct.mid_init_cb_24xx, %struct.mid_init_cb_24xx* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %214, %185
  %222 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %223 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %279

225:                                              ; preds = %221
  %226 = load i64, i64* @BIT_1, align 8
  %227 = call i8* @cpu_to_le16(i64 %226)
  %228 = load %struct.mid_init_cb_24xx*, %struct.mid_init_cb_24xx** %10, align 8
  %229 = getelementptr inbounds %struct.mid_init_cb_24xx, %struct.mid_init_cb_24xx* %228, i32 0, i32 1
  store i8* %227, i8** %229, align 8
  %230 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %231 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @cpu_to_le16(i64 %232)
  %234 = load %struct.mid_init_cb_24xx*, %struct.mid_init_cb_24xx** %10, align 8
  %235 = getelementptr inbounds %struct.mid_init_cb_24xx, %struct.mid_init_cb_24xx* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  store i8* %233, i8** %236, align 8
  %237 = load %struct.mid_init_cb_24xx*, %struct.mid_init_cb_24xx** %10, align 8
  %238 = getelementptr inbounds %struct.mid_init_cb_24xx, %struct.mid_init_cb_24xx* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BIT_7, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i32
  %245 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %246 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 8
  %248 = load i32, i32* @ql_dbg_init, align 4
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %250 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %251 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %257 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %248, %struct.TYPE_18__* %249, i32 401, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %256)
  %258 = load %struct.mid_init_cb_24xx*, %struct.mid_init_cb_24xx** %10, align 8
  %259 = getelementptr inbounds %struct.mid_init_cb_24xx, %struct.mid_init_cb_24xx* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @BIT_6, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i32
  %266 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %267 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  store i32 %265, i32* %268, align 4
  %269 = load i32, i32* @ql_dbg_init, align 4
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %271 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %272 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %278 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %269, %struct.TYPE_18__* %270, i32 188, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %277)
  br label %279

279:                                              ; preds = %225, %221
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %281 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %282 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @qla2x00_init_firmware(%struct.TYPE_18__* %280, i32 %283)
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %279, %179
  %286 = load i32, i32* %3, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32, i32* @ql_log_fatal, align 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %291 = call i32 @ql_log(i32 %289, %struct.TYPE_18__* %290, i32 210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %302

292:                                              ; preds = %285
  %293 = load i32, i32* @ql_dbg_init, align 4
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %295 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %293, %struct.TYPE_18__* %294, i32 211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %296 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %297 = call i32 @QLA_FW_STARTED(%struct.qla_hw_data* %296)
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 0
  store i64 0, i64* %299, align 8
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 1
  store i64 0, i64* %301, align 8
  br label %302

302:                                              ; preds = %292, %288
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qlafx00_init_response_q_entries(%struct.rsp_que*) #1

declare dso_local i32 @qla2x00_init_response_q_entries(%struct.rsp_que*) #1

declare dso_local i32 @qlt_init_atio_q_entries(%struct.TYPE_18__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @qlafx00_init_firmware(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_init_firmware(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @QLA_FW_STARTED(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
