; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_until_queued_io_drained.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_until_queued_io_drained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_queue_group = type { i32*, i32* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_queue_group*)* @pqi_wait_until_queued_io_drained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_wait_until_queued_io_drained(%struct.pqi_ctrl_info* %0, %struct.pqi_queue_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_queue_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_queue_group* %1, %struct.pqi_queue_group** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %52, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %55

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %49
  %14 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %5, align 8
  %15 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %5, align 8
  %23 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @list_empty(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %5, align 8
  %30 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %13
  br label %51

40:                                               ; preds = %13
  %41 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %42 = call i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info* %41)
  %43 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %44 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %40
  %50 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %13

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %9

55:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
