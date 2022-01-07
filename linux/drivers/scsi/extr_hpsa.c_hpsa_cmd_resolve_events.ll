; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_cmd_resolve_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_cmd_resolve_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { i32, %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i32, i64 }

@SCSI_CMD_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_cmd_resolve_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_cmd_resolve_events(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %6 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %7 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %6, i32 0, i32 1
  %8 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  store %struct.hpsa_scsi_dev_t* %8, %struct.hpsa_scsi_dev_t** %5, align 8
  %9 = load i32, i32* @SCSI_CMD_IDLE, align 4
  %10 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %11 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = call i32 (...) @mb()
  %13 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %14 = icmp ne %struct.hpsa_scsi_dev_t* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %17 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %16, i32 0, i32 0
  %18 = call i32 @atomic_dec(i32* %17)
  %19 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %20 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %25 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %30 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %29, i32 0, i32 0
  %31 = call i32 @wake_up_all(i32* %30)
  br label %32

32:                                               ; preds = %28, %23, %15
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
