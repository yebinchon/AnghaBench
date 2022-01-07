; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..extent_io.h_extent_changeset_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..extent_io.h_extent_changeset_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_changeset = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_changeset* ()* @extent_changeset_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_changeset* @extent_changeset_alloc() #0 {
  %1 = alloca %struct.extent_changeset*, align 8
  %2 = alloca %struct.extent_changeset*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.extent_changeset* @kmalloc(i32 4, i32 %3)
  store %struct.extent_changeset* %4, %struct.extent_changeset** %2, align 8
  %5 = load %struct.extent_changeset*, %struct.extent_changeset** %2, align 8
  %6 = icmp ne %struct.extent_changeset* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.extent_changeset* null, %struct.extent_changeset** %1, align 8
  br label %12

8:                                                ; preds = %0
  %9 = load %struct.extent_changeset*, %struct.extent_changeset** %2, align 8
  %10 = call i32 @extent_changeset_init(%struct.extent_changeset* %9)
  %11 = load %struct.extent_changeset*, %struct.extent_changeset** %2, align 8
  store %struct.extent_changeset* %11, %struct.extent_changeset** %1, align 8
  br label %12

12:                                               ; preds = %8, %7
  %13 = load %struct.extent_changeset*, %struct.extent_changeset** %1, align 8
  ret %struct.extent_changeset* %13
}

declare dso_local %struct.extent_changeset* @kmalloc(i32, i32) #1

declare dso_local i32 @extent_changeset_init(%struct.extent_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
