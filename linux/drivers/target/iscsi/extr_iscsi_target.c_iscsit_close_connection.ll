; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_close_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_close_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.iscsi_conn = type { i64, i64, %struct.TYPE_6__*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, %struct.iscsi_session* }
%struct.TYPE_6__ = type { {}*, {}*, i32 }
%struct.iscsi_session = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.crypto_ahash = type { i32 }

@TARG_CONN_STATE_IN_LOGOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Closing iSCSI connection CID %hu on SID: %u\0A\00", align 1
@current = common dso_local global %struct.TYPE_8__* null, align 8
@ISCSI_RX_THREAD_NAME = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@ISCSI_TX_THREAD_NAME = common dso_local global i32 0, align 4
@iscsit_global = common dso_local global %struct.TYPE_7__* null, align 8
@ISCSI_LOGOUT_REASON_CLOSE_SESSION = common dso_local global i64 0, align 8
@ISCSI_LOGOUT_REASON_CLOSE_CONNECTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Moving to TARG_CONN_STATE_FREE.\0A\00", align 1
@TARG_CONN_STATE_FREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Decremented iSCSI connection count to %hu from node: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Moving to TARG_SESS_STATE_FREE.\0A\00", align 1
@TARG_SESS_STATE_FREE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Moving to TARG_SESS_STATE_FAILED.\0A\00", align 1
@TARG_SESS_STATE_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_close_connection(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TARG_CONN_STATE_IN_LOGOUT, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 23
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %14, align 8
  store %struct.iscsi_session* %15, %struct.iscsi_session** %5, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 22
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 21
  %32 = call i32 @complete(i32* %31)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ISCSI_RX_THREAD_NAME, align 4
  %38 = call i32 @strcmp(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %33
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 19
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 20
  %48 = call i64 @cmpxchg(i32* %47, i32 1, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i32, i32* @SIGINT, align 4
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 19
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @send_sig(i32 %51, i64 %54, i32 1)
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 19
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @kthread_stop(i64 %58)
  br label %60

60:                                               ; preds = %50, %45, %40
  br label %90

61:                                               ; preds = %33
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ISCSI_TX_THREAD_NAME, align 4
  %66 = call i32 @strcmp(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %61
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %70 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %69, i32 0, i32 17
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %75 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %74, i32 0, i32 18
  %76 = call i64 @cmpxchg(i32* %75, i32 1, i32 0)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* @SIGINT, align 4
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %81 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %80, i32 0, i32 17
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @send_sig(i32 %79, i64 %82, i32 1)
  %84 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %85 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %84, i32 0, i32 17
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @kthread_stop(i64 %86)
  br label %88

88:                                               ; preds = %78, %73, %68
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89, %60
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iscsit_global, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iscsit_global, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %98 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %97, i32 0, i32 16
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @get_order(i32 1)
  %101 = call i32 @bitmap_release_region(i32 %96, i32 %99, i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iscsit_global, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %106 = call i32 @iscsit_stop_timers_for_cmds(%struct.iscsi_conn* %105)
  %107 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %108 = call i32 @iscsit_stop_nopin_response_timer(%struct.iscsi_conn* %107)
  %109 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %110 = call i32 @iscsit_stop_nopin_timer(%struct.iscsi_conn* %109)
  %111 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %112 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = bitcast {}** %114 to i32 (%struct.iscsi_conn*)**
  %116 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %115, align 8
  %117 = icmp ne i32 (%struct.iscsi_conn*)* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %90
  %119 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %120 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %119, i32 0, i32 2
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = bitcast {}** %122 to i32 (%struct.iscsi_conn*)**
  %124 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %123, align 8
  %125 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %126 = call i32 %124(%struct.iscsi_conn* %125)
  br label %127

127:                                              ; preds = %118, %90
  %128 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %129 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %128, i32 0, i32 13
  %130 = call i64 @atomic_read(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %134 = call i32 @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn(%struct.iscsi_conn* %133)
  %135 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %136 = call i32 @iscsit_prepare_cmds_for_reallegiance(%struct.iscsi_conn* %135)
  br label %142

137:                                              ; preds = %127
  %138 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %139 = call i32 @iscsit_clear_ooo_cmdsns_for_conn(%struct.iscsi_conn* %138)
  %140 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %141 = call i32 @iscsit_release_commands_from_conn(%struct.iscsi_conn* %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %144 = call i32 @iscsit_free_queue_reqs_for_conn(%struct.iscsi_conn* %143)
  %145 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %146 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %145, i32 0, i32 15
  %147 = call i64 @atomic_read(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %179

149:                                              ; preds = %142
  %150 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %151 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ISCSI_LOGOUT_REASON_CLOSE_SESSION, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %157 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %156)
  %158 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %159 = call i32 @iscsit_dec_session_usage_count(%struct.iscsi_session* %158)
  br label %160

160:                                              ; preds = %155, %149
  %161 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %162 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @ISCSI_LOGOUT_REASON_CLOSE_CONNECTION, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %168 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %167)
  br label %169

169:                                              ; preds = %166, %160
  %170 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %171 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %170, i32 0, i32 15
  %172 = call i32 @atomic_set(i32* %171, i32 0)
  %173 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %174 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %173, i32 0, i32 7
  %175 = call i32 @atomic_set(i32* %174, i32 0)
  %176 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %177 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %176, i32 0, i32 6
  %178 = call i32 @atomic_set(i32* %177, i32 1)
  br label %179

179:                                              ; preds = %169, %142
  %180 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %181 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %180, i32 0, i32 2
  %182 = call i32 @spin_lock_bh(i32* %181)
  %183 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %184 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %183, i32 0, i32 14
  %185 = call i32 @list_del(i32* %184)
  %186 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %187 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %186, i32 0, i32 13
  %188 = call i64 @atomic_read(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %179
  %191 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %192 = call i32 @iscsit_build_conn_drop_async_message(%struct.iscsi_conn* %191)
  br label %193

193:                                              ; preds = %190, %179
  %194 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %195 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %194, i32 0, i32 2
  %196 = call i32 @spin_unlock_bh(i32* %195)
  %197 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %198 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %197, i32 0, i32 6
  %199 = call i32 @spin_lock_bh(i32* %198)
  %200 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %201 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %200, i32 0, i32 12
  %202 = call i64 @atomic_read(i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %193
  %205 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %206 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %205, i32 0, i32 6
  %207 = call i32 @spin_unlock_bh(i32* %206)
  %208 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %209 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %208, i32 0, i32 11
  %210 = call i32 @complete(i32* %209)
  %211 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %212 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %211, i32 0, i32 8
  %213 = call i32 @wait_for_completion(i32* %212)
  %214 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %215 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %214, i32 0, i32 6
  %216 = call i32 @spin_lock_bh(i32* %215)
  br label %217

217:                                              ; preds = %204, %193
  %218 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %219 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %218, i32 0, i32 10
  %220 = call i64 @atomic_read(i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %224 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %223, i32 0, i32 6
  %225 = call i32 @spin_unlock_bh(i32* %224)
  %226 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %227 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %226, i32 0, i32 9
  %228 = call i32 @complete(i32* %227)
  %229 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %230 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %229, i32 0, i32 8
  %231 = call i32 @wait_for_completion(i32* %230)
  %232 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %233 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %232, i32 0, i32 6
  %234 = call i32 @spin_lock_bh(i32* %233)
  br label %235

235:                                              ; preds = %222, %217
  %236 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %237 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %236, i32 0, i32 7
  %238 = call i32 @atomic_set(i32* %237, i32 1)
  %239 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %240 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %239, i32 0, i32 6
  %241 = call i32 @spin_unlock_bh(i32* %240)
  %242 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %243 = call i32 @iscsit_check_conn_usage_count(%struct.iscsi_conn* %242)
  %244 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %245 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %244, i32 0, i32 5
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @ahash_request_free(i64 %246)
  %248 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %249 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %235
  %253 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %254 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(i64 %255)
  store %struct.crypto_ahash* %256, %struct.crypto_ahash** %6, align 8
  %257 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %258 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @ahash_request_free(i64 %259)
  %261 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %262 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %261)
  br label %263

263:                                              ; preds = %252, %235
  %264 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %265 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %270 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @sock_release(i64 %271)
  br label %273

273:                                              ; preds = %268, %263
  %274 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %275 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %274, i32 0, i32 2
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = bitcast {}** %277 to i32 (%struct.iscsi_conn*)**
  %279 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %278, align 8
  %280 = icmp ne i32 (%struct.iscsi_conn*)* %279, null
  br i1 %280, label %281, label %290

281:                                              ; preds = %273
  %282 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %283 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %282, i32 0, i32 2
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = bitcast {}** %285 to i32 (%struct.iscsi_conn*)**
  %287 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %286, align 8
  %288 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %289 = call i32 %287(%struct.iscsi_conn* %288)
  br label %290

290:                                              ; preds = %281, %273
  %291 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %292 = load i64, i64* @TARG_CONN_STATE_FREE, align 8
  %293 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %294 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  %295 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %296 = call i32 @iscsit_free_conn(%struct.iscsi_conn* %295)
  %297 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %298 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %297, i32 0, i32 2
  %299 = call i32 @spin_lock_bh(i32* %298)
  %300 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %301 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %300, i32 0, i32 9
  %302 = call i32 @atomic_dec(i32* %301)
  %303 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %304 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %303, i32 0, i32 9
  %305 = call i64 @atomic_read(i32* %304)
  %306 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %307 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %306, i32 0, i32 10
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %305, i32 %310)
  %312 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %313 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %312, i32 0, i32 10
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 2
  br i1 %317, label %318, label %330

318:                                              ; preds = %290
  %319 = load i32, i32* %4, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %330, label %321

321:                                              ; preds = %318
  %322 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %323 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %322, i32 0, i32 5
  %324 = call i64 @atomic_read(i32* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %321
  %327 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %328 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %327, i32 0, i32 6
  %329 = call i32 @atomic_set(i32* %328, i32 1)
  br label %330

330:                                              ; preds = %326, %321, %318, %290
  %331 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %332 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %331, i32 0, i32 9
  %333 = call i64 @atomic_read(i32* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %367

335:                                              ; preds = %330
  %336 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %337 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %336, i32 0, i32 7
  %338 = call i64 @atomic_read(i32* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %349, label %340

340:                                              ; preds = %335
  %341 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %342 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %341, i32 0, i32 6
  %343 = call i64 @atomic_read(i32* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %340
  %346 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %347 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %346, i32 0, i32 2
  %348 = call i32 @spin_unlock_bh(i32* %347)
  store i32 0, i32* %2, align 4
  br label %434

349:                                              ; preds = %340, %335
  %350 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %351 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %350, i32 0, i32 8
  %352 = call i64 @atomic_read(i32* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %363, label %354

354:                                              ; preds = %349
  %355 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %356 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %355, i32 0, i32 8
  %357 = call i32 @atomic_set(i32* %356, i32 1)
  %358 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %359 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %358, i32 0, i32 2
  %360 = call i32 @spin_unlock_bh(i32* %359)
  %361 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %362 = call i32 @iscsit_stop_session(%struct.iscsi_session* %361, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %434

363:                                              ; preds = %349
  %364 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %365 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %364, i32 0, i32 2
  %366 = call i32 @spin_unlock_bh(i32* %365)
  store i32 0, i32* %2, align 4
  br label %434

367:                                              ; preds = %330
  %368 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %369 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %368, i32 0, i32 7
  %370 = call i64 @atomic_read(i32* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %383, label %372

372:                                              ; preds = %367
  %373 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %374 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %373, i32 0, i32 6
  %375 = call i64 @atomic_read(i32* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %372
  %378 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %379 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %378, i32 0, i32 2
  %380 = call i32 @spin_unlock_bh(i32* %379)
  %381 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %382 = call i32 @iscsit_close_session(%struct.iscsi_session* %381)
  store i32 0, i32* %2, align 4
  br label %434

383:                                              ; preds = %372, %367
  %384 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %385 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %384, i32 0, i32 5
  %386 = call i64 @atomic_read(i32* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %405

388:                                              ; preds = %383
  %389 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %390 = load i32, i32* @TARG_SESS_STATE_FREE, align 4
  %391 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %392 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %391, i32 0, i32 4
  store i32 %390, i32* %392, align 8
  %393 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %394 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %393, i32 0, i32 2
  %395 = call i32 @spin_unlock_bh(i32* %394)
  %396 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %397 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %396, i32 0, i32 1
  %398 = call i64 @atomic_read(i32* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %388
  %401 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %402 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %401, i32 0, i32 0
  %403 = call i32 @complete(i32* %402)
  br label %404

404:                                              ; preds = %400, %388
  store i32 0, i32* %2, align 4
  br label %434

405:                                              ; preds = %383
  %406 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %407 = load i32, i32* @TARG_SESS_STATE_FAILED, align 4
  %408 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %409 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %408, i32 0, i32 4
  store i32 %407, i32* %409, align 8
  %410 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %411 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %410, i32 0, i32 3
  %412 = call i64 @atomic_read(i32* %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %420, label %414

414:                                              ; preds = %405
  %415 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %416 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %415, i32 0, i32 2
  %417 = call i32 @spin_unlock_bh(i32* %416)
  %418 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %419 = call i32 @iscsit_start_time2retain_handler(%struct.iscsi_session* %418)
  br label %424

420:                                              ; preds = %405
  %421 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %422 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %421, i32 0, i32 2
  %423 = call i32 @spin_unlock_bh(i32* %422)
  br label %424

424:                                              ; preds = %420, %414
  %425 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %426 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %425, i32 0, i32 1
  %427 = call i64 @atomic_read(i32* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %431 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %430, i32 0, i32 0
  %432 = call i32 @complete(i32* %431)
  br label %433

433:                                              ; preds = %429, %424
  store i32 0, i32* %2, align 4
  br label %434

434:                                              ; preds = %433, %404, %377, %363, %354, %345
  %435 = load i32, i32* %2, align 4
  ret i32 %435
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @send_sig(i32, i64, i32) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iscsit_stop_timers_for_cmds(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_stop_nopin_response_timer(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_stop_nopin_timer(%struct.iscsi_conn*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_prepare_cmds_for_reallegiance(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_clear_ooo_cmdsns_for_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_release_commands_from_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_free_queue_reqs_for_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_dec_session_usage_count(%struct.iscsi_session*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @iscsit_build_conn_drop_async_message(%struct.iscsi_conn*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @iscsit_check_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local i32 @ahash_request_free(i64) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(i64) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

declare dso_local i32 @sock_release(i64) #1

declare dso_local i32 @iscsit_free_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @iscsit_stop_session(%struct.iscsi_session*, i32, i32) #1

declare dso_local i32 @iscsit_close_session(%struct.iscsi_session*) #1

declare dso_local i32 @iscsit_start_time2retain_handler(%struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
