; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_target_login_sess_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_target_login_sess_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_7__*, i32*, i32*, i64, i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)* }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.se_portal_group }
%struct.se_portal_group = type { i32 }
%struct.iscsi_np = type { i32 }
%struct.crypto_ahash = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"iSCSI Login negotiation failed.\0A\00", align 1
@ISCSI_STATUS_CLS_INITIATOR_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_INIT_ERR = common dso_local global i32 0, align 4
@sess_ida = common dso_local global i32 0, align 4
@TARG_SESS_STATE_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_target_login_sess_out(%struct.iscsi_conn* %0, %struct.iscsi_np* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_np*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.se_portal_group*, align 8
  %10 = alloca %struct.crypto_ahash*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_np* %1, %struct.iscsi_np** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %53

14:                                               ; preds = %4
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %17 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %18 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %19 = call i32 @iscsit_collect_login_stats(%struct.iscsi_conn* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %14
  br label %53

28:                                               ; preds = %22
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %30 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %29, i32 0, i32 5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @transport_free_session(i32 %33)
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 5
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ida_free(i32* @sess_ida, i32 %39)
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 5
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i32 @kfree(%struct.TYPE_8__* %45)
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 5
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @kfree(%struct.TYPE_8__* %49)
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %52, align 8
  br label %53

53:                                               ; preds = %28, %27, %13
  %54 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %55 = call i32 @iscsi_stop_login_thread_timer(%struct.iscsi_np* %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %112, label %58

58:                                               ; preds = %53
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %60 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %59, i32 0, i32 5
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %112

63:                                               ; preds = %58
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 5
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %70 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %69, i32 0, i32 5
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TARG_SESS_STATE_FAILED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %63
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %78 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %77, i32 0, i32 6
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store %struct.se_portal_group* %80, %struct.se_portal_group** %9, align 8
  %81 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %82 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %81, i32 0, i32 5
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = call i32 @atomic_set(i32* %84, i32 0)
  %86 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %87 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %86, i32 0, i32 5
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock_bh(i32* %89)
  %91 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %92 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %91, i32 0, i32 0
  %93 = call i32 @spin_lock_bh(i32* %92)
  %94 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %95 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %94, i32 0, i32 5
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = call i32 @iscsit_start_time2retain_handler(%struct.TYPE_8__* %96)
  %98 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %99 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock_bh(i32* %99)
  br label %107

101:                                              ; preds = %63
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %103 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %102, i32 0, i32 5
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock_bh(i32* %105)
  br label %107

107:                                              ; preds = %101, %76
  %108 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %109 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %108, i32 0, i32 5
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = call i32 @iscsit_dec_session_usage_count(%struct.TYPE_8__* %110)
  br label %112

112:                                              ; preds = %107, %58, %53
  %113 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %114 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @ahash_request_free(i64 %115)
  %117 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %118 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %112
  %122 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %123 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(i64 %124)
  store %struct.crypto_ahash* %125, %struct.crypto_ahash** %10, align 8
  %126 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %127 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @ahash_request_free(i64 %128)
  %130 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %131 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %130)
  br label %132

132:                                              ; preds = %121, %112
  %133 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %134 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %139 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @iscsi_release_param_list(i32* %140)
  %142 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %143 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %142, i32 0, i32 2
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %137, %132
  %145 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %146 = call i32 @iscsi_target_nego_release(%struct.iscsi_conn* %145)
  %147 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %148 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %153 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @sock_release(i32* %154)
  %156 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %157 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %156, i32 0, i32 1
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %151, %144
  %159 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %160 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %162, align 8
  %164 = icmp ne i32 (%struct.iscsi_conn*)* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %167 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %166, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %169, align 8
  %171 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %172 = call i32 %170(%struct.iscsi_conn* %171)
  br label %173

173:                                              ; preds = %165, %158
  %174 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %175 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %177, align 8
  %179 = icmp ne i32 (%struct.iscsi_conn*)* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %182 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %181, i32 0, i32 0
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %184, align 8
  %186 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %187 = call i32 %185(%struct.iscsi_conn* %186)
  br label %188

188:                                              ; preds = %180, %173
  %189 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %190 = call i32 @iscsit_free_conn(%struct.iscsi_conn* %189)
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsit_collect_login_stats(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @transport_free_session(i32) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @iscsi_stop_login_thread_timer(%struct.iscsi_np*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_start_time2retain_handler(%struct.TYPE_8__*) #1

declare dso_local i32 @iscsit_dec_session_usage_count(%struct.TYPE_8__*) #1

declare dso_local i32 @ahash_request_free(i64) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(i64) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

declare dso_local i32 @iscsi_release_param_list(i32*) #1

declare dso_local i32 @iscsi_target_nego_release(%struct.iscsi_conn*) #1

declare dso_local i32 @sock_release(i32*) #1

declare dso_local i32 @iscsit_free_conn(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
