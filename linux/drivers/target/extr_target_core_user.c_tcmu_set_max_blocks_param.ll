; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_set_max_blocks_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_set_max_blocks_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i32, i32, i64 }

@.str = private unnamed_addr constant [53 x i8] c"match_int() failed for max_data_area_mb=. Error %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid max_data_area %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Cannot set max_data_area_mb after it has been enabled.\0A\00", align 1
@tcmu_global_max_blocks = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"%d is too large. Adjusting max_data_area_mb to global limit of %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*, i32*)* @tcmu_set_max_blocks_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_set_max_blocks_param(%struct.tcmu_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcmu_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @match_int(i32* %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %16
  %25 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %26 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %29 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %55

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @TCMU_MBS_TO_BLOCKS(i32 %37)
  %39 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %40 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %42 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @tcmu_global_max_blocks, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @tcmu_global_max_blocks, align 4
  %49 = call i32 @TCMU_BLOCKS_TO_MBS(i32 %48)
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %49)
  %51 = load i32, i32* @tcmu_global_max_blocks, align 4
  %52 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %53 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %36
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %57 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %19, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TCMU_MBS_TO_BLOCKS(i32) #1

declare dso_local i32 @TCMU_BLOCKS_TO_MBS(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
