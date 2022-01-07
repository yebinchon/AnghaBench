; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_remap_file_range_prep.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_remap_file_range_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.inode = type { i64, i64, i32 }
%struct.btrfs_root = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.btrfs_root* }

@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, %struct.file*, i64, i64*, i32)* @btrfs_remap_file_range_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_remap_file_range_prep(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.btrfs_root*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.file*, %struct.file** %8, align 8
  %22 = call %struct.inode* @file_inode(%struct.file* %21)
  store %struct.inode* %22, %struct.inode** %14, align 8
  %23 = load %struct.file*, %struct.file** %10, align 8
  %24 = call %struct.inode* @file_inode(%struct.file* %23)
  store %struct.inode* %24, %struct.inode** %15, align 8
  %25 = load %struct.inode*, %struct.inode** %15, align 8
  %26 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %27, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %16, align 8
  %35 = load %struct.inode*, %struct.inode** %15, align 8
  %36 = load %struct.inode*, %struct.inode** %14, align 8
  %37 = icmp eq %struct.inode* %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %76, label %43

43:                                               ; preds = %6
  %44 = load %struct.inode*, %struct.inode** %15, align 8
  %45 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %46, align 8
  store %struct.btrfs_root* %47, %struct.btrfs_root** %20, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  %49 = call i64 @btrfs_root_readonly(%struct.btrfs_root* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EROFS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %164

54:                                               ; preds = %43
  %55 = load %struct.file*, %struct.file** %8, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.file*, %struct.file** %10, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %54
  %65 = load %struct.inode*, %struct.inode** %14, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %15, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64, %54
  %73 = load i32, i32* @EXDEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %164

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %6
  %77 = load %struct.inode*, %struct.inode** %14, align 8
  %78 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.inode*, %struct.inode** %15, align 8
  %84 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %82, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %164

93:                                               ; preds = %76
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load %struct.inode*, %struct.inode** %14, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %16, align 8
  %107 = call i64 @ALIGN(i64 %105, i64 %106)
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %16, align 8
  %110 = call i64 @ALIGN_DOWN(i64 %108, i64 %109)
  %111 = sub nsw i64 %107, %110
  store i64 %111, i64* %18, align 8
  br label %117

112:                                              ; preds = %97, %93
  %113 = load i64*, i64** %12, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %16, align 8
  %116 = call i64 @ALIGN(i64 %114, i64 %115)
  store i64 %116, i64* %18, align 8
  br label %117

117:                                              ; preds = %112, %102
  %118 = load %struct.inode*, %struct.inode** %14, align 8
  %119 = call i32 @inode_dio_wait(%struct.inode* %118)
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.inode*, %struct.inode** %15, align 8
  %124 = call i32 @inode_dio_wait(%struct.inode* %123)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.inode*, %struct.inode** %14, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @filemap_flush(i32 %128)
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %19, align 4
  store i32 %133, i32* %7, align 4
  br label %164

134:                                              ; preds = %125
  %135 = load %struct.inode*, %struct.inode** %14, align 8
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %16, align 8
  %138 = call i64 @ALIGN_DOWN(i64 %136, i64 %137)
  %139 = load i64, i64* %18, align 8
  %140 = call i32 @btrfs_wait_ordered_range(%struct.inode* %135, i64 %138, i64 %139)
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* %19, align 4
  store i32 %144, i32* %7, align 4
  br label %164

145:                                              ; preds = %134
  %146 = load %struct.inode*, %struct.inode** %15, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %16, align 8
  %149 = call i64 @ALIGN_DOWN(i64 %147, i64 %148)
  %150 = load i64, i64* %18, align 8
  %151 = call i32 @btrfs_wait_ordered_range(%struct.inode* %146, i64 %149, i64 %150)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %19, align 4
  store i32 %155, i32* %7, align 4
  br label %164

156:                                              ; preds = %145
  %157 = load %struct.file*, %struct.file** %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load %struct.file*, %struct.file** %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = load i64*, i64** %12, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @generic_remap_file_range_prep(%struct.file* %157, i64 %158, %struct.file* %159, i64 %160, i64* %161, i32 %162)
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %156, %154, %143, %132, %90, %72, %51
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_root_readonly(%struct.btrfs_root*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @ALIGN_DOWN(i64, i64) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @filemap_flush(i32) #1

declare dso_local i32 @btrfs_wait_ordered_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @generic_remap_file_range_prep(%struct.file*, i64, %struct.file*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
