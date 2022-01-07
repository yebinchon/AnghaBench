; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_alloc_extent_state_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_alloc_extent_state_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_state = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_state* (%struct.extent_state*)* @alloc_extent_state_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_state* @alloc_extent_state_atomic(%struct.extent_state* %0) #0 {
  %2 = alloca %struct.extent_state*, align 8
  store %struct.extent_state* %0, %struct.extent_state** %2, align 8
  %3 = load %struct.extent_state*, %struct.extent_state** %2, align 8
  %4 = icmp ne %struct.extent_state* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.extent_state* @alloc_extent_state(i32 %6)
  store %struct.extent_state* %7, %struct.extent_state** %2, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct.extent_state*, %struct.extent_state** %2, align 8
  ret %struct.extent_state* %9
}

declare dso_local %struct.extent_state* @alloc_extent_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
