; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_fabric_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_fabric_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_20__*, i32, i32, i32, i32, i32*, i32)*, i32 (%struct.TYPE_20__*, i32, i32, i32, i32)* }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_19__, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32 }

@MAILBOX_REGISTER_COUNT = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Trying Fabric Login w/loop id 0x%04x for port %02x%02x%02x.\0A\00", align 1
@BIT_0 = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@MBS_PORT_ID_USED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Fabric Login: port in use - next loop id=0x%04x, port id= %02x%02x%02x.\0A\00", align 1
@MBS_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@FCT_INITIATOR = common dso_local global i32 0, align 4
@FCT_TARGET = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@FCF_FCP2_DEVICE = common dso_local global i32 0, align 4
@FC_COS_CLASS2 = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@FCF_CONF_COMP_SUPPORTED = common dso_local global i32 0, align 4
@MBS_LOOP_ID_USED = common dso_local global i32 0, align 4
@MBS_COMMAND_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed=%x port_id=%02x%02x%02x loop_id=%x jiffies=%lx.\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_fabric_login(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.qla_hw_data*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @MAILBOX_REGISTER_COUNT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %13, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %313, %3
  %23 = load i32, i32* @ql_dbg_disc, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, i32, i32, i32, i32, ...) @ql_dbg(i32 %23, %struct.TYPE_20__* %24, i32 8192, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %37, i32 %42)
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_20__*, i32, i32, i32, i32, i32*, i32)*, i32 (%struct.TYPE_20__*, i32, i32, i32, i32, i32*, i32)** %47, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BIT_0, align 4
  %69 = call i32 %48(%struct.TYPE_20__* %49, i32 %52, i32 %57, i32 %62, i32 %67, i32* %18, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @QLA_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %22
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %316

75:                                               ; preds = %22
  %76 = getelementptr inbounds i32, i32* %18, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = load i32, i32* @MBS_PORT_ID_USED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %10, align 4
  %86 = getelementptr inbounds i32, i32* %18, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @ql_dbg_disc, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, i32, i32, i32, i32, ...) @ql_dbg(i32 %90, %struct.TYPE_20__* %91, i32 8193, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %99, i32 %104, i32 %109)
  br label %313

111:                                              ; preds = %75
  %112 = getelementptr inbounds i32, i32* %18, i64 0
  %113 = load i32, i32* %112, align 16
  %114 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %197

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  br label %128

122:                                              ; preds = %116
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %119
  %129 = getelementptr inbounds i32, i32* %18, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BIT_0, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @FCT_INITIATOR, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  br label %154

138:                                              ; preds = %128
  %139 = load i32, i32* @FCT_TARGET, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = getelementptr inbounds i32, i32* %18, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @BIT_1, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load i32, i32* @FCF_FCP2_DEVICE, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %138
  br label %154

154:                                              ; preds = %153, %134
  %155 = getelementptr inbounds i32, i32* %18, i64 10
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @BIT_0, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load i32, i32* @FC_COS_CLASS2, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %154
  %167 = getelementptr inbounds i32, i32* %18, i64 10
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @BIT_1, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load i32, i32* @FC_COS_CLASS3, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %166
  %179 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %180 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %178
  %183 = getelementptr inbounds i32, i32* %18, i64 10
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @BIT_7, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = load i32, i32* @FCF_CONF_COMP_SUPPORTED, align 4
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %182
  br label %195

195:                                              ; preds = %194, %178
  %196 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %196, i32* %8, align 4
  br label %314

197:                                              ; preds = %111
  %198 = getelementptr inbounds i32, i32* %18, i64 0
  %199 = load i32, i32* %198, align 16
  %200 = load i32, i32* @MBS_LOOP_ID_USED, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %209 = call i32 @qla2x00_find_new_loop_id(%struct.TYPE_20__* %207, %struct.TYPE_21__* %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @QLA_SUCCESS, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  br label %314

214:                                              ; preds = %202
  br label %311

215:                                              ; preds = %197
  %216 = getelementptr inbounds i32, i32* %18, i64 0
  %217 = load i32, i32* %216, align 16
  %218 = load i32, i32* @MBS_COMMAND_ERROR, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %253

220:                                              ; preds = %215
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32*, i32** %7, align 8
  store i32 %223, i32* %224, align 4
  %225 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %226 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %225, i32 0, i32 0
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 1
  %229 = load i32 (%struct.TYPE_20__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32, i32, i32)** %228, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 %229(%struct.TYPE_20__* %230, i32 %233, i32 %238, i32 %243, i32 %248)
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %252 = call i32 @qla2x00_mark_device_lost(%struct.TYPE_20__* %250, %struct.TYPE_21__* %251, i32 1, i32 0)
  store i32 1, i32* %8, align 4
  br label %314

253:                                              ; preds = %215
  %254 = load i32, i32* @ql_dbg_disc, align 4
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %256 = getelementptr inbounds i32, i32* %18, i64 0
  %257 = load i32, i32* %256, align 16
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @jiffies, align 4
  %277 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, i32, i32, i32, i32, ...) @ql_dbg(i32 %254, %struct.TYPE_20__* %255, i32 8194, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %257, i32 %262, i32 %267, i32 %272, i32 %275, i32 %276)
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32*, i32** %7, align 8
  store i32 %280, i32* %281, align 4
  %282 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %283 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %282, i32 0, i32 0
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 1
  %286 = load i32 (%struct.TYPE_20__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32, i32, i32)** %285, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 %286(%struct.TYPE_20__* %287, i32 %290, i32 %295, i32 %300, i32 %305)
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %308 = call i32 @qla2x00_clear_loop_id(%struct.TYPE_21__* %307)
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 1
  store i64 0, i64* %310, align 8
  store i32 3, i32* %8, align 4
  br label %314

311:                                              ; preds = %214
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312, %80
  br label %22

314:                                              ; preds = %253, %220, %213, %195
  %315 = load i32, i32* %8, align 4
  store i32 %315, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %316

316:                                              ; preds = %314, %73
  %317 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %317)
  %318 = load i32, i32* %4, align 4
  ret i32 %318
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_20__*, i32, i8*, i32, i32, i32, i32, ...) #2

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #2

declare dso_local i32 @qla2x00_find_new_loop_id(%struct.TYPE_20__*, %struct.TYPE_21__*) #2

declare dso_local i32 @qla2x00_mark_device_lost(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32) #2

declare dso_local i32 @qla2x00_clear_loop_id(%struct.TYPE_21__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
