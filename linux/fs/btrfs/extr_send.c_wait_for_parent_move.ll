; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_wait_for_parent_move.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_wait_for_parent_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i32, i32, i32, i32, i32 }
%struct.recorded_ref = type { i64, i64 }
%struct.fs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, %struct.recorded_ref*, i32)* @wait_for_parent_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_parent_move(%struct.send_ctx* %0, %struct.recorded_ref* %1, i32 %2) #0 {
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca %struct.recorded_ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fs_path*, align 8
  %13 = alloca %struct.fs_path*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store %struct.recorded_ref* %1, %struct.recorded_ref** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.recorded_ref*, %struct.recorded_ref** %5, align 8
  %19 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.recorded_ref*, %struct.recorded_ref** %5, align 8
  %22 = getelementptr inbounds %struct.recorded_ref, %struct.recorded_ref* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  store %struct.fs_path* null, %struct.fs_path** %12, align 8
  store %struct.fs_path* null, %struct.fs_path** %13, align 8
  %24 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %24, %struct.fs_path** %13, align 8
  %25 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %25, %struct.fs_path** %12, align 8
  %26 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %27 = icmp ne %struct.fs_path* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %30 = icmp ne %struct.fs_path* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %144

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %140, %34
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %143

39:                                               ; preds = %35
  %40 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @is_waiting_for_move(%struct.send_ctx* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %56 = call i32 @is_ancestor(i32 %47, i64 %50, i32 %53, i64 %54, %struct.fs_path* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %143

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %39
  %62 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %63 = call i32 @fs_path_reset(%struct.fs_path* %62)
  %64 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %65 = call i32 @fs_path_reset(%struct.fs_path* %64)
  %66 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %71 = call i32 @get_first_ref(i32 %68, i64 %69, i64* %11, i64* %16, %struct.fs_path* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %144

75:                                               ; preds = %61
  %76 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %81 = call i32 @get_first_ref(i32 %78, i64 %79, i64* %10, i64* null, %struct.fs_path* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %144

90:                                               ; preds = %84, %75
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %7, align 4
  br label %143

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %99 = call i32 @fs_path_len(%struct.fs_path* %98)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %101 = call i32 @fs_path_len(%struct.fs_path* %100)
  store i32 %101, i32* %15, align 4
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %97
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %125, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %117 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %120 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i64 @memcmp(i32 %118, i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %115, %111, %107
  %126 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %127 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @get_inode_info(i32 %128, i64 %129, i32* null, i64* %17, i32* null, i32* null, i32* null, i32* null)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %144

134:                                              ; preds = %125
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %17, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 1, i32* %7, align 4
  br label %143

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %115, %97
  %141 = load i64, i64* %11, align 8
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %16, align 8
  store i64 %142, i64* %9, align 8
  br label %35

143:                                              ; preds = %138, %95, %59, %35
  br label %144

144:                                              ; preds = %143, %133, %89, %74, %31
  %145 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %146 = call i32 @fs_path_free(%struct.fs_path* %145)
  %147 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %148 = call i32 @fs_path_free(%struct.fs_path* %147)
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %170

151:                                              ; preds = %144
  %152 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %153 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %154 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %157 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %160, i32 0, i32 2
  %162 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %163 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %162, i32 0, i32 1
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @add_pending_dir_move(%struct.send_ctx* %152, i64 %155, i32 %158, i64 %159, i32* %161, i32* %163, i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %151
  store i32 1, i32* %7, align 4
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169, %144
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i64 @is_waiting_for_move(%struct.send_ctx*, i64) #1

declare dso_local i32 @is_ancestor(i32, i64, i32, i64, %struct.fs_path*) #1

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

declare dso_local i32 @get_first_ref(i32, i64, i64*, i64*, %struct.fs_path*) #1

declare dso_local i32 @fs_path_len(%struct.fs_path*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @get_inode_info(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

declare dso_local i32 @add_pending_dir_move(%struct.send_ctx*, i64, i32, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
