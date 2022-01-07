; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_do_authentication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_do_authentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_login = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.iscsi_param = type { i32 }
%struct.iscsi_login_req = type { i32, i32 }
%struct.iscsi_login_rsp = type { i32 }

@AUTHMETHOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Received OK response from LIO Authentication, continuing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"iSCSI security negotiation completed successfully.\0A\00", align 1
@ISCSI_FLAG_LOGIN_NEXT_STAGE1 = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_TRANSIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Security negotiation failed.\0A\00", align 1
@ISCSI_STATUS_CLS_INITIATOR_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_AUTH_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Received unknown error %d from LIO Authentication\0A\00", align 1
@ISCSI_STATUS_CLS_TARGET_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_TARGET_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_login*)* @iscsi_target_do_authentication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_target_do_authentication(%struct.iscsi_conn* %0, %struct.iscsi_login* %1) #0 {
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
  %12 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %14, %struct.iscsi_login_req** %9, align 8
  %15 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %15, i32 0, i32 5
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
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %23, i32 %26)
  store %struct.iscsi_param* %27, %struct.iscsi_param** %8, align 8
  %28 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %29 = icmp ne %struct.iscsi_param* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %94

31:                                               ; preds = %2
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %33 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %40, i32 0, i32 2
  %42 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %43 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iscsi_handle_authentication(%struct.iscsi_conn* %32, i32 %35, i32 %38, i32 %39, i32* %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %86 [
    i32 0, label %47
    i32 1, label %49
    i32 2, label %80
  ]

47:                                               ; preds = %31
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %93

49:                                               ; preds = %31
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %52 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %54 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ISCSI_FLAG_LOGIN_NEXT_STAGE1, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %49
  %60 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %61 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load i32, i32* @ISCSI_FLAG_LOGIN_NEXT_STAGE1, align 4
  %68 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %71 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %75 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %59, %49
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %78 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %79 = call i32 @iscsi_target_check_for_existing_instances(%struct.iscsi_conn* %77, %struct.iscsi_login* %78)
  store i32 %79, i32* %3, align 4
  br label %94

80:                                               ; preds = %31
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %83 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %84 = load i32, i32* @ISCSI_LOGIN_STATUS_AUTH_FAILED, align 4
  %85 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %82, i32 %83, i32 %84)
  store i32 -1, i32* %3, align 4
  br label %94

86:                                               ; preds = %31
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %90 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %91 = load i32, i32* @ISCSI_LOGIN_STATUS_TARGET_ERROR, align 4
  %92 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %89, i32 %90, i32 %91)
  store i32 -1, i32* %3, align 4
  br label %94

93:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %86, %80, %76, %30
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i32 @iscsi_handle_authentication(%struct.iscsi_conn*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @iscsi_target_check_for_existing_instances(%struct.iscsi_conn*, %struct.iscsi_login*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
