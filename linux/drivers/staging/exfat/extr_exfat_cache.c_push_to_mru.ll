; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_push_to_mru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_push_to_mru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_cache_t = type { %struct.buf_cache_t*, %struct.buf_cache_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_cache_t*, %struct.buf_cache_t*)* @push_to_mru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_to_mru(%struct.buf_cache_t* %0, %struct.buf_cache_t* %1) #0 {
  %3 = alloca %struct.buf_cache_t*, align 8
  %4 = alloca %struct.buf_cache_t*, align 8
  store %struct.buf_cache_t* %0, %struct.buf_cache_t** %3, align 8
  store %struct.buf_cache_t* %1, %struct.buf_cache_t** %4, align 8
  %5 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %6 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %5, i32 0, i32 0
  %7 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %8 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %9 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %8, i32 0, i32 0
  store %struct.buf_cache_t* %7, %struct.buf_cache_t** %9, align 8
  %10 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %11 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %12 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %11, i32 0, i32 1
  store %struct.buf_cache_t* %10, %struct.buf_cache_t** %12, align 8
  %13 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %14 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %15 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %14, i32 0, i32 0
  %16 = load %struct.buf_cache_t*, %struct.buf_cache_t** %15, align 8
  %17 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %16, i32 0, i32 1
  store %struct.buf_cache_t* %13, %struct.buf_cache_t** %17, align 8
  %18 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %19 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %20 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %19, i32 0, i32 0
  store %struct.buf_cache_t* %18, %struct.buf_cache_t** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
