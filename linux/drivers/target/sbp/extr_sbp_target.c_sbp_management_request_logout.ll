; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_management_request_logout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_management_request_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_management_agent = type { %struct.sbp_tport* }
%struct.sbp_tport = type { %struct.sbp_tpg* }
%struct.sbp_tpg = type { i32 }
%struct.sbp_management_request = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.sbp_login_descriptor = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"cannot find login: %d\0A\00", align 1
@STATUS_RESP_REQUEST_COMPLETE = common dso_local global i32 0, align 4
@SBP_STATUS_LOGIN_ID_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"mgt_agent LOGOUT from LUN %d session %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"logout from different node ID\0A\00", align 1
@SBP_STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@SBP_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_management_agent*, %struct.sbp_management_request*, i32*)* @sbp_management_request_logout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_management_request_logout(%struct.sbp_management_agent* %0, %struct.sbp_management_request* %1, i32* %2) #0 {
  %4 = alloca %struct.sbp_management_agent*, align 8
  %5 = alloca %struct.sbp_management_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sbp_tport*, align 8
  %8 = alloca %struct.sbp_tpg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sbp_login_descriptor*, align 8
  store %struct.sbp_management_agent* %0, %struct.sbp_management_agent** %4, align 8
  store %struct.sbp_management_request* %1, %struct.sbp_management_request** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %4, align 8
  %12 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %11, i32 0, i32 0
  %13 = load %struct.sbp_tport*, %struct.sbp_tport** %12, align 8
  store %struct.sbp_tport* %13, %struct.sbp_tport** %7, align 8
  %14 = load %struct.sbp_tport*, %struct.sbp_tport** %7, align 8
  %15 = getelementptr inbounds %struct.sbp_tport, %struct.sbp_tport* %14, i32 0, i32 0
  %16 = load %struct.sbp_tpg*, %struct.sbp_tpg** %15, align 8
  store %struct.sbp_tpg* %16, %struct.sbp_tpg** %8, align 8
  %17 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %18 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = call i32 @LOGOUT_ORB_LOGIN_ID(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.sbp_tpg*, %struct.sbp_tpg** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.sbp_login_descriptor* @sbp_login_find_by_id(%struct.sbp_tpg* %23, i32 %24)
  store %struct.sbp_login_descriptor* %25, %struct.sbp_login_descriptor** %10, align 8
  %26 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %10, align 8
  %27 = icmp ne %struct.sbp_login_descriptor* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %32 = call i32 @STATUS_BLOCK_RESP(i32 %31)
  %33 = load i32, i32* @SBP_STATUS_LOGIN_ID_UNKNOWN, align 4
  %34 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %38 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %80

40:                                               ; preds = %3
  %41 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %10, align 8
  %42 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %10, align 8
  %45 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %49 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %10, align 8
  %52 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %40
  %58 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %60 = call i32 @STATUS_BLOCK_RESP(i32 %59)
  %61 = load i32, i32* @SBP_STATUS_ACCESS_DENIED, align 4
  %62 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %61)
  %63 = or i32 %60, %62
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %66 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  br label %80

68:                                               ; preds = %40
  %69 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %10, align 8
  %70 = call i32 @sbp_login_release(%struct.sbp_login_descriptor* %69, i32 1)
  %71 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %72 = call i32 @STATUS_BLOCK_RESP(i32 %71)
  %73 = load i32, i32* @SBP_STATUS_OK, align 4
  %74 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %73)
  %75 = or i32 %72, %74
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %78 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  br label %80

80:                                               ; preds = %68, %57, %28
  ret void
}

declare dso_local i32 @LOGOUT_ORB_LOGIN_ID(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.sbp_login_descriptor* @sbp_login_find_by_id(%struct.sbp_tpg*, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @STATUS_BLOCK_RESP(i32) #1

declare dso_local i32 @STATUS_BLOCK_SBP_STATUS(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @sbp_login_release(%struct.sbp_login_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
