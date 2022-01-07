; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.h_set_extent_delalloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.h_set_extent_delalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { i32 }
%struct.extent_state = type { i32 }

@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_UPTODATE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_io_tree*, i32, i32, i32, %struct.extent_state**)* @set_extent_delalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_extent_delalloc(%struct.extent_io_tree* %0, i32 %1, i32 %2, i32 %3, %struct.extent_state** %4) #0 {
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_state**, align 8
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.extent_state** %4, %struct.extent_state*** %10, align 8
  %11 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @EXTENT_DELALLOC, align 4
  %15 = load i32, i32* @EXTENT_UPTODATE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.extent_state**, %struct.extent_state*** %10, align 8
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call i32 @set_extent_bit(%struct.extent_io_tree* %11, i32 %12, i32 %13, i32 %18, i32* null, %struct.extent_state** %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @set_extent_bit(%struct.extent_io_tree*, i32, i32, i32, i32*, %struct.extent_state**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
