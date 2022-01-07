; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_verify_parent_transid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_verify_parent_transid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_io_tree = type { i32 }
%struct.extent_buffer = type { i64, i64, i32 }
%struct.extent_state = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_SEND_TRANS_STUB = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"parent transid verify failed on %llu wanted %llu found %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_io_tree*, %struct.extent_buffer*, i64, i32)* @verify_parent_transid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_parent_transid(%struct.extent_io_tree* %0, %struct.extent_buffer* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %6, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.extent_state* null, %struct.extent_state** %10, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BTRFS_SEND_TRANS_STUB, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %23 = call i64 @btrfs_header_generation(%struct.extent_buffer* %22)
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %103

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %103

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %38 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %37)
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %40 = call i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer* %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %44 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = sub nsw i64 %52, 1
  %54 = call i32 @lock_extent_bits(%struct.extent_io_tree* %42, i64 %45, i64 %53, %struct.extent_state** %10)
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %56 = call i64 @extent_buffer_uptodate(%struct.extent_buffer* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %41
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %60 = call i64 @btrfs_header_generation(%struct.extent_buffer* %59)
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %82

64:                                               ; preds = %58, %41
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %66 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %69 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %73 = call i64 @btrfs_header_generation(%struct.extent_buffer* %72)
  %74 = call i32 @btrfs_err_rl(i32 %67, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %70, i64 %71, i64 %73)
  store i32 1, i32* %11, align 4
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %76 = call i32 @extent_buffer_under_io(%struct.extent_buffer* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %64
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %80 = call i32 @clear_extent_buffer_uptodate(%struct.extent_buffer* %79)
  br label %81

81:                                               ; preds = %78, %64
  br label %82

82:                                               ; preds = %81, %63
  %83 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %85 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %88 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %91 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = sub nsw i64 %93, 1
  %95 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %83, i64 %86, i64 %94, %struct.extent_state** %10)
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %82
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %100 = call i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer* %99)
  br label %101

101:                                              ; preds = %98, %82
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %30, %26
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer*) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, %struct.extent_state**) #1

declare dso_local i64 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_err_rl(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @extent_buffer_under_io(%struct.extent_buffer*) #1

declare dso_local i32 @clear_extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**) #1

declare dso_local i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
