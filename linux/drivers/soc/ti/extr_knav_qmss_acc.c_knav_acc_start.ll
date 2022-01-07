; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_device = type { i32 }
%struct.knav_range_info = type { %struct.TYPE_2__, %struct.knav_acc_channel* }
%struct.TYPE_2__ = type { i32 }
%struct.knav_acc_channel = type { i32 }
%struct.knav_reg_acc_command = type { i32 }

@ACC_CMD_ENABLE_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"started acc channel %s, result %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_device*, %struct.knav_range_info*, i32)* @knav_acc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_acc_start(%struct.knav_device* %0, %struct.knav_range_info* %1, i32 %2) #0 {
  %4 = alloca %struct.knav_device*, align 8
  %5 = alloca %struct.knav_range_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.knav_reg_acc_command, align 4
  %8 = alloca %struct.knav_acc_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.knav_device* %0, %struct.knav_device** %4, align 8
  store %struct.knav_range_info* %1, %struct.knav_range_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.knav_range_info*, %struct.knav_range_info** %5, align 8
  %11 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %10, i32 0, i32 1
  %12 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %12, i64 %14
  store %struct.knav_acc_channel* %15, %struct.knav_acc_channel** %8, align 8
  %16 = load %struct.knav_device*, %struct.knav_device** %4, align 8
  %17 = load %struct.knav_range_info*, %struct.knav_range_info** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @knav_acc_setup_cmd(%struct.knav_device* %16, %struct.knav_range_info* %17, %struct.knav_reg_acc_command* %7, i32 %18)
  %20 = load i32, i32* @ACC_CMD_ENABLE_CHANNEL, align 4
  %21 = shl i32 %20, 8
  %22 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load %struct.knav_device*, %struct.knav_device** %4, align 8
  %26 = load %struct.knav_range_info*, %struct.knav_range_info** %5, align 8
  %27 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @knav_acc_write(%struct.knav_device* %25, i32 %29, %struct.knav_reg_acc_command* %7)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.knav_device*, %struct.knav_device** %4, align 8
  %32 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %8, align 8
  %35 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @knav_acc_result_str(i32 %37)
  %39 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @knav_acc_setup_cmd(%struct.knav_device*, %struct.knav_range_info*, %struct.knav_reg_acc_command*, i32) #1

declare dso_local i32 @knav_acc_write(%struct.knav_device*, i32, %struct.knav_reg_acc_command*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @knav_acc_result_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
