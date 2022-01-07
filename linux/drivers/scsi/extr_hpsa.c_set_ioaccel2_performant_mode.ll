; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_set_ioaccel2_performant_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_set_ioaccel2_performant_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32*, %struct.io_accel2_cmd* }
%struct.io_accel2_cmd = type { i32, i64 }
%struct.CommandList = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*, i32)* @set_ioaccel2_performant_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ioaccel2_performant_mode(%struct.ctlr_info* %0, %struct.CommandList* %1, i32 %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.CommandList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_accel2_cmd*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.CommandList* %1, %struct.CommandList** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 1
  %10 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %9, align 8
  %11 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %12 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %10, i64 %13
  store %struct.io_accel2_cmd* %14, %struct.io_accel2_cmd** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %27 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
