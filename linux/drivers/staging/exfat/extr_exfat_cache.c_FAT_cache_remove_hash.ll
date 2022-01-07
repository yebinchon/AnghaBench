; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_FAT_cache_remove_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_FAT_cache_remove_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_cache_t = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_cache_t*)* @FAT_cache_remove_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FAT_cache_remove_hash(%struct.buf_cache_t* %0) #0 {
  %2 = alloca %struct.buf_cache_t*, align 8
  store %struct.buf_cache_t* %0, %struct.buf_cache_t** %2, align 8
  %3 = load %struct.buf_cache_t*, %struct.buf_cache_t** %2, align 8
  %4 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.buf_cache_t*, %struct.buf_cache_t** %2, align 8
  %7 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %9, align 8
  %10 = load %struct.buf_cache_t*, %struct.buf_cache_t** %2, align 8
  %11 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.buf_cache_t*, %struct.buf_cache_t** %2, align 8
  %14 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
