; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_management_request_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_management_request_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_management_agent = type { %struct.sbp_tport* }
%struct.sbp_tport = type { %struct.sbp_tpg* }
%struct.sbp_tpg = type { i32 }
%struct.sbp_management_request = type { %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.sbp_login_descriptor = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i32, i32 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read peer GUID: %d\0A\00", align 1
@STATUS_RESP_TRANSPORT_FAILURE = common dso_local global i32 0, align 4
@SBP_STATUS_UNSPECIFIED_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mgt_agent RECONNECT from %016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"mgt_agent RECONNECT unknown login ID\0A\00", align 1
@STATUS_RESP_REQUEST_COMPLETE = common dso_local global i32 0, align 4
@SBP_STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"mgt_agent RECONNECT login GUID doesn't match\0A\00", align 1
@SBP_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_management_agent*, %struct.sbp_management_request*, i32*)* @sbp_management_request_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_management_request_reconnect(%struct.sbp_management_agent* %0, %struct.sbp_management_request* %1, i32* %2) #0 {
  %4 = alloca %struct.sbp_management_agent*, align 8
  %5 = alloca %struct.sbp_management_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sbp_tport*, align 8
  %8 = alloca %struct.sbp_tpg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sbp_login_descriptor*, align 8
  store %struct.sbp_management_agent* %0, %struct.sbp_management_agent** %4, align 8
  store %struct.sbp_management_request* %1, %struct.sbp_management_request** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %4, align 8
  %13 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %12, i32 0, i32 0
  %14 = load %struct.sbp_tport*, %struct.sbp_tport** %13, align 8
  store %struct.sbp_tport* %14, %struct.sbp_tport** %7, align 8
  %15 = load %struct.sbp_tport*, %struct.sbp_tport** %7, align 8
  %16 = getelementptr inbounds %struct.sbp_tport, %struct.sbp_tport* %15, i32 0, i32 0
  %17 = load %struct.sbp_tpg*, %struct.sbp_tpg** %16, align 8
  store %struct.sbp_tpg* %17, %struct.sbp_tpg** %8, align 8
  %18 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %19 = call i32 @read_peer_guid(i64* %10, %struct.sbp_management_request* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @RCODE_COMPLETE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @STATUS_RESP_TRANSPORT_FAILURE, align 4
  %27 = call i32 @STATUS_BLOCK_RESP(i32 %26)
  %28 = load i32, i32* @SBP_STATUS_UNSPECIFIED_ERROR, align 4
  %29 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %28)
  %30 = or i32 %27, %29
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %33 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  br label %141

35:                                               ; preds = %3
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @pr_notice(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.sbp_tpg*, %struct.sbp_tpg** %8, align 8
  %39 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %40 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = call i32 @RECONNECT_ORB_LOGIN_ID(i32 %43)
  %45 = call %struct.sbp_login_descriptor* @sbp_login_find_by_id(%struct.sbp_tpg* %38, i32 %44)
  store %struct.sbp_login_descriptor* %45, %struct.sbp_login_descriptor** %11, align 8
  %46 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %47 = icmp ne %struct.sbp_login_descriptor* %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %35
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %51 = call i32 @STATUS_BLOCK_RESP(i32 %50)
  %52 = load i32, i32* @SBP_STATUS_ACCESS_DENIED, align 4
  %53 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %52)
  %54 = or i32 %51, %53
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %57 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  br label %141

59:                                               ; preds = %35
  %60 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %61 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %70 = call i32 @STATUS_BLOCK_RESP(i32 %69)
  %71 = load i32, i32* @SBP_STATUS_ACCESS_DENIED, align 4
  %72 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %71)
  %73 = or i32 %70, %72
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %76 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  br label %141

78:                                               ; preds = %59
  %79 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %80 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = call i32 @spin_lock_bh(i32* %82)
  %84 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %85 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %92 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @fw_card_put(i64 %95)
  br label %97

97:                                               ; preds = %90, %78
  %98 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %99 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %102 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  store i32 %100, i32* %104, align 4
  %105 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %106 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %109 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  store i32 %107, i32* %111, align 8
  %112 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %113 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @fw_card_get(i32 %114)
  %116 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %117 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i64 %115, i64* %119, align 8
  %120 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %121 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %124 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  store i32 %122, i32* %126, align 4
  %127 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %128 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %133 = call i32 @STATUS_BLOCK_RESP(i32 %132)
  %134 = load i32, i32* @SBP_STATUS_OK, align 4
  %135 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %134)
  %136 = or i32 %133, %135
  %137 = call i8* @cpu_to_be32(i32 %136)
  %138 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %139 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i8* %137, i8** %140, align 8
  br label %141

141:                                              ; preds = %97, %67, %48, %23
  ret void
}

declare dso_local i32 @read_peer_guid(i64*, %struct.sbp_management_request*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @STATUS_BLOCK_RESP(i32) #1

declare dso_local i32 @STATUS_BLOCK_SBP_STATUS(i32) #1

declare dso_local i32 @pr_notice(i8*, i64) #1

declare dso_local %struct.sbp_login_descriptor* @sbp_login_find_by_id(%struct.sbp_tpg*, i32) #1

declare dso_local i32 @RECONNECT_ORB_LOGIN_ID(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fw_card_put(i64) #1

declare dso_local i64 @fw_card_get(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
