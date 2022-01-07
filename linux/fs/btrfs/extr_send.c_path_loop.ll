; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_path_loop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_path_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }
%struct.fs_path = type { i32 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, %struct.fs_path*, i64, i64, i64*)* @path_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_loop(%struct.send_ctx* %0, %struct.fs_path* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.send_ctx*, align 8
  %7 = alloca %struct.fs_path*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %6, align 8
  store %struct.fs_path* %1, %struct.fs_path** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i64*, i64** %10, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %74, %5
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %23 = call i32 @fs_path_reset(%struct.fs_path* %22)
  %24 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @is_waiting_for_rm(%struct.send_ctx* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %77

29:                                               ; preds = %21
  %30 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @is_waiting_for_move(%struct.send_ctx* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = load i64*, i64** %10, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %47 = call i32 @get_first_ref(i32 %44, i64 %45, i64* %12, i64* %13, %struct.fs_path* %46)
  store i32 %47, i32* %11, align 4
  br label %58

48:                                               ; preds = %29
  %49 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %53 = call i32 @__get_cur_name_and_parent(%struct.send_ctx* %49, i64 %50, i64 %51, i64* %12, i64* %13, %struct.fs_path* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %77

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %77

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i64, i64* %8, align 8
  %72 = load i64*, i64** %10, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %66
  br label %77

74:                                               ; preds = %62
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %13, align 8
  store i64 %76, i64* %9, align 8
  br label %17

77:                                               ; preds = %73, %61, %56, %28, %17
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

declare dso_local i64 @is_waiting_for_rm(%struct.send_ctx*, i64) #1

declare dso_local i64 @is_waiting_for_move(%struct.send_ctx*, i64) #1

declare dso_local i32 @get_first_ref(i32, i64, i64*, i64*, %struct.fs_path*) #1

declare dso_local i32 @__get_cur_name_and_parent(%struct.send_ctx*, i64, i64, i64*, i64*, %struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
