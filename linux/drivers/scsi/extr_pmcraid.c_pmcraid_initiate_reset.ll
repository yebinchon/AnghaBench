; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_initiate_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_initiate_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, %struct.pmcraid_cmd*, i32, i32, i32 }
%struct.pmcraid_cmd = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"no cmnd blocks for initiate_reset\0A\00", align 1
@SHUTDOWN_NONE = common dso_local global i32 0, align 4
@PMC_DEVICE_EVENT_RESET_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_initiate_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_initiate_reset(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca %struct.pmcraid_cmd*, align 8
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %4 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %5 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %10 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @scsi_block_requests(i32 %11)
  %13 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %14 = call %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance* %13)
  store %struct.pmcraid_cmd* %14, %struct.pmcraid_cmd** %3, align 8
  %15 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %16 = icmp eq %struct.pmcraid_cmd* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = call i32 @pmcraid_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %33

19:                                               ; preds = %8
  %20 = load i32, i32* @SHUTDOWN_NONE, align 4
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %24 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %25 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %24, i32 0, i32 1
  store %struct.pmcraid_cmd* %23, %struct.pmcraid_cmd** %25, align 8
  %26 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %27 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %29 = load i32, i32* @PMC_DEVICE_EVENT_RESET_START, align 4
  %30 = call i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance* %28, i32 %29)
  %31 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %32 = call i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd* %31)
  br label %33

33:                                               ; preds = %17, %19, %1
  ret void
}

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
