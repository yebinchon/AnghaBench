; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_check_expired_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_check_expired_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_cmd = type { i32, %struct.se_cmd*, i32, i32, %struct.tcmu_dev* }
%struct.se_cmd = type { i32 }
%struct.tcmu_dev = type { i32, i32, i32 }

@TCMU_CMD_BIT_EXPIRED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TCMU_CMD_BIT_INFLIGHT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SAM_STAT_TASK_SET_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Timing out cmd %u on dev %s that is %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"inflight\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"queued\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @tcmu_check_expired_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_check_expired_cmd(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tcmu_cmd*, align 8
  %9 = alloca %struct.tcmu_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.se_cmd*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.tcmu_cmd*
  store %struct.tcmu_cmd* %14, %struct.tcmu_cmd** %8, align 8
  %15 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %16 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %15, i32 0, i32 4
  %17 = load %struct.tcmu_dev*, %struct.tcmu_dev** %16, align 8
  store %struct.tcmu_dev* %17, %struct.tcmu_dev** %9, align 8
  %18 = load i32, i32* @TCMU_CMD_BIT_EXPIRED, align 4
  %19 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %20 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %19, i32 0, i32 2
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

24:                                               ; preds = %3
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %27 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @time_after(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %83

32:                                               ; preds = %24
  %33 = load i32, i32* @TCMU_CMD_BIT_INFLIGHT, align 4
  %34 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %34, i32 0, i32 2
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %37, i32 0, i32 1
  %39 = load %struct.se_cmd*, %struct.se_cmd** %38, align 8
  store %struct.se_cmd* %39, %struct.se_cmd** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %32
  %43 = load %struct.tcmu_dev*, %struct.tcmu_dev** %9, align 8
  %44 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %83

48:                                               ; preds = %42
  %49 = load i32, i32* @TCMU_CMD_BIT_EXPIRED, align 4
  %50 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %51 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %50, i32 0, i32 2
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %55 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %54, i32 0, i32 0
  %56 = call i32 @list_del_init(i32* %55)
  %57 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %58 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %57, i32 0, i32 1
  store %struct.se_cmd* null, %struct.se_cmd** %58, align 8
  br label %70

59:                                               ; preds = %32
  %60 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %60, i32 0, i32 0
  %62 = call i32 @list_del_init(i32* %61)
  %63 = load %struct.tcmu_dev*, %struct.tcmu_dev** %9, align 8
  %64 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @idr_remove(i32* %64, i32 %65)
  %67 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %8, align 8
  %68 = call i32 @tcmu_free_cmd(%struct.tcmu_cmd* %67)
  %69 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %59, %48
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.tcmu_dev*, %struct.tcmu_dev** %9, align 8
  %73 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i8* %78)
  %80 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @target_complete_cmd(%struct.se_cmd* %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %70, %47, %31, %23
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @time_after(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @tcmu_free_cmd(%struct.tcmu_cmd*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
