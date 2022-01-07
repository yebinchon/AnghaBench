; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_info_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_info_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i32 }
%struct.btt_sb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*, %struct.btt_sb*)* @btt_info_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_info_read(%struct.arena_info* %0, %struct.btt_sb* %1) #0 {
  %3 = alloca %struct.arena_info*, align 8
  %4 = alloca %struct.btt_sb*, align 8
  store %struct.arena_info* %0, %struct.arena_info** %3, align 8
  store %struct.btt_sb* %1, %struct.btt_sb** %4, align 8
  %5 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %6 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %7 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.btt_sb*, %struct.btt_sb** %4, align 8
  %10 = call i32 @arena_read_bytes(%struct.arena_info* %5, i32 %8, %struct.btt_sb* %9, i32 4, i32 0)
  ret i32 %10
}

declare dso_local i32 @arena_read_bytes(%struct.arena_info*, i32, %struct.btt_sb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
