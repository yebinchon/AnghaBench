; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_send_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_send_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32 }
%struct.lcs_buffer = type { i64 }
%struct.lcs_cmd = type { i32, i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@LCS_STD_CMD_SIZE = common dso_local global i32 0, align 4
@LCS_CMD_SHUTDOWN = common dso_local global i32 0, align 4
@LCS_INITIATOR_TCPIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*)* @lcs_send_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_send_shutdown(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  %3 = alloca %struct.lcs_buffer*, align 8
  %4 = alloca %struct.lcs_cmd*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  %5 = load i32, i32* @trace, align 4
  %6 = call i32 @LCS_DBF_TEXT(i32 2, i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %8 = load i32, i32* @LCS_STD_CMD_SIZE, align 4
  %9 = call %struct.lcs_buffer* @lcs_get_lancmd(%struct.lcs_card* %7, i32 %8)
  store %struct.lcs_buffer* %9, %struct.lcs_buffer** %3, align 8
  %10 = load %struct.lcs_buffer*, %struct.lcs_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lcs_cmd*
  store %struct.lcs_cmd* %13, %struct.lcs_cmd** %4, align 8
  %14 = load i32, i32* @LCS_CMD_SHUTDOWN, align 4
  %15 = load %struct.lcs_cmd*, %struct.lcs_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @LCS_INITIATOR_TCPIP, align 4
  %18 = load %struct.lcs_cmd*, %struct.lcs_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %21 = load %struct.lcs_buffer*, %struct.lcs_buffer** %3, align 8
  %22 = call i32 @lcs_send_lancmd(%struct.lcs_card* %20, %struct.lcs_buffer* %21, i32* null)
  ret i32 %22
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_buffer* @lcs_get_lancmd(%struct.lcs_card*, i32) #1

declare dso_local i32 @lcs_send_lancmd(%struct.lcs_card*, %struct.lcs_buffer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
