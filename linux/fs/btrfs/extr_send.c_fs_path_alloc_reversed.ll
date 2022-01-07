; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_alloc_reversed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_alloc_reversed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_path* ()* @fs_path_alloc_reversed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_path* @fs_path_alloc_reversed() #0 {
  %1 = alloca %struct.fs_path*, align 8
  %2 = alloca %struct.fs_path*, align 8
  %3 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %3, %struct.fs_path** %2, align 8
  %4 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %5 = icmp ne %struct.fs_path* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.fs_path* null, %struct.fs_path** %1, align 8
  br label %13

7:                                                ; preds = %0
  %8 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %9 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %11 = call i32 @fs_path_reset(%struct.fs_path* %10)
  %12 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  store %struct.fs_path* %12, %struct.fs_path** %1, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load %struct.fs_path*, %struct.fs_path** %1, align 8
  ret %struct.fs_path* %14
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
