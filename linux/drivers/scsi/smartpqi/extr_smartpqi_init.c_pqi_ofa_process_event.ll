; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pqi_event = type { i32, i32, i32 }

@PQI_EVENT_OFA_QUIESCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Received Online Firmware Activation quiesce event for controller %u\0A\00", align 1
@RESET_INITIATE_FIRMWARE = common dso_local global i32 0, align 4
@PQI_EVENT_OFA_MEMORY_ALLOCATION = common dso_local global i64 0, align 8
@PQI_EVENT_OFA_CANCELLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Online Firmware Activation(%u) cancel reason : %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_event*)* @pqi_ofa_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_ofa_process_event(%struct.pqi_ctrl_info* %0, %struct.pqi_event* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_event* %1, %struct.pqi_event** %4, align 8
  %7 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %8 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %7, i32 0, i32 2
  %9 = call i64 @get_unaligned_le16(i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PQI_EVENT_OFA_QUIESCE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %18 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %22 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %20, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %26 = call i32 @pqi_ofa_ctrl_quiesce(%struct.pqi_ctrl_info* %25)
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %28 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %29 = call i32 @pqi_acknowledge_event(%struct.pqi_ctrl_info* %27, %struct.pqi_event* %28)
  %30 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %31 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %16
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %36 = call i32 @pqi_poll_for_soft_reset_status(%struct.pqi_ctrl_info* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @pqi_process_soft_reset(%struct.pqi_ctrl_info* %37, i32 %38)
  br label %44

40:                                               ; preds = %16
  %41 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %42 = load i32, i32* @RESET_INITIATE_FIRMWARE, align 4
  %43 = call i32 @pqi_process_soft_reset(%struct.pqi_ctrl_info* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %34
  br label %84

45:                                               ; preds = %2
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @PQI_EVENT_OFA_MEMORY_ALLOCATION, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %51 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %52 = call i32 @pqi_acknowledge_event(%struct.pqi_ctrl_info* %50, %struct.pqi_event* %51)
  %53 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %54 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %55 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = call i32 @pqi_ofa_setup_host_buffer(%struct.pqi_ctrl_info* %53, i32 %57)
  %59 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %60 = call i32 @pqi_ofa_host_memory_update(%struct.pqi_ctrl_info* %59)
  br label %83

61:                                               ; preds = %45
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @PQI_EVENT_OFA_CANCELLED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %67 = call i32 @pqi_ofa_free_host_buffer(%struct.pqi_ctrl_info* %66)
  %68 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %69 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %70 = call i32 @pqi_acknowledge_event(%struct.pqi_ctrl_info* %68, %struct.pqi_event* %69)
  %71 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %72 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %76 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %79 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %65, %61
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %83, %44
  %85 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %86 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  ret void
}

declare dso_local i64 @get_unaligned_le16(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @pqi_ofa_ctrl_quiesce(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_acknowledge_event(%struct.pqi_ctrl_info*, %struct.pqi_event*) #1

declare dso_local i32 @pqi_poll_for_soft_reset_status(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_process_soft_reset(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_ofa_setup_host_buffer(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pqi_ofa_host_memory_update(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ofa_free_host_buffer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
