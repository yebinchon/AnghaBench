; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_send_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_send_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@HPSA_DEVICE_RESET_MSG = common dso_local global i32 0, align 4
@RAID_CTLR_LUNID = common dso_local global i32 0, align 4
@TYPE_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32)* @hpsa_send_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_send_host_reset(%struct.ctlr_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.CommandList*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %7 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %6)
  store %struct.CommandList* %7, %struct.CommandList** %5, align 8
  %8 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %9 = load i32, i32* @HPSA_DEVICE_RESET_MSG, align 4
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %11 = load i32, i32* @RAID_CTLR_LUNID, align 4
  %12 = load i32, i32* @TYPE_MSG, align 4
  %13 = call i32 @fill_cmd(%struct.CommandList* %8, i32 %9, %struct.ctlr_info* %10, i32* null, i32 0, i32 0, i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %16 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %14, i32* %19, align 4
  %20 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %21 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %23 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %24 = call i32 @enqueue_cmd_and_start_io(%struct.ctlr_info* %22, %struct.CommandList* %23)
  ret void
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @enqueue_cmd_and_start_io(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
