; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_block_rsv_release_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_block_rsv_release_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_rsv = type { i64, i64, i64, i32, i64, i32, %struct.btrfs_space_info* }
%struct.btrfs_space_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv*, i64, i64*)* @block_rsv_release_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @block_rsv_release_bytes(%struct.btrfs_fs_info* %0, %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_block_rsv*, align 8
  %8 = alloca %struct.btrfs_block_rsv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.btrfs_space_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %7, align 8
  store %struct.btrfs_block_rsv* %2, %struct.btrfs_block_rsv** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %15, i32 0, i32 6
  %17 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %16, align 8
  store %struct.btrfs_space_info* %17, %struct.btrfs_space_info** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %18, i32 0, i32 5
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %25 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %23, %5
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %40 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %30
  %44 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %45 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %48 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %9, align 8
  %51 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %52 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %55 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %57 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %56, i32 0, i32 3
  store i32 1, i32* %57, align 8
  br label %59

58:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %61 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %64 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %59
  %68 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %69 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %72 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  store i64 %74, i64* %12, align 8
  %75 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %76 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %79 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  br label %81

80:                                               ; preds = %59
  store i64 0, i64* %12, align 8
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %83 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %82, i32 0, i32 5
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %142

88:                                               ; preds = %81
  %89 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %90 = icmp ne %struct.btrfs_block_rsv* %89, null
  br i1 %90, label %91, label %133

91:                                               ; preds = %88
  %92 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %93 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %92, i32 0, i32 5
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %96 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %129, label %99

99:                                               ; preds = %91
  %100 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %101 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %104 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %102, %105
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i64 @min(i64 %107, i64 %108)
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %112 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %116 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %119 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %99
  %123 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %124 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %123, i32 0, i32 3
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %99
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %9, align 8
  %128 = sub nsw i64 %127, %126
  store i64 %128, i64* %9, align 8
  br label %129

129:                                              ; preds = %125, %91
  %130 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %131 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %130, i32 0, i32 5
  %132 = call i32 @spin_unlock(i32* %131)
  br label %133

133:                                              ; preds = %129, %88
  %134 = load i64, i64* %9, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %138 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %11, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @btrfs_space_info_free_bytes_may_use(%struct.btrfs_fs_info* %137, %struct.btrfs_space_info* %138, i64 %139)
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %81
  %143 = load i64*, i64** %10, align 8
  %144 = icmp ne i64* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i64, i64* %12, align 8
  %147 = load i64*, i64** %10, align 8
  store i64 %146, i64* %147, align 8
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i64, i64* %13, align 8
  ret i64 %149
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @btrfs_space_info_free_bytes_may_use(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
