; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_extref_get_fields.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_extref_get_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_inode_extref = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*, i64, i32*, i8**, i32*, i32*)* @extref_get_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extref_get_fields(%struct.extent_buffer* %0, i64 %1, i32* %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.btrfs_inode_extref*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = inttoptr i64 %15 to %struct.btrfs_inode_extref*
  store %struct.btrfs_inode_extref* %16, %struct.btrfs_inode_extref** %14, align 8
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %18 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %14, align 8
  %19 = call i32 @btrfs_inode_extref_name_len(%struct.extent_buffer* %17, %struct.btrfs_inode_extref* %18)
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  %25 = load i8**, i8*** %11, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i8**, i8*** %11, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %58

32:                                               ; preds = %6
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %34 = load i8**, i8*** %11, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %14, align 8
  %37 = getelementptr inbounds %struct.btrfs_inode_extref, %struct.btrfs_inode_extref* %36, i32 0, i32 0
  %38 = ptrtoint i32* %37 to i64
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @read_extent_buffer(%struct.extent_buffer* %33, i8* %35, i64 %38, i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %46 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %14, align 8
  %47 = call i32 @btrfs_inode_extref_index(%struct.extent_buffer* %45, %struct.btrfs_inode_extref* %46)
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %32
  %50 = load i32*, i32** %13, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %54 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %14, align 8
  %55 = call i32 @btrfs_inode_extref_parent(%struct.extent_buffer* %53, %struct.btrfs_inode_extref* %54)
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %49
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %29
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @btrfs_inode_extref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i8*, i64, i32) #1

declare dso_local i32 @btrfs_inode_extref_index(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i32 @btrfs_inode_extref_parent(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
