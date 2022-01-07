; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_write_whole_entry_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_write_whole_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.entry_set_cache_t = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_whole_entry_set(%struct.super_block* %0, %struct.entry_set_cache_t* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.entry_set_cache_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.entry_set_cache_t* %1, %struct.entry_set_cache_t** %4, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %4, align 8
  %7 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %4, align 8
  %8 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %4, align 8
  %11 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %4, align 8
  %14 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__write_partial_entries_in_entry_set(%struct.super_block* %5, %struct.entry_set_cache_t* %6, i32 %9, i32 %12, i32 %15)
  ret i32 %16
}

declare dso_local i32 @__write_partial_entries_in_entry_set(%struct.super_block*, %struct.entry_set_cache_t*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
