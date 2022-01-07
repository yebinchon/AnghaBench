; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32 }
%struct.pqi_queue_group = type { %struct.pqi_ctrl_info* }

@IRQ_NONE = common dso_local global i32 0, align 4
@RAID_PATH = common dso_local global i32 0, align 4
@AIO_PATH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pqi_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pqi_ctrl_info*, align 8
  %7 = alloca %struct.pqi_queue_group*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pqi_queue_group*
  store %struct.pqi_queue_group* %10, %struct.pqi_queue_group** %7, align 8
  %11 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %7, align 8
  %12 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %11, i32 0, i32 0
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %12, align 8
  store %struct.pqi_ctrl_info* %13, %struct.pqi_ctrl_info** %6, align 8
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %15 = call i32 @pqi_is_valid_irq(%struct.pqi_ctrl_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %21 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %7, align 8
  %22 = call i32 @pqi_process_io_intr(%struct.pqi_ctrl_info* %20, %struct.pqi_queue_group* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %30 = call i64 @pqi_process_event_intr(%struct.pqi_ctrl_info* %29)
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %28, %19
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %40 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %39, i32 0, i32 1
  %41 = call i32 @atomic_inc(i32* %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %44 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %7, align 8
  %45 = load i32, i32* @RAID_PATH, align 4
  %46 = call i32 @pqi_start_io(%struct.pqi_ctrl_info* %43, %struct.pqi_queue_group* %44, i32 %45, i32* null)
  %47 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %48 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %7, align 8
  %49 = load i32, i32* @AIO_PATH, align 4
  %50 = call i32 @pqi_start_io(%struct.pqi_ctrl_info* %47, %struct.pqi_queue_group* %48, i32 %49, i32* null)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @pqi_is_valid_irq(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_process_io_intr(%struct.pqi_ctrl_info*, %struct.pqi_queue_group*) #1

declare dso_local i64 @pqi_process_event_intr(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pqi_start_io(%struct.pqi_ctrl_info*, %struct.pqi_queue_group*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
