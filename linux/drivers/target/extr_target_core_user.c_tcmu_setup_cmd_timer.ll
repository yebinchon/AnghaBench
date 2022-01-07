; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_setup_cmd_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_setup_cmd_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_cmd = type { i32, i32, %struct.tcmu_dev* }
%struct.tcmu_dev = type { i32, i32 }
%struct.timer_list = type { i32 }

@USHRT_MAX = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tcmu: Could not allocate cmd id.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"allocated cmd %u for dev %s tmo %lu\0A\00", align 1
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_cmd*, i32, %struct.timer_list*)* @tcmu_setup_cmd_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_setup_cmd_timer(%struct.tcmu_cmd* %0, i32 %1, %struct.timer_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcmu_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timer_list*, align 8
  %8 = alloca %struct.tcmu_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.tcmu_cmd* %0, %struct.tcmu_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timer_list* %2, %struct.timer_list** %7, align 8
  %10 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %10, i32 0, i32 2
  %12 = load %struct.tcmu_dev*, %struct.tcmu_dev** %11, align 8
  store %struct.tcmu_dev* %12, %struct.tcmu_dev** %8, align 8
  %13 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.tcmu_dev*, %struct.tcmu_dev** %8, align 8
  %20 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %19, i32 0, i32 1
  %21 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %22 = load i32, i32* @USHRT_MAX, align 4
  %23 = load i32, i32* @GFP_NOWAIT, align 4
  %24 = call i32 @idr_alloc(i32* %20, %struct.tcmu_cmd* %21, i32 1, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %66

30:                                               ; preds = %18
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tcmu_dev*, %struct.tcmu_dev** %8, align 8
  %38 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MSEC_PER_SEC, align 4
  %42 = udiv i32 %40, %41
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %30, %17
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %66

48:                                               ; preds = %44
  %49 = load i64, i64* @jiffies, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @msecs_to_jiffies(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @round_jiffies_up(i64 %52)
  %54 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.timer_list*, %struct.timer_list** %7, align 8
  %57 = call i32 @timer_pending(%struct.timer_list* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %48
  %60 = load %struct.timer_list*, %struct.timer_list** %7, align 8
  %61 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mod_timer(%struct.timer_list* %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %48
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %47, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @idr_alloc(i32*, %struct.tcmu_cmd*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
