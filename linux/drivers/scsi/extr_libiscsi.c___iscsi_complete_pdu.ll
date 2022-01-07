; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c___iscsi_complete_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c___iscsi_complete_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, i8*, %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32 }
%struct.iscsi_hdr = type { i32, i64, i32, i32 }
%struct.iscsi_task = type { i8* }
%struct.iscsi_nopin = type { i32 }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@RESERVED_ITT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"[op 0x%x cid %d itt 0x%x len %d]\0A\00", align 1
@ISCSI_ERR_PROTO = common dso_local global i32 0, align 4
@ISCSI_RESERVED_TAG = common dso_local global i32 0, align 4
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4
@ISCSI_ERR_BAD_OPCODE = common dso_local global i32 0, align 4
@ISCSI_ERR_BAD_ITT = common dso_local global i32 0, align 4
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_hdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_task*, align 8
  %14 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 4
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %16, align 8
  store %struct.iscsi_session* %17, %struct.iscsi_session** %10, align 8
  %18 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i8*, i8** @jiffies, align 8
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %27 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iscsi_verify_itt(%struct.iscsi_conn* %26, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %255

35:                                               ; preds = %4
  %36 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %37 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RESERVED_ITT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @get_itt(i64 %44)
  store i32 %45, i32* %14, align 4
  br label %47

46:                                               ; preds = %35
  store i32 -1, i32* %14, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %122

58:                                               ; preds = %47
  %59 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %60 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %61 = bitcast %struct.iscsi_hdr* %60 to %struct.iscsi_nopin*
  %62 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %59, %struct.iscsi_nopin* %61)
  %63 = load i32, i32* %11, align 4
  switch i32 %63, label %119 [
    i32 134, label %64
    i32 132, label %94
    i32 137, label %100
  ]

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %68, i32* %12, align 4
  br label %121

69:                                               ; preds = %64
  %70 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ISCSI_RESERVED_TAG, align 4
  %74 = call i32 @cpu_to_be32(i32 %73)
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %121

77:                                               ; preds = %69
  %78 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %79 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %82 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %81, i32 0, i32 1
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %85 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %86 = bitcast %struct.iscsi_hdr* %85 to %struct.iscsi_nopin*
  %87 = call i32 @iscsi_send_nopout(%struct.iscsi_conn* %84, %struct.iscsi_nopin* %86)
  %88 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %89 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %92 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %91, i32 0, i32 0
  %93 = call i32 @spin_lock(i32* %92)
  br label %121

94:                                               ; preds = %58
  %95 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %96 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @iscsi_handle_reject(%struct.iscsi_conn* %95, %struct.iscsi_hdr* %96, i8* %97, i32 %98)
  store i32 %99, i32* %12, align 4
  br label %121

100:                                              ; preds = %58
  %101 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %102 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @be32_to_cpu(i32 %103)
  %105 = add nsw i32 %104, 1
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %107 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %109 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @iscsi_recv_pdu(i32 %110, %struct.iscsi_hdr* %111, i8* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %116, %100
  br label %121

119:                                              ; preds = %58
  %120 = load i32, i32* @ISCSI_ERR_BAD_OPCODE, align 4
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %119, %118, %94, %77, %76, %67
  br label %237

122:                                              ; preds = %47
  %123 = load i32, i32* %11, align 4
  switch i32 %123, label %150 [
    i32 131, label %124
    i32 130, label %124
    i32 133, label %138
    i32 135, label %139
    i32 136, label %139
    i32 128, label %139
    i32 129, label %139
    i32 134, label %139
  ]

124:                                              ; preds = %122, %122
  %125 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %126 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %127 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn* %125, i64 %128)
  store %struct.iscsi_task* %129, %struct.iscsi_task** %13, align 8
  %130 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %131 = icmp ne %struct.iscsi_task* %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* @ISCSI_ERR_BAD_ITT, align 4
  store i32 %133, i32* %5, align 4
  br label %255

134:                                              ; preds = %124
  %135 = load i8*, i8** @jiffies, align 8
  %136 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %137 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %152

138:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %255

139:                                              ; preds = %122, %122, %122, %122, %122
  %140 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %141 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %142 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %140, i64 %143)
  store %struct.iscsi_task* %144, %struct.iscsi_task** %13, align 8
  %145 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %146 = icmp ne %struct.iscsi_task* %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %139
  %148 = load i32, i32* @ISCSI_ERR_BAD_ITT, align 4
  store i32 %148, i32* %5, align 4
  br label %255

149:                                              ; preds = %139
  br label %152

150:                                              ; preds = %122
  %151 = load i32, i32* @ISCSI_ERR_BAD_OPCODE, align 4
  store i32 %151, i32* %5, align 4
  br label %255

152:                                              ; preds = %149, %134
  %153 = load i32, i32* %11, align 4
  switch i32 %153, label %234 [
    i32 131, label %154
    i32 130, label %161
    i32 135, label %166
    i32 136, label %183
    i32 128, label %183
    i32 129, label %188
    i32 134, label %204
  ]

