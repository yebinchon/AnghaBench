; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_handle_csg_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_handle_csg_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.iscsi_login = type { i32, i32, i32, i64, i32, i64, i64 }
%struct.iscsi_login_req = type { i32, i32 }
%struct.iscsi_login_rsp = type { i32 }

@PHASE_OPERATIONAL = common dso_local global i32 0, align 4
@PHASE_DECLARATIVE = common dso_local global i32 0, align 4
@SENDER_INITIATOR = common dso_local global i32 0, align 4
@SENDER_RECEIVER = common dso_local global i32 0, align 4
@ISCSI_STATUS_CLS_INITIATOR_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_INIT_ERR = common dso_local global i32 0, align 4
@SENDER_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [138 x i8] c"Initiator is requesting CSG: 1, has not been successfully authenticated, and the Target is enforcing iSCSI Authentication, login failed.\0A\00", align 1
@ISCSI_LOGIN_STATUS_AUTH_FAILED = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_NEXT_STAGE3 = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_TRANSIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_login*)* @iscsi_target_handle_csg_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_target_handle_csg_one(%struct.iscsi_conn* %0, %struct.iscsi_login* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_login*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_login_req*, align 8
  %9 = alloca %struct.iscsi_login_rsp*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %5, align 8
  %10 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %13, %struct.iscsi_login_req** %8, align 8
  %14 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.iscsi_login_rsp*
  store %struct.iscsi_login_rsp* %17, %struct.iscsi_login_rsp** %9, align 8
  %18 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %19 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntoh24(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %23 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SENDER_INITIATOR, align 4
  %26 = load i32, i32* @SENDER_RECEIVER, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %33 = call i32 @iscsi_decode_text_input(i32 %24, i32 %27, i32 %30, i32 %31, %struct.iscsi_conn* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %38 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %39 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %40 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %37, i32 %38, i32 %39)
  store i32 -1, i32* %3, align 4
  br label %135

41:                                               ; preds = %2
  %42 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %43 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %48 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %49 = call i64 @iscsi_target_check_first_request(%struct.iscsi_conn* %47, %struct.iscsi_login* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %135

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %55 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %56 = call i64 @iscsi_target_check_for_existing_instances(%struct.iscsi_conn* %54, %struct.iscsi_login* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %135

59:                                               ; preds = %53
  %60 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %61 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SENDER_TARGET, align 4
  %64 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %65 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %68 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %67, i32 0, i32 1
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %70 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %73 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @iscsi_encode_text_output(i32 %62, i32 %63, i32 %66, i32* %68, i32 %71, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %59
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %83 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %84 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %85 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %82, i32 %83, i32 %84)
  store i32 -1, i32* %3, align 4
  br label %135

86:                                               ; preds = %59
  %87 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %88 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %93 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %102 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %103 = load i32, i32* @ISCSI_LOGIN_STATUS_AUTH_FAILED, align 4
  %104 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %101, i32 %102, i32 %103)
  store i32 -1, i32* %3, align 4
  br label %135

105:                                              ; preds = %91, %86
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %107 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @iscsi_check_negotiated_keys(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %105
  %112 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %113 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ISCSI_FLAG_LOGIN_NEXT_STAGE3, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %111
  %119 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %120 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %118
  %126 = load i32, i32* @ISCSI_FLAG_LOGIN_NEXT_STAGE3, align 4
  %127 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %9, align 8
  %130 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %125, %118, %111
  br label %134

134:                                              ; preds = %133, %105
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %99, %81, %58, %51, %36
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @iscsi_decode_text_input(i32, i32, i32, i32, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i64 @iscsi_target_check_first_request(%struct.iscsi_conn*, %struct.iscsi_login*) #1

declare dso_local i64 @iscsi_target_check_for_existing_instances(%struct.iscsi_conn*, %struct.iscsi_login*) #1

declare dso_local i32 @iscsi_encode_text_output(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsi_check_negotiated_keys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
