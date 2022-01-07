; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_inode.c_erofs_fill_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_inode.c_erofs_fill_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i32*, i32 }
%struct.erofs_inode = type { i64, i32, i64, i64 }

@EROFS_INODE_FLAT_INLINE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@erofs_symlink_iops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"inline data cross block boundary @ nid %llu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@erofs_fast_symlink_iops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32)* @erofs_fill_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erofs_fill_symlink(%struct.inode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.erofs_inode*, align 8
  %9 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %10)
  store %struct.erofs_inode* %11, %struct.erofs_inode** %8, align 8
  %12 = load %struct.erofs_inode*, %struct.erofs_inode** %8, align 8
  %13 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EROFS_INODE_FLAT_INLINE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %3
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  store i32* @erofs_symlink_iops, i32** %25, align 8
  store i32 0, i32* %4, align 4
  br label %91

26:                                               ; preds = %17
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %29, 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i32 %30, i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %91

38:                                               ; preds = %26
  %39 = load %struct.erofs_inode*, %struct.erofs_inode** %8, align 8
  %40 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.erofs_inode*, %struct.erofs_inode** %8, align 8
  %43 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %50, %53
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %38
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.erofs_inode*, %struct.erofs_inode** %8, align 8
  %64 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @erofs_err(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = call i32 @DBG_BUGON(i32 1)
  %68 = load i32, i32* @EFSCORRUPTED, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %91

70:                                               ; preds = %38
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr i8, i8* %72, i64 %74
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i8* %71, i8* %75, i32 %78)
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 2
  store i32* @erofs_fast_symlink_iops, i32** %90, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %70, %57, %35, %23
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @erofs_err(i32, i8*, i32) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
