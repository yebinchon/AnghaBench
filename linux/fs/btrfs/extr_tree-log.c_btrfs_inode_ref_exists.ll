; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_inode_ref_exists.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_inode_ref_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_key = type { i64, i8*, i8* }
%struct.btrfs_path = type { i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_INODE_EXTREF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, i64, i8*, i32)* @btrfs_inode_ref_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_inode_ref_exists(%struct.inode* %0, %struct.inode* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca %struct.btrfs_path*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %16)
  %18 = call i8* @btrfs_ino(%struct.TYPE_3__* %17)
  store i8* %18, i8** %14, align 8
  %19 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %19, %struct.btrfs_path** %13, align 8
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %21 = icmp ne %struct.btrfs_path* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %106

25:                                               ; preds = %5
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %26)
  %28 = call i8* @btrfs_ino(%struct.TYPE_3__* %27)
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  br label %45

39:                                               ; preds = %25
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i8* @btrfs_extref_hash(i8* %40, i8* %41, i32 %42)
  %44 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %51 = call i32 @btrfs_search_slot(i32* null, i32 %49, %struct.btrfs_key* %12, %struct.btrfs_path* %50, i32 0, i32 0)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %102

55:                                               ; preds = %45
  %56 = load i32, i32* %15, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %102

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %66 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %71 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @btrfs_find_name_in_ext_backref(i32 %69, i32 %74, i8* %75, i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %15, align 4
  br label %101

83:                                               ; preds = %59
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %85 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %90 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @btrfs_find_name_in_backref(i32 %88, i32 %93, i8* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %83, %64
  br label %102

102:                                              ; preds = %101, %58, %54
  %103 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %104 = call i32 @btrfs_free_path(%struct.btrfs_path* %103)
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %22
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i8* @btrfs_ino(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i8* @btrfs_extref_hash(i8*, i8*, i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, i32, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_find_name_in_ext_backref(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @btrfs_find_name_in_backref(i32, i32, i8*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
