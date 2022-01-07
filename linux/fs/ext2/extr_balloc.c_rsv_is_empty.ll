; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_rsv_is_empty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_rsv_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_reserve_window = type { i64 }

@EXT2_RESERVE_WINDOW_NOT_ALLOCATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_reserve_window*)* @rsv_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsv_is_empty(%struct.ext2_reserve_window* %0) #0 {
  %2 = alloca %struct.ext2_reserve_window*, align 8
  store %struct.ext2_reserve_window* %0, %struct.ext2_reserve_window** %2, align 8
  %3 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %2, align 8
  %4 = getelementptr inbounds %struct.ext2_reserve_window, %struct.ext2_reserve_window* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @EXT2_RESERVE_WINDOW_NOT_ALLOCATED, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
