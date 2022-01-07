; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_debug_swoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_debug_swoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.swoc_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"SWIMS: SWoC Rev: %02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"SWIMS: Linux SKU: %04X\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SWIMS: Linux Version: %04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.swoc_info*)* @debug_swoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_swoc(%struct.device* %0, %struct.swoc_info* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.swoc_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.swoc_info* %1, %struct.swoc_info** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %7 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(%struct.device* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %12 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %17 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
