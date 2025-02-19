; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_execute_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_execute_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_device* }
%struct.se_device = type { i32 }
%struct.block_device = type { i32 }
%struct.TYPE_2__ = type { %struct.block_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"blkdev_issue_discard() failed: %d\0A\00", align 1
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i32, i32)* @iblock_execute_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_execute_unmap(%struct.se_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 0
  %13 = load %struct.se_device*, %struct.se_device** %12, align 8
  %14 = call %struct.TYPE_2__* @IBLOCK_DEV(%struct.se_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.block_device*, %struct.block_device** %15, align 8
  store %struct.block_device* %16, %struct.block_device** %8, align 8
  %17 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load %struct.se_device*, %struct.se_device** %18, align 8
  store %struct.se_device* %19, %struct.se_device** %9, align 8
  %20 = load %struct.block_device*, %struct.block_device** %8, align 8
  %21 = load %struct.se_device*, %struct.se_device** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @target_to_linux_sector(%struct.se_device* %21, i32 %22)
  %24 = load %struct.se_device*, %struct.se_device** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @target_to_linux_sector(%struct.se_device* %24, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @blkdev_issue_discard(%struct.block_device* %20, i32 %23, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_2__* @IBLOCK_DEV(%struct.se_device*) #1

declare dso_local i32 @blkdev_issue_discard(%struct.block_device*, i32, i32, i32, i32) #1

declare dso_local i32 @target_to_linux_sector(%struct.se_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
