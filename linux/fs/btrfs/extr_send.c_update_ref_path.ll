; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_update_ref_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_update_ref_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }
%struct.recorded_ref = type { %struct.fs_path*, i32, i32, i32, i32 }
%struct.fs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, %struct.recorded_ref*)* @update_ref_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_ref_path(%struct.send_ctx* %0, %struct.recorded_ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca %struct.recorded_ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_path*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store %struct.recorded_ref* %1, %struct.recorded_ref** %5, align 8
  %8 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %8, %struct.fs_path** %7, align 8
  %9 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %10 = icmp ne %struct.fs_path* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %16 = load %struct.recorded_ref*, %struct.recorded_ref** %5, align 8
  %17 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.recorded_ref*, %struct.recorded_ref** %5, align 8
  %20 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %23 = call i32 @get_cur_path(%struct.send_ctx* %15, i32 %18, i32 %21, %struct.fs_path* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %28 = call i32 @fs_path_free(%struct.fs_path* %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %14
  %31 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %32 = load %struct.recorded_ref*, %struct.recorded_ref** %5, align 8
  %33 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.recorded_ref*, %struct.recorded_ref** %5, align 8
  %36 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @fs_path_add(%struct.fs_path* %31, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %43 = call i32 @fs_path_free(%struct.fs_path* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %30
  %46 = load %struct.recorded_ref*, %struct.recorded_ref** %5, align 8
  %47 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %46, i32 0, i32 0
  %48 = load %struct.fs_path*, %struct.fs_path** %47, align 8
  %49 = call i32 @fs_path_free(%struct.fs_path* %48)
  %50 = load %struct.recorded_ref*, %struct.recorded_ref** %5, align 8
  %51 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %52 = call i32 @set_ref_path(%struct.recorded_ref* %50, %struct.fs_path* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %41, %26, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @get_cur_path(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

declare dso_local i32 @fs_path_add(%struct.fs_path*, i32, i32) #1

declare dso_local i32 @set_ref_path(%struct.recorded_ref*, %struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
