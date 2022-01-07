; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_handle_csg_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_handle_csg_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.iscsi_login = type { i32, i64, i32, i32, i64, i32, i64, i64 }
%struct.iscsi_param = type { i32 }
%struct.iscsi_login_req = type { i32, i32 }
%struct.iscsi_login_rsp = type { i32 }

@AUTHMETHOD = common dso_local global i32 0, align 4
@PHASE_SECURITY = common dso_local global i32 0, align 4
@PHASE_DECLARATIVE = common dso_local global i32 0, align 4
@SENDER_INITIATOR = common dso_local global i32 0, align 4
@SENDER_RECEIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Initiator has already been successfully authenticated, but is still sending %s keys.\0A\00", align 1
@ISCSI_STATUS_CLS_INITIATOR_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_INIT_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Initiator sent zero length security payload, login failed\0A\00", align 1
@ISCSI_LOGIN_STATUS_AUTH_FAILED = common dso_local global i32 0, align 4
@SENDER_TARGET = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"Initiator sent AuthMethod=None but Target is enforcing iSCSI Authentication, login failed.\0A\00", align 1
@ISCSI_FLAG_LOGIN_NEXT_STAGE1 = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_TRANSIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_login*)* @iscsi_target_handle_csg_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_target_handle_csg_zero(%struct.iscsi_conn* %0, %struct.iscsi_login* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_login*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_param*, align 8
  %9 = alloca %struct.iscsi_login_req*, align 8
  %10 = alloca %struct.iscsi_login_rsp*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %5, align 8
  %11 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %14, %struct.iscsi_login_req** %9, align 8
  %15 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.iscsi_login_rsp*
  store %struct.iscsi_login_rsp* %18, %struct.iscsi_login_rsp** %10, align 8
  %19 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %20 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntoh24(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @AUTHMETHOD, align 4
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %23, i32 %26)
  store %struct.iscsi_param* %27, %struct.iscsi_param** %8, align 8
  %28 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %29 = icmp ne %struct.iscsi_param* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %194

31:                                               ; preds = %2
  %32 = load i32, i32* @PHASE_SECURITY, align 4
  %33 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SENDER_INITIATOR, align 4
  %36 = load i32, i32* @SENDER_RECEIVER, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %39 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %43 = call i32 @iscsi_decode_text_input(i32 %34, i32 %37, i32 %40, i32 %41, %struct.iscsi_conn* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %194

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %52 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %57 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %61 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %62 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %63 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %60, i32 %61, i32 %62)
  store i32 -1, i32* %3, align 4
  br label %194

64:                                               ; preds = %50
  br label %190

65:                                               ; preds = %47
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %71 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %72 = load i32, i32* @ISCSI_LOGIN_STATUS_AUTH_FAILED, align 4
  %73 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %70, i32 %71, i32 %72)
  store i32 -1, i32* %3, align 4
  br label %194

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %77 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %82 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %83 = call i64 @iscsi_target_check_first_request(%struct.iscsi_conn* %81, %struct.iscsi_login* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %194

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i32, i32* @PHASE_SECURITY, align 4
  %89 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @SENDER_TARGET, align 4
  %92 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %93 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %96 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %95, i32 0, i32 2
  %97 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %98 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %101 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @iscsi_encode_text_output(i32 %90, i32 %91, i32 %94, i32* %96, i32 %99, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %87
  store i32 -1, i32* %3, align 4
  br label %194

110:                                              ; preds = %87
  %111 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %112 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @iscsi_check_negotiated_keys(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %189, label %116

116:                                              ; preds = %110
  %117 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %118 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %116
  %125 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %126 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NONE, align 4
  %129 = call i64 @strncmp(i32 %127, i32 %128, i32 4)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %124
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0))
  %133 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %134 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %135 = load i32, i32* @ISCSI_LOGIN_STATUS_AUTH_FAILED, align 4
  %136 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %133, i32 %134, i32 %135)
  store i32 -1, i32* %3, align 4
  br label %194

137:                                              ; preds = %124, %116
  %138 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %139 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %147 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %194

151:                                              ; preds = %145, %137
  %152 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %153 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @NONE, align 4
  %156 = call i64 @strncmp(i32 %154, i32 %155, i32 4)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %160 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %194

164:                                              ; preds = %158, %151
  %165 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %166 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @ISCSI_FLAG_LOGIN_NEXT_STAGE1, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %164
  %172 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %173 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %171
  %179 = load i32, i32* @ISCSI_FLAG_LOGIN_NEXT_STAGE1, align 4
  %180 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %183 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %187 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  br label %188

188:                                              ; preds = %178, %171, %164
  br label %189

189:                                              ; preds = %188, %110
  store i32 0, i32* %3, align 4
  br label %194

190:                                              ; preds = %64
  %191 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %192 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %193 = call i32 @iscsi_target_do_authentication(%struct.iscsi_conn* %191, %struct.iscsi_login* %192)
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %189, %163, %150, %131, %109, %85, %68, %55, %46, %30
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i32 @iscsi_decode_text_input(i32, i32, i32, i32, %struct.iscsi_conn*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i64 @iscsi_target_check_first_request(%struct.iscsi_conn*, %struct.iscsi_login*) #1

declare dso_local i32 @iscsi_encode_text_output(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @iscsi_check_negotiated_keys(i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @iscsi_target_do_authentication(%struct.iscsi_conn*, %struct.iscsi_login*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
