; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_get_expire_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_get_expire_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_expire_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_expire_time(i32 %0) #0 {
  %2 = alloca %struct.timespec64, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec64, align 4
  %5 = alloca %struct.timespec64, align 4
  store i32 %0, i32* %3, align 4
  %6 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = call i32 @ktime_get_coarse_real_ts64(%struct.timespec64* %5)
  %10 = bitcast %struct.timespec64* %5 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = bitcast %struct.timespec64* %4 to i64*
  %13 = load i64, i64* %12, align 4
  %14 = call i64 @timespec64_add(i64 %11, i64 %13)
  %15 = bitcast %struct.timespec64* %2 to i64*
  store i64 %14, i64* %15, align 4
  %16 = bitcast %struct.timespec64* %2 to i64*
  %17 = load i64, i64* %16, align 4
  ret i64 %17
}

declare dso_local i32 @ktime_get_coarse_real_ts64(%struct.timespec64*) #1

declare dso_local i64 @timespec64_add(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
