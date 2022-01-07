; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.cramfs_inode = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRAMFS_MAXPATHLEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@read_mutex = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @cramfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cramfs_inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %7, align 8
  %21 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %22 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %132

29:                                               ; preds = %2
  %30 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %31 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 3
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %132

39:                                               ; preds = %29
  %40 = load i64, i64* @CRAMFS_MAXPATHLEN, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kmalloc(i64 %40, i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %132

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %124, %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %129

55:                                               ; preds = %49
  %56 = call i32 @mutex_lock(i32* @read_mutex)
  %57 = load %struct.super_block*, %struct.super_block** %7, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i64 @OFFSET(%struct.inode* %58)
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load i64, i64* @CRAMFS_MAXPATHLEN, align 8
  %64 = add i64 8, %63
  %65 = call %struct.cramfs_inode* @cramfs_read(%struct.super_block* %57, i64 %62, i64 %64)
  store %struct.cramfs_inode* %65, %struct.cramfs_inode** %10, align 8
  %66 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %67 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %66, i64 1
  %68 = bitcast %struct.cramfs_inode* %67 to i8*
  store i8* %68, i8** %12, align 8
  %69 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %70 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 2
  store i32 %72, i32* %15, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  %77 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = call i64 @OFFSET(%struct.inode* %78)
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = call i32 @cramino(%struct.cramfs_inode* %77, i64 %82)
  store i32 %83, i32* %13, align 4
  %84 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %85 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  %87 = call i32 @mutex_unlock(i32* @read_mutex)
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = add i64 %89, 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %90, %92
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %111, %55
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @kfree(i8* %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %132

102:                                              ; preds = %94
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %15, align 4
  br label %94

114:                                              ; preds = %110
  %115 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = ashr i32 %119, 12
  %121 = call i32 @dir_emit(%struct.dir_context* %115, i8* %116, i32 %117, i32 %118, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %114
  br label %129

124:                                              ; preds = %114
  %125 = load i64, i64* %11, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  %127 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %128 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  br label %49

129:                                              ; preds = %123, %49
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @kfree(i8* %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %97, %45, %36, %28
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cramfs_inode* @cramfs_read(%struct.super_block*, i64, i64) #1

declare dso_local i64 @OFFSET(%struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cramino(%struct.cramfs_inode*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
