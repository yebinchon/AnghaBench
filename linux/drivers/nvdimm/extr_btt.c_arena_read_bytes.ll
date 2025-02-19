; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_arena_read_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_arena_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { %struct.nd_btt* }
%struct.nd_btt = type { %struct.nd_namespace_common* }
%struct.nd_namespace_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*, i32, i8*, i64, i64)* @arena_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arena_read_bytes(%struct.arena_info* %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.arena_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nd_btt*, align 8
  %12 = alloca %struct.nd_namespace_common*, align 8
  store %struct.arena_info* %0, %struct.arena_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.arena_info*, %struct.arena_info** %6, align 8
  %14 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %13, i32 0, i32 0
  %15 = load %struct.nd_btt*, %struct.nd_btt** %14, align 8
  store %struct.nd_btt* %15, %struct.nd_btt** %11, align 8
  %16 = load %struct.nd_btt*, %struct.nd_btt** %11, align 8
  %17 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %16, i32 0, i32 0
  %18 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %17, align 8
  store %struct.nd_namespace_common* %18, %struct.nd_namespace_common** %12, align 8
  %19 = load %struct.nd_btt*, %struct.nd_btt** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @adjust_initial_offset(%struct.nd_btt* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @nvdimm_read_bytes(%struct.nd_namespace_common* %22, i32 %23, i8* %24, i64 %25, i64 %26)
  ret i32 %27
}

declare dso_local i32 @adjust_initial_offset(%struct.nd_btt*, i32) #1

declare dso_local i32 @nvdimm_read_bytes(%struct.nd_namespace_common*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
