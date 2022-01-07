; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_path = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_path*)* @fs_path_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_path_free(%struct.fs_path* %0) #0 {
  %2 = alloca %struct.fs_path*, align 8
  store %struct.fs_path* %0, %struct.fs_path** %2, align 8
  %3 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %4 = icmp ne %struct.fs_path* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %8 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %11 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %16 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.fs_path*
  %19 = call i32 @kfree(%struct.fs_path* %18)
  br label %20

20:                                               ; preds = %14, %6
  %21 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %22 = call i32 @kfree(%struct.fs_path* %21)
  br label %23

23:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @kfree(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
