; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_post_crc_passed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_post_crc_passed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i64, i64, %struct.TYPE_6__, i64, %struct.iscsi_seq*, i64, %struct.iscsi_conn* }
%struct.TYPE_6__ = type { i64 }
%struct.iscsi_seq = type { i64, i64, i8*, i32, i32 }
%struct.iscsi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.iscsi_data = type { i32, i32, i32, i32 }

@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@DATAOUT_SEQUENCE_COMPLETE = common dso_local global i8* null, align 8
@DATAOUT_SEND_TO_TRANSPORT = common dso_local global i32 0, align 4
@DATAOUT_SEND_R2T = common dso_local global i32 0, align 4
@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*)* @iscsit_dataout_post_crc_passed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_post_crc_passed(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.iscsi_seq*, align 8
  %10 = alloca %struct.iscsi_data*, align 8
  %11 = alloca i64, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 7
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_seq* null, %struct.iscsi_seq** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.iscsi_data*
  store %struct.iscsi_data* %16, %struct.iscsi_data** %10, align 8
  %17 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %18 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntoh24(i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %128

25:                                               ; preds = %2
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %30, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %25
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %41 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %42 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @iscsit_dataout_update_r2t(%struct.iscsi_cmd* %40, i32 %44, i64 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %49, i32* %3, align 4
  br label %323

50:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %51
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %62 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %63 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %67 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @iscsit_dataout_update_datapduinorder_no(%struct.iscsi_cmd* %61, i32 %65, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %323

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77, %51
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %85 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %112

97:                                               ; preds = %78
  %98 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %99 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %98, i32 0, i32 5
  %100 = load %struct.iscsi_seq*, %struct.iscsi_seq** %99, align 8
  store %struct.iscsi_seq* %100, %struct.iscsi_seq** %9, align 8
  %101 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %102 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %107 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 8
  br label %112

112:                                              ; preds = %97, %92
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %117 = icmp ne %struct.iscsi_seq* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i8*, i8** @DATAOUT_SEQUENCE_COMPLETE, align 8
  %120 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %121 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %118, %115
  %123 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %124 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %126 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %125, i32 0, i32 6
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %122, %112
  br label %285

128:                                              ; preds = %2
  %129 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %130 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %206

137:                                              ; preds = %128
  %138 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %139 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %11, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %144 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %142, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %137
  %152 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %153 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %154 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @be32_to_cpu(i32 %155)
  %157 = load i64, i64* %11, align 8
  %158 = call i64 @iscsit_dataout_update_r2t(%struct.iscsi_cmd* %152, i32 %156, i64 %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %161, i32* %3, align 4
  br label %323

162:                                              ; preds = %151
  store i32 1, i32* %7, align 4
  br label %163

163:                                              ; preds = %162, %137
  %164 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %165 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %164, i32 0, i32 0
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %190, label %172

172:                                              ; preds = %163
  %173 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %174 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %175 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @be32_to_cpu(i32 %176)
  %178 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %179 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %182 = and i32 %180, %181
  %183 = call i32 @iscsit_dataout_update_datapduinorder_no(%struct.iscsi_cmd* %173, i32 %177, i32 %182)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %172
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %3, align 4
  br label %323

189:                                              ; preds = %172
  br label %190

190:                                              ; preds = %189, %163
  %191 = load i64, i64* %11, align 8
  %192 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %193 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %197 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %197, align 8
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %190
  %203 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %204 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %203, i32 0, i32 1
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %202, %190
  br label %284

206:                                              ; preds = %128
  %207 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %208 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %207, i32 0, i32 5
  %209 = load %struct.iscsi_seq*, %struct.iscsi_seq** %208, align 8
  store %struct.iscsi_seq* %209, %struct.iscsi_seq** %9, align 8
  %210 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %211 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %11, align 8
  %214 = add nsw i64 %212, %213
  %215 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %216 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %214, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %206
  %220 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %221 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %222 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @be32_to_cpu(i32 %223)
  %225 = load i64, i64* %11, align 8
  %226 = call i64 @iscsit_dataout_update_r2t(%struct.iscsi_cmd* %220, i32 %224, i64 %225)
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %219
  %229 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %229, i32* %3, align 4
  br label %323

230:                                              ; preds = %219
  store i32 1, i32* %7, align 4
  br label %231

231:                                              ; preds = %230, %206
  %232 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %233 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %232, i32 0, i32 0
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %258, label %240

240:                                              ; preds = %231
  %241 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %242 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %243 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @be32_to_cpu(i32 %244)
  %246 = load %struct.iscsi_data*, %struct.iscsi_data** %10, align 8
  %247 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %250 = and i32 %248, %249
  %251 = call i32 @iscsit_dataout_update_datapduinorder_no(%struct.iscsi_cmd* %241, i32 %245, i32 %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %240
  %256 = load i32, i32* %6, align 4
  store i32 %256, i32* %3, align 4
  br label %323

257:                                              ; preds = %240
  br label %258

258:                                              ; preds = %257, %231
  %259 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %260 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 4
  %263 = load i64, i64* %11, align 8
  %264 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %265 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %263
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %265, align 8
  %270 = load i64, i64* %11, align 8
  %271 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %272 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, %270
  store i64 %274, i64* %272, align 8
  %275 = load i32, i32* %7, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %258
  %278 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %279 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %278, i32 0, i32 0
  store i64 0, i64* %279, align 8
  %280 = load i8*, i8** @DATAOUT_SEQUENCE_COMPLETE, align 8
  %281 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %282 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %281, i32 0, i32 2
  store i8* %280, i8** %282, align 8
  br label %283

283:                                              ; preds = %277, %258
  br label %284

284:                                              ; preds = %283, %205
  br label %285

285:                                              ; preds = %284, %127
  %286 = load i32, i32* %7, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %285
  %289 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %290 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %289, i32 0, i32 0
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %288
  %298 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %299 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %298, i32 0, i32 4
  store i64 0, i64* %299, align 8
  br label %300

300:                                              ; preds = %297, %288, %285
  %301 = load i64, i64* %11, align 8
  %302 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %303 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, %301
  store i64 %305, i64* %303, align 8
  %306 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %307 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %310 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp eq i64 %308, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %300
  %315 = load i32, i32* @DATAOUT_SEND_TO_TRANSPORT, align 4
  store i32 %315, i32* %3, align 4
  br label %323

316:                                              ; preds = %300
  %317 = load i32, i32* %7, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = load i32, i32* @DATAOUT_SEND_R2T, align 4
  store i32 %320, i32* %3, align 4
  br label %323

321:                                              ; preds = %316
  %322 = load i32, i32* @DATAOUT_NORMAL, align 4
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %321, %319, %314, %255, %228, %187, %160, %75, %48
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @iscsit_dataout_update_r2t(%struct.iscsi_cmd*, i32, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @iscsit_dataout_update_datapduinorder_no(%struct.iscsi_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