154:                                              ; preds = %152
  %155 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %156 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %157 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @iscsi_scsi_cmd_rsp(%struct.iscsi_conn* %155, %struct.iscsi_hdr* %156, %struct.iscsi_task* %157, i8* %158, i32 %159)
  br label %236

161:                                              ; preds = %152
  %162 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %163 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %164 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %165 = call i32 @iscsi_data_in_rsp(%struct.iscsi_conn* %162, %struct.iscsi_hdr* %163, %struct.iscsi_task* %164)
  br label %236

166:                                              ; preds = %152
  %167 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %168 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %169 = bitcast %struct.iscsi_hdr* %168 to %struct.iscsi_nopin*
  %170 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %167, %struct.iscsi_nopin* %169)
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %174, i32* %12, align 4
  br label %236

175:                                              ; preds = %166
  %176 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %177 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @be32_to_cpu(i32 %178)
  %180 = add nsw i32 %179, 1
  %181 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %182 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %239

183:                                              ; preds = %152, %152
  %184 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %185 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %186 = bitcast %struct.iscsi_hdr* %185 to %struct.iscsi_nopin*
  %187 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %184, %struct.iscsi_nopin* %186)
  br label %239

188:                                              ; preds = %152
  %189 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %190 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %191 = bitcast %struct.iscsi_hdr* %190 to %struct.iscsi_nopin*
  %192 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %189, %struct.iscsi_nopin* %191)
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %196, i32* %12, align 4
  br label %236

197:                                              ; preds = %188
  %198 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %199 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %200 = call i32 @iscsi_tmf_rsp(%struct.iscsi_conn* %198, %struct.iscsi_hdr* %199)
  %201 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %202 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %203 = call i32 @iscsi_complete_task(%struct.iscsi_task* %201, i32 %202)
  br label %236

204:                                              ; preds = %152
  %205 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %206 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %207 = bitcast %struct.iscsi_hdr* %206 to %struct.iscsi_nopin*
  %208 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %205, %struct.iscsi_nopin* %207)
  %209 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %210 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @ISCSI_RESERVED_TAG, align 4
  %213 = call i32 @cpu_to_be32(i32 %212)
  %214 = icmp ne i32 %211, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %204
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215, %204
  %219 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %219, i32* %12, align 4
  br label %236

220:                                              ; preds = %215
  %221 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %222 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @be32_to_cpu(i32 %223)
  %225 = add nsw i32 %224, 1
  %226 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %227 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %229 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %230 = bitcast %struct.iscsi_hdr* %229 to %struct.iscsi_nopin*
  %231 = load i8*, i8** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @iscsi_nop_out_rsp(%struct.iscsi_task* %228, %struct.iscsi_nopin* %230, i8* %231, i32 %232)
  store i32 %233, i32* %12, align 4
  br label %236

234:                                              ; preds = %152
  %235 = load i32, i32* @ISCSI_ERR_BAD_OPCODE, align 4
  store i32 %235, i32* %12, align 4
  br label %236

236:                                              ; preds = %234, %220, %218, %197, %195, %173, %161, %154
  br label %237

237:                                              ; preds = %236, %121
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %5, align 4
  br label %255

239:                                              ; preds = %183, %175
  %240 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %241 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = load i32, i32* %9, align 4
  %246 = call i64 @iscsi_recv_pdu(i32 %242, %struct.iscsi_hdr* %243, i8* %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %239
  %249 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  store i32 %249, i32* %12, align 4
  br label %250

250:                                              ; preds = %248, %239
  %251 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %252 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %253 = call i32 @iscsi_complete_task(%struct.iscsi_task* %251, i32 %252)
  %254 = load i32, i32* %12, align 4
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %250, %237, %150, %147, %138, %132, %33
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @iscsi_verify_itt(%struct.iscsi_conn*, i64) #1

declare dso_local i32 @get_itt(i64) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @iscsi_update_cmdsn(%struct.iscsi_session*, %struct.iscsi_nopin*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iscsi_send_nopout(%struct.iscsi_conn*, %struct.iscsi_nopin*) #1

declare dso_local i32 @iscsi_handle_reject(%struct.iscsi_conn*, %struct.iscsi_hdr*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @iscsi_recv_pdu(i32, %struct.iscsi_hdr*, i8*, i32) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn*, i64) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i64) #1

declare dso_local i32 @iscsi_scsi_cmd_rsp(%struct.iscsi_conn*, %struct.iscsi_hdr*, %struct.iscsi_task*, i8*, i32) #1

declare dso_local i32 @iscsi_data_in_rsp(%struct.iscsi_conn*, %struct.iscsi_hdr*, %struct.iscsi_task*) #1

declare dso_local i32 @iscsi_tmf_rsp(%struct.iscsi_conn*, %struct.iscsi_hdr*) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

declare dso_local i32 @iscsi_nop_out_rsp(%struct.iscsi_task*, %struct.iscsi_nopin*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
