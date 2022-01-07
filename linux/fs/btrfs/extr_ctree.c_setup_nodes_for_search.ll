; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_setup_nodes_for_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_setup_nodes_for_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer**, i64 }
%struct.extent_buffer = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer*, i32, i32, i32*)* @setup_nodes_for_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_nodes_for_search(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.extent_buffer* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.btrfs_fs_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %11, align 8
  store %struct.extent_buffer* %3, %struct.extent_buffer** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  store %struct.btrfs_fs_info* %22, %struct.btrfs_fs_info** %16, align 8
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* %14, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %27, %7
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %32 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %31)
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %34 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info* %33)
  %35 = sub nsw i32 %34, 3
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %30
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32*, i32** %15, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %48 = call i32 @btrfs_release_path(%struct.btrfs_path* %47)
  br label %136

49:                                               ; preds = %37
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %51 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %50)
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @reada_for_balance(%struct.btrfs_fs_info* %52, %struct.btrfs_path* %53, i32 %54)
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %58 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @split_node(%struct.btrfs_trans_handle* %56, %struct.btrfs_root* %57, %struct.btrfs_path* %58, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp sgt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %17, align 4
  br label %139

69:                                               ; preds = %49
  %70 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %71 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %70, i32 0, i32 0
  %72 = load %struct.extent_buffer**, %struct.extent_buffer*** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %72, i64 %74
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %75, align 8
  store %struct.extent_buffer* %76, %struct.extent_buffer** %12, align 8
  br label %135

77:                                               ; preds = %30, %27
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %77
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %82 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %81)
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %84 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info* %83)
  %85 = sdiv i32 %84, 2
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %134

87:                                               ; preds = %80
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32*, i32** %15, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %98 = call i32 @btrfs_release_path(%struct.btrfs_path* %97)
  br label %136

99:                                               ; preds = %87
  %100 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %101 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %100)
  %102 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %103 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @reada_for_balance(%struct.btrfs_fs_info* %102, %struct.btrfs_path* %103, i32 %104)
  %106 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %107 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %108 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @balance_level(%struct.btrfs_trans_handle* %106, %struct.btrfs_root* %107, %struct.btrfs_path* %108, i32 %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = load i32, i32* %19, align 4
  store i32 %114, i32* %17, align 4
  br label %139

115:                                              ; preds = %99
  %116 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %117 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %116, i32 0, i32 0
  %118 = load %struct.extent_buffer**, %struct.extent_buffer*** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %118, i64 %120
  %122 = load %struct.extent_buffer*, %struct.extent_buffer** %121, align 8
  store %struct.extent_buffer* %122, %struct.extent_buffer** %12, align 8
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %124 = icmp ne %struct.extent_buffer* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %115
  %126 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %127 = call i32 @btrfs_release_path(%struct.btrfs_path* %126)
  br label %136

128:                                              ; preds = %115
  %129 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %130 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %129)
  %131 = icmp eq i32 %130, 1
  %132 = zext i1 %131 to i32
  %133 = call i32 @BUG_ON(i32 %132)
  br label %134

134:                                              ; preds = %128, %80, %77
  br label %135

135:                                              ; preds = %134, %69
  store i32 0, i32* %8, align 4
  br label %141

136:                                              ; preds = %125, %93, %43
  %137 = load i32, i32* @EAGAIN, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %136, %113, %67
  %140 = load i32, i32* %17, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @reada_for_balance(%struct.btrfs_fs_info*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @split_node(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @balance_level(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
