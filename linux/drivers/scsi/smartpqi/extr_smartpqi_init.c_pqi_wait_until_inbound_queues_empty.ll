; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_until_inbound_queues_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_until_inbound_queues_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.pqi_queue_group* }
%struct.pqi_queue_group = type { i64*, i32* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_wait_until_inbound_queues_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_wait_until_inbound_queues_empty(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pqi_queue_group*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %71, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %10
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %18 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %17, i32 0, i32 1
  %19 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %19, i64 %21
  store %struct.pqi_queue_group* %22, %struct.pqi_queue_group** %7, align 8
  %23 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %24 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %7, align 8
  %25 = call i32 @pqi_wait_until_queued_io_drained(%struct.pqi_ctrl_info* %23, %struct.pqi_queue_group* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %75

30:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %7, align 8
  %36 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %34, %64
  %43 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %7, align 8
  %44 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @readl(i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %66

55:                                               ; preds = %42
  %56 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %57 = call i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info* %56)
  %58 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %59 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %75

64:                                               ; preds = %55
  %65 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %42

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %31

70:                                               ; preds = %31
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %10

74:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %61, %28
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @pqi_wait_until_queued_io_drained(%struct.pqi_ctrl_info*, %struct.pqi_queue_group*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
