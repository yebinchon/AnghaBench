; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.h_SA5_submit_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.h_SA5_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i64 }
%struct.CommandList = type { i32 }

@SA5_REQUEST_PORT_OFFSET = common dso_local global i64 0, align 8
@SA5_SCRATCHPAD_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @SA5_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SA5_submit_command(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %5 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %6 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SA5_REQUEST_PORT_OFFSET, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %15 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SA5_SCRATCHPAD_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
