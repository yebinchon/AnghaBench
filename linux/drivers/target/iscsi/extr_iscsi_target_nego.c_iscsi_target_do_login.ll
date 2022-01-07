; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_do_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_do_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_login = type { i32, i32, i64, i64 }
%struct.iscsi_login_req = type { i32 }
%struct.iscsi_login_rsp = type { i32 }

@MAX_LOGIN_PDUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"MAX_LOGIN_PDUS count reached.\0A\00", align 1
@ISCSI_STATUS_CLS_TARGET_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_TARGET_ERROR = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_CURRENT_STAGE1 = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_TRANSIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Illegal CSG: %d received from Initiator, protocol error.\0A\00", align 1
@ISCSI_FLAG_LOGIN_NEXT_STAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_login*)* @iscsi_target_do_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_target_do_login(%struct.iscsi_conn* %0, %struct.iscsi_login* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_login*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_login_req*, align 8
  %8 = alloca %struct.iscsi_login_rsp*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %12, %struct.iscsi_login_req** %7, align 8
  %13 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.iscsi_login_rsp*
  store %struct.iscsi_login_rsp* %16, %struct.iscsi_login_rsp** %8, align 8
  br label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @MAX_LOGIN_PDUS, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %25 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %26 = load i32, i32* @ISCSI_LOGIN_STATUS_TARGET_ERROR, align 4
  %27 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %24, i32 %25, i32 %26)
  store i32 -1, i32* %3, align 4
  br label %122

28:                                               ; preds = %17
  %29 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %7, align 8
  %30 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ISCSI_LOGIN_CURRENT_STAGE(i32 %31)
  switch i32 %32, label %88 [
    i32 0, label %33
    i32 1, label %46
  ]

33:                                               ; preds = %28
  %34 = load i32, i32* @ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %8, align 8
  %37 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %41 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %42 = call i32 @iscsi_target_handle_csg_zero(%struct.iscsi_conn* %40, %struct.iscsi_login* %41)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %122

45:                                               ; preds = %33
  br label %94

46:                                               ; preds = %28
  %47 = load i32, i32* @ISCSI_FLAG_LOGIN_CURRENT_STAGE1, align 4
  %48 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %8, align 8
  %49 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %53 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %54 = call i32 @iscsi_target_handle_csg_one(%struct.iscsi_conn* %52, %struct.iscsi_login* %53)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %122

57:                                               ; preds = %46
  %58 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %8, align 8
  %59 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %57
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %66 = call i32 @iscsi_target_sk_check_close(%struct.iscsi_conn* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %122

69:                                               ; preds = %64
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %78 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %80 = call i32 @iscsi_target_restore_sock_callbacks(%struct.iscsi_conn* %79)
  %81 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %82 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %83 = call i64 @iscsi_target_do_tx_login_io(%struct.iscsi_conn* %81, %struct.iscsi_login* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %122

86:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %122

87:                                               ; preds = %57
  br label %94

88:                                               ; preds = %28
  %89 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %7, align 8
  %90 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ISCSI_LOGIN_CURRENT_STAGE(i32 %91)
  %93 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %87, %45
  %95 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %96 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %97 = call i64 @iscsi_target_do_tx_login_io(%struct.iscsi_conn* %95, %struct.iscsi_login* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %122

100:                                              ; preds = %94
  %101 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %8, align 8
  %102 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %100
  %108 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %8, align 8
  %111 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @ISCSI_FLAG_LOGIN_NEXT_STAGE_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %8, align 8
  %117 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %107, %100
  br label %121

121:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %99, %86, %85, %68, %56, %44, %22
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @ISCSI_LOGIN_CURRENT_STAGE(i32) #1

declare dso_local i32 @iscsi_target_handle_csg_zero(%struct.iscsi_conn*, %struct.iscsi_login*) #1

declare dso_local i32 @iscsi_target_handle_csg_one(%struct.iscsi_conn*, %struct.iscsi_login*) #1

declare dso_local i32 @iscsi_target_sk_check_close(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_target_restore_sock_callbacks(%struct.iscsi_conn*) #1

declare dso_local i64 @iscsi_target_do_tx_login_io(%struct.iscsi_conn*, %struct.iscsi_login*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
