; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_mpc_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_mpc_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_cmd_buffer = type { i32, i32 }
%struct.qeth_card = type { i32 }

@QETH_TIMEOUT = common dso_local global i32 0, align 4
@CCW_CMD_WRITE = common dso_local global i32 0, align 4
@qeth_mpc_finalize_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_cmd_buffer* (%struct.qeth_card*, i8*, i32)* @qeth_mpc_alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_cmd_buffer* @qeth_mpc_alloc_cmd(%struct.qeth_card* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_cmd_buffer*, align 8
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @QETH_TIMEOUT, align 4
  %13 = call %struct.qeth_cmd_buffer* @qeth_alloc_cmd(i32* %10, i32 %11, i32 1, i32 %12)
  store %struct.qeth_cmd_buffer* %13, %struct.qeth_cmd_buffer** %8, align 8
  %14 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %15 = icmp ne %struct.qeth_cmd_buffer* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.qeth_cmd_buffer* null, %struct.qeth_cmd_buffer** %4, align 8
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %19 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @memcpy(i32 %20, i8* %21, i32 %22)
  %24 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %25 = call i32 @__ccw_from_cmd(%struct.qeth_cmd_buffer* %24)
  %26 = load i32, i32* @CCW_CMD_WRITE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %29 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @qeth_setup_ccw(i32 %25, i32 %26, i32 0, i32 %27, i32 %30)
  %32 = load i32, i32* @qeth_mpc_finalize_cmd, align 4
  %33 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %34 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  store %struct.qeth_cmd_buffer* %35, %struct.qeth_cmd_buffer** %4, align 8
  br label %36

36:                                               ; preds = %17, %16
  %37 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  ret %struct.qeth_cmd_buffer* %37
}

declare dso_local %struct.qeth_cmd_buffer* @qeth_alloc_cmd(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @qeth_setup_ccw(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__ccw_from_cmd(%struct.qeth_cmd_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
