; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_add_to_qfull_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_add_to_qfull_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_cmd = type { i32, i32, %struct.tcmu_dev* }
%struct.tcmu_dev = type { i32, i32, i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@TCMU_TIME_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"adding cmd %u on dev %s to ring space wait queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_cmd*)* @add_to_qfull_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_qfull_queue(%struct.tcmu_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcmu_cmd*, align 8
  %4 = alloca %struct.tcmu_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcmu_cmd* %0, %struct.tcmu_cmd** %3, align 8
  %7 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %7, i32 0, i32 2
  %9 = load %struct.tcmu_dev*, %struct.tcmu_dev** %8, align 8
  store %struct.tcmu_dev* %9, %struct.tcmu_dev** %4, align 8
  %10 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %11 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ETIMEDOUT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %19 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %24 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  br label %38

26:                                               ; preds = %17
  %27 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %28 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %33 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @TCMU_TIME_OUT, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %43 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %42, i32 0, i32 4
  %44 = call i32 @tcmu_setup_cmd_timer(%struct.tcmu_cmd* %40, i32 %41, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %39
  %50 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %50, i32 0, i32 1
  %52 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %53 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %52, i32 0, i32 3
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %59 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %49, %47, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @tcmu_setup_cmd_timer(%struct.tcmu_cmd*, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
