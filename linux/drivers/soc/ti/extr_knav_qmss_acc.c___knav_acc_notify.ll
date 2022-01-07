; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c___knav_acc_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c___knav_acc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_range_info = type { i32, i32, i32, %struct.TYPE_2__, %struct.knav_device* }
%struct.TYPE_2__ = type { i32 }
%struct.knav_device = type { i32, i32 }
%struct.knav_acc_channel = type { i32 }
%struct.knav_queue_inst = type { i64 }

@RANGE_MULTI_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"acc-irq: notifying %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knav_range_info*, %struct.knav_acc_channel*)* @__knav_acc_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__knav_acc_notify(%struct.knav_range_info* %0, %struct.knav_acc_channel* %1) #0 {
  %3 = alloca %struct.knav_range_info*, align 8
  %4 = alloca %struct.knav_acc_channel*, align 8
  %5 = alloca %struct.knav_device*, align 8
  %6 = alloca %struct.knav_queue_inst*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.knav_range_info* %0, %struct.knav_range_info** %3, align 8
  store %struct.knav_acc_channel* %1, %struct.knav_acc_channel** %4, align 8
  %9 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %10 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %9, i32 0, i32 4
  %11 = load %struct.knav_device*, %struct.knav_device** %10, align 8
  store %struct.knav_device* %11, %struct.knav_device** %5, align 8
  %12 = load %struct.knav_device*, %struct.knav_device** %5, align 8
  %13 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %16 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %20 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RANGE_MULTI_QUEUE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %29 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load %struct.knav_device*, %struct.knav_device** %5, align 8
  %34 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.knav_queue_inst* @knav_range_offset_to_inst(%struct.knav_device* %33, %struct.knav_range_info* %34, i32 %35)
  store %struct.knav_queue_inst* %36, %struct.knav_queue_inst** %6, align 8
  %37 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %6, align 8
  %38 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %6, align 8
  %43 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.knav_device*, %struct.knav_device** %5, align 8
  %45 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %6, align 8
  %52 = call i32 @knav_queue_notify(%struct.knav_queue_inst* %51)
  br label %53

53:                                               ; preds = %41, %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %26

57:                                               ; preds = %26
  br label %80

58:                                               ; preds = %2
  %59 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %4, align 8
  %60 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %63 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %8, align 4
  %67 = load %struct.knav_device*, %struct.knav_device** %5, align 8
  %68 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call %struct.knav_queue_inst* @knav_range_offset_to_inst(%struct.knav_device* %67, %struct.knav_range_info* %68, i32 %69)
  store %struct.knav_queue_inst* %70, %struct.knav_queue_inst** %6, align 8
  %71 = load %struct.knav_device*, %struct.knav_device** %5, align 8
  %72 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %6, align 8
  %79 = call i32 @knav_queue_notify(%struct.knav_queue_inst* %78)
  br label %80

80:                                               ; preds = %58, %57
  ret void
}

declare dso_local %struct.knav_queue_inst* @knav_range_offset_to_inst(%struct.knav_device*, %struct.knav_range_info*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @knav_queue_notify(%struct.knav_queue_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
