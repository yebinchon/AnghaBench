; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_complete_task_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_complete_task_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, %struct.se_device* }
%struct.se_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRANSPORT_FLAG_PASSTHROUGH = common dso_local global i32 0, align 4
@SCF_TASK_ATTR_SET = common dso_local global i32 0, align 4
@TCM_SIMPLE_TAG = common dso_local global i64 0, align 8
@TCM_HEAD_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Incremented dev_cur_ordered_id: %u for HEAD_OF_QUEUE\0A\00", align 1
@TCM_ORDERED_TAG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Incremented dev_cur_ordered_id: %u for ORDERED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @transport_complete_task_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_complete_task_attr(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %4 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %4, i32 0, i32 2
  %6 = load %struct.se_device*, %struct.se_device** %5, align 8
  store %struct.se_device* %6, %struct.se_device** %3, align 8
  %7 = load %struct.se_device*, %struct.se_device** %3, align 8
  %8 = getelementptr inbounds %struct.se_device, %struct.se_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TRANSPORT_FLAG_PASSTHROUGH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %83

16:                                               ; preds = %1
  %17 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SCF_TASK_ATTR_SET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %80

24:                                               ; preds = %16
  %25 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCM_SIMPLE_TAG, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.se_device*, %struct.se_device** %3, align 8
  %32 = getelementptr inbounds %struct.se_device, %struct.se_device* %31, i32 0, i32 2
  %33 = call i32 @atomic_dec_mb(i32* %32)
  %34 = load %struct.se_device*, %struct.se_device** %3, align 8
  %35 = getelementptr inbounds %struct.se_device, %struct.se_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %73

38:                                               ; preds = %24
  %39 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TCM_HEAD_TAG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.se_device*, %struct.se_device** %3, align 8
  %46 = getelementptr inbounds %struct.se_device, %struct.se_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.se_device*, %struct.se_device** %3, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %72

53:                                               ; preds = %38
  %54 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TCM_ORDERED_TAG, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.se_device*, %struct.se_device** %3, align 8
  %61 = getelementptr inbounds %struct.se_device, %struct.se_device* %60, i32 0, i32 1
  %62 = call i32 @atomic_dec_mb(i32* %61)
  %63 = load %struct.se_device*, %struct.se_device** %3, align 8
  %64 = getelementptr inbounds %struct.se_device, %struct.se_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.se_device*, %struct.se_device** %3, align 8
  %68 = getelementptr inbounds %struct.se_device, %struct.se_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %59, %53
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %30
  %74 = load i32, i32* @SCF_TASK_ATTR_SET, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %77 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %23
  %81 = load %struct.se_device*, %struct.se_device** %3, align 8
  %82 = call i32 @target_restart_delayed_cmds(%struct.se_device* %81)
  br label %83

83:                                               ; preds = %80, %15
  ret void
}

declare dso_local i32 @atomic_dec_mb(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @target_restart_delayed_cmds(%struct.se_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
