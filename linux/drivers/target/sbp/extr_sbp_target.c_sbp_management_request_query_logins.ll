; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_management_request_query_logins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_management_request_query_logins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_management_agent = type { i32 }
%struct.sbp_management_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"QUERY LOGINS not implemented\0A\00", align 1
@STATUS_RESP_REQUEST_COMPLETE = common dso_local global i32 0, align 4
@SBP_STATUS_REQ_TYPE_NOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_management_agent*, %struct.sbp_management_request*, i32*)* @sbp_management_request_query_logins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_management_request_query_logins(%struct.sbp_management_agent* %0, %struct.sbp_management_request* %1, i32* %2) #0 {
  %4 = alloca %struct.sbp_management_agent*, align 8
  %5 = alloca %struct.sbp_management_request*, align 8
  %6 = alloca i32*, align 8
  store %struct.sbp_management_agent* %0, %struct.sbp_management_agent** %4, align 8
  store %struct.sbp_management_request* %1, %struct.sbp_management_request** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = call i32 @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %9 = call i32 @STATUS_BLOCK_RESP(i32 %8)
  %10 = load i32, i32* @SBP_STATUS_REQ_TYPE_NOTSUPP, align 4
  %11 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %10)
  %12 = or i32 %9, %11
  %13 = call i32 @cpu_to_be32(i32 %12)
  %14 = load %struct.sbp_management_request*, %struct.sbp_management_request** %5, align 8
  %15 = getelementptr inbounds %struct.sbp_management_request, %struct.sbp_management_request* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  ret void
}

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @STATUS_BLOCK_RESP(i32) #1

declare dso_local i32 @STATUS_BLOCK_SBP_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
