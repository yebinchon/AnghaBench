; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_proc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_proc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32 }
%struct.mvumi_hotplug_event = type { i32, i32* }

@MVUMI_FW_ATTACH = common dso_local global i32 0, align 4
@DEVICE_ONLINE = common dso_local global i32 0, align 4
@DEVICE_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, %struct.mvumi_hotplug_event*)* @mvumi_proc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_proc_msg(%struct.mvumi_hba* %0, %struct.mvumi_hotplug_event* %1) #0 {
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca %struct.mvumi_hotplug_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  store %struct.mvumi_hotplug_event* %1, %struct.mvumi_hotplug_event** %4, align 8
  %9 = load %struct.mvumi_hotplug_event*, %struct.mvumi_hotplug_event** %4, align 8
  %10 = getelementptr inbounds %struct.mvumi_hotplug_event, %struct.mvumi_hotplug_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MVUMI_FW_ATTACH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %71

18:                                               ; preds = %2
  store i32 -1, i32* %8, align 4
  %19 = load %struct.mvumi_hotplug_event*, %struct.mvumi_hotplug_event** %4, align 8
  %20 = getelementptr inbounds %struct.mvumi_hotplug_event, %struct.mvumi_hotplug_event* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i64*
  store i64* %22, i64** %6, align 8
  %23 = load %struct.mvumi_hotplug_event*, %struct.mvumi_hotplug_event** %4, align 8
  %24 = getelementptr inbounds %struct.mvumi_hotplug_event, %struct.mvumi_hotplug_event* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = bitcast i32* %29 to i64*
  store i64* %30, i64** %7, align 8
  %31 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %32 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  br label %34

34:                                               ; preds = %49, %18
  %35 = load i64*, i64** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @find_next_zero_bit(i64* %35, i32 %36, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %50

44:                                               ; preds = %34
  %45 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @DEVICE_ONLINE, align 4
  %48 = call i32 @mvumi_handle_hotplug(%struct.mvumi_hba* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44
  br i1 true, label %34, label %50

50:                                               ; preds = %49, %43
  store i32 -1, i32* %8, align 4
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @find_next_zero_bit(i64* %52, i32 %53, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %67

61:                                               ; preds = %51
  %62 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @DEVICE_OFFLINE, align 4
  %65 = call i32 @mvumi_handle_hotplug(%struct.mvumi_hba* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61
  br i1 true, label %51, label %67

67:                                               ; preds = %66, %60
  %68 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %69 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %2
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #1

declare dso_local i32 @mvumi_handle_hotplug(%struct.mvumi_hba*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
