; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_get_cur_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_get_cur_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }
%struct.fs_path = type { i32 }
%struct.waiting_dir_move = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32, %struct.fs_path*)* @get_cur_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cur_path(%struct.send_ctx* %0, i32 %1, i32 %2, %struct.fs_path* %3) #0 {
  %5 = alloca %struct.send_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fs_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.waiting_dir_move*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.fs_path* %3, %struct.fs_path** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.fs_path* null, %struct.fs_path** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %15, %struct.fs_path** %10, align 8
  %16 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %17 = icmp ne %struct.fs_path* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %108

21:                                               ; preds = %4
  %22 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %23 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %25 = call i32 @fs_path_reset(%struct.fs_path* %24)
  br label %26

26:                                               ; preds = %104, %21
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %32 = icmp ne i32 %30, %31
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %107

35:                                               ; preds = %33
  %36 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %37 = call i32 @fs_path_reset(%struct.fs_path* %36)
  %38 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @is_waiting_for_rm(%struct.send_ctx* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %47 = call i32 @gen_unique_name(%struct.send_ctx* %43, i32 %44, i32 %45, %struct.fs_path* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %108

51:                                               ; preds = %42
  %52 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %53 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %54 = call i32 @fs_path_add_path(%struct.fs_path* %52, %struct.fs_path* %53)
  store i32 %54, i32* %9, align 4
  br label %107

55:                                               ; preds = %35
  %56 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.waiting_dir_move* @get_waiting_dir_move(%struct.send_ctx* %56, i32 %57)
  store %struct.waiting_dir_move* %58, %struct.waiting_dir_move** %14, align 8
  %59 = load %struct.waiting_dir_move*, %struct.waiting_dir_move** %14, align 8
  %60 = icmp ne %struct.waiting_dir_move* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.waiting_dir_move*, %struct.waiting_dir_move** %14, align 8
  %63 = getelementptr inbounds %struct.waiting_dir_move, %struct.waiting_dir_move* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %71 = call i32 @gen_unique_name(%struct.send_ctx* %67, i32 %68, i32 %69, %struct.fs_path* %70)
  store i32 %71, i32* %9, align 4
  store i32 1, i32* %13, align 4
  br label %93

72:                                               ; preds = %61, %55
  %73 = load %struct.waiting_dir_move*, %struct.waiting_dir_move** %14, align 8
  %74 = icmp ne %struct.waiting_dir_move* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %81 = call i32 @get_first_ref(i32 %78, i32 %79, i32* %11, i32* %12, %struct.fs_path* %80)
  store i32 %81, i32* %9, align 4
  br label %92

82:                                               ; preds = %72
  %83 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %87 = call i32 @__get_cur_name_and_parent(%struct.send_ctx* %83, i32 %84, i32 %85, i32* %11, i32* %12, %struct.fs_path* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %82
  br label %92

92:                                               ; preds = %91, %75
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %108

97:                                               ; preds = %93
  %98 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %99 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %100 = call i32 @fs_path_add_path(%struct.fs_path* %98, %struct.fs_path* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %108

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %7, align 4
  br label %26

107:                                              ; preds = %51, %33
  br label %108

108:                                              ; preds = %107, %103, %96, %50, %18
  %109 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %110 = call i32 @fs_path_free(%struct.fs_path* %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %115 = call i32 @fs_path_unreverse(%struct.fs_path* %114)
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

declare dso_local i64 @is_waiting_for_rm(%struct.send_ctx*, i32) #1

declare dso_local i32 @gen_unique_name(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @fs_path_add_path(%struct.fs_path*, %struct.fs_path*) #1

declare dso_local %struct.waiting_dir_move* @get_waiting_dir_move(%struct.send_ctx*, i32) #1

declare dso_local i32 @get_first_ref(i32, i32, i32*, i32*, %struct.fs_path*) #1

declare dso_local i32 @__get_cur_name_and_parent(%struct.send_ctx*, i32, i32, i32*, i32*, %struct.fs_path*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

declare dso_local i32 @fs_path_unreverse(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
