; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_wait_genl_cmd_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_wait_genl_cmd_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i64, %struct.tcmu_nl_cmd }
%struct.tcmu_nl_cmd = type { i32, i32, i32 }

@tcmu_kern_cmd_reply_supported = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sleeping for nl reply\0A\00", align 1
@tcmu_nl_cmd_mutex = common dso_local global i32 0, align 4
@TCMU_CMD_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*)* @tcmu_wait_genl_cmd_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_wait_genl_cmd_reply(%struct.tcmu_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcmu_dev*, align 8
  %4 = alloca %struct.tcmu_nl_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %3, align 8
  %6 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %7 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %6, i32 0, i32 1
  store %struct.tcmu_nl_cmd* %7, %struct.tcmu_nl_cmd** %4, align 8
  %8 = load i32, i32* @tcmu_kern_cmd_reply_supported, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %13 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %31

17:                                               ; preds = %11
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %19, i32 0, i32 2
  %21 = call i32 @wait_for_completion(i32* %20)
  %22 = call i32 @mutex_lock(i32* @tcmu_nl_cmd_mutex)
  %23 = load i32, i32* @TCMU_CMD_UNSPEC, align 4
  %24 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = call i32 @mutex_unlock(i32* @tcmu_nl_cmd_mutex)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %17, %16, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
