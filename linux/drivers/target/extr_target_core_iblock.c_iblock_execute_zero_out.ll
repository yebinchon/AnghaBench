; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_execute_zero_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_execute_zero_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.se_cmd = type { i32, i32, %struct.scatterlist*, %struct.se_device* }
%struct.scatterlist = type { i32 }
%struct.se_device = type { i32 }

@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.se_cmd*)* @iblock_execute_zero_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_execute_zero_out(%struct.block_device* %0, %struct.se_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.se_cmd* %1, %struct.se_cmd** %5, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 3
  %13 = load %struct.se_device*, %struct.se_device** %12, align 8
  store %struct.se_device* %13, %struct.se_device** %6, align 8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 2
  %16 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %17 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %16, i64 0
  store %struct.scatterlist* %17, %struct.scatterlist** %7, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = call i32 @sg_page(%struct.scatterlist* %18)
  %20 = call i8* @kmap(i32 %19)
  %21 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  br label %64

30:                                               ; preds = %2
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @memchr_inv(i8* %31, i32 0, i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %37 = call i32 @sg_page(%struct.scatterlist* %36)
  %38 = call i32 @kunmap(i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %30
  %44 = load %struct.block_device*, %struct.block_device** %4, align 8
  %45 = load %struct.se_device*, %struct.se_device** %6, align 8
  %46 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @target_to_linux_sector(%struct.se_device* %45, i32 %48)
  %50 = load %struct.se_device*, %struct.se_device** %6, align 8
  %51 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %52 = call i32 @sbc_get_write_same_sectors(%struct.se_cmd* %51)
  %53 = call i32 @target_to_linux_sector(%struct.se_device* %50, i32 %52)
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @blkdev_issue_zeroout(%struct.block_device* %44, i32 %49, i32 %53, i32 %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %43
  %61 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %62 = load i32, i32* @GOOD, align 4
  %63 = call i32 @target_complete_cmd(%struct.se_cmd* %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %58, %41, %28
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i8* @memchr_inv(i8*, i32, i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @blkdev_issue_zeroout(%struct.block_device*, i32, i32, i32, i32) #1

declare dso_local i32 @target_to_linux_sector(%struct.se_device*, i32) #1

declare dso_local i32 @sbc_get_write_same_sectors(%struct.se_cmd*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
