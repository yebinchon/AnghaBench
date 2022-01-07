; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_cleanup_fs_roots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_cleanup_fs_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_cleanup_fs_roots(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [8 x %struct.btrfs_root*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %1, %107
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 0
  %12 = call i32 @srcu_read_lock(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 0
  %16 = bitcast %struct.btrfs_root** %15 to i8**
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(%struct.btrfs_root** %18)
  %20 = call i32 @radix_tree_gang_lookup(i32* %14, i8** %16, i64 %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @srcu_read_unlock(i32* %25, i32 %26)
  br label %110

28:                                               ; preds = %9
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %31
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %32, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %63, %28
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %44
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %45, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 1
  %48 = call i64 @btrfs_root_refs(i32* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %52
  store %struct.btrfs_root* null, %struct.btrfs_root** %53, align 8
  br label %63

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %56
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %57, align 8
  %59 = call %struct.btrfs_root* @btrfs_grab_fs_root(%struct.btrfs_root* %58)
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %61
  store %struct.btrfs_root* %59, %struct.btrfs_root** %62, align 8
  br label %63

63:                                               ; preds = %54, %50
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %38

66:                                               ; preds = %38
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %68 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %67, i32 0, i32 0
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @srcu_read_unlock(i32* %68, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %104, %66
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %77
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %78, align 8
  %80 = icmp ne %struct.btrfs_root* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %104

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %84
  %86 = load %struct.btrfs_root*, %struct.btrfs_root** %85, align 8
  %87 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %91
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %92, align 8
  %94 = call i32 @btrfs_orphan_cleanup(%struct.btrfs_root* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  br label %107

98:                                               ; preds = %82
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %100
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %101, align 8
  %103 = call i32 @btrfs_put_fs_root(%struct.btrfs_root* %102)
  br label %104

104:                                              ; preds = %98, %81
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %71

107:                                              ; preds = %97, %71
  %108 = load i64, i64* %3, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %3, align 8
  br label %9

110:                                              ; preds = %23
  br label %111

111:                                              ; preds = %128, %110
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %117
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %118, align 8
  %120 = icmp ne %struct.btrfs_root* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x %struct.btrfs_root*], [8 x %struct.btrfs_root*]* %4, i64 0, i64 %123
  %125 = load %struct.btrfs_root*, %struct.btrfs_root** %124, align 8
  %126 = call i32 @btrfs_put_fs_root(%struct.btrfs_root* %125)
  br label %127

127:                                              ; preds = %121, %115
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %111

131:                                              ; preds = %111
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @radix_tree_gang_lookup(i32*, i8**, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.btrfs_root**) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local %struct.btrfs_root* @btrfs_grab_fs_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_orphan_cleanup(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_put_fs_root(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
