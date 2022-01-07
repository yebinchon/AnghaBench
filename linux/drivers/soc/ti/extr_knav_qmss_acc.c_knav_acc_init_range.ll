; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_init_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_init_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_range_info = type { i32, i32, %struct.knav_acc_channel*, %struct.knav_device* }
%struct.knav_acc_channel = type { i64 }
%struct.knav_device = type { i32 }

@ACC_RET_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RANGE_MULTI_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_range_info*)* @knav_acc_init_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_acc_init_range(%struct.knav_range_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knav_range_info*, align 8
  %4 = alloca %struct.knav_device*, align 8
  %5 = alloca %struct.knav_acc_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knav_range_info* %0, %struct.knav_range_info** %3, align 8
  %8 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %9 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %8, i32 0, i32 3
  %10 = load %struct.knav_device*, %struct.knav_device** %9, align 8
  store %struct.knav_device* %10, %struct.knav_device** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %14 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %11
  %18 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %19 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %18, i32 0, i32 2
  %20 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %20, i64 %22
  store %struct.knav_acc_channel* %23, %struct.knav_acc_channel** %5, align 8
  %24 = load %struct.knav_device*, %struct.knav_device** %4, align 8
  %25 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @knav_acc_stop(%struct.knav_device* %24, %struct.knav_range_info* %25, i32 %26)
  %28 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %5, align 8
  %29 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.knav_device*, %struct.knav_device** %4, align 8
  %31 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @knav_acc_start(%struct.knav_device* %30, %struct.knav_range_info* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ACC_RET_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %17
  %41 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %42 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RANGE_MULTI_QUEUE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %11

52:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %47, %37
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @knav_acc_stop(%struct.knav_device*, %struct.knav_range_info*, i32) #1

declare dso_local i32 @knav_acc_start(%struct.knav_device*, %struct.knav_range_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
