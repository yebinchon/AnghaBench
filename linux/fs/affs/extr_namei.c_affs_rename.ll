; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @affs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %16 = load %struct.dentry*, %struct.dentry** %9, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dentry*, %struct.dentry** %9, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = call i32 @affs_nofilenametruncate(%struct.dentry* %24)
  %26 = call i32 @affs_check_name(i32 %19, i32 %23, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %98

31:                                               ; preds = %4
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = call i64 @d_really_is_positive(%struct.dentry* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.dentry*, %struct.dentry** %9, align 8
  %37 = call i32 @affs_remove_header(%struct.dentry* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %98

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.super_block*, %struct.super_block** %10, align 8
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.buffer_head* @affs_bread(%struct.super_block* %44, i32 %48)
  store %struct.buffer_head* %49, %struct.buffer_head** %11, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %51 = icmp ne %struct.buffer_head* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %98

55:                                               ; preds = %43
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i32 @affs_lock_dir(%struct.inode* %56)
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %60 = call i32 @affs_remove_hash(%struct.inode* %58, %struct.buffer_head* %59)
  store i32 %60, i32* %12, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i32 @affs_unlock_dir(%struct.inode* %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %84

66:                                               ; preds = %55
  %67 = load %struct.super_block*, %struct.super_block** %10, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = call %struct.TYPE_6__* @AFFS_TAIL(%struct.super_block* %67, %struct.buffer_head* %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dentry*, %struct.dentry** %9, align 8
  %73 = call i32 @affs_copy_name(i32 %71, %struct.dentry* %72)
  %74 = load %struct.super_block*, %struct.super_block** %10, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %76 = call i32 @affs_fix_checksum(%struct.super_block* %74, %struct.buffer_head* %75)
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call i32 @affs_lock_dir(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %81 = call i32 @affs_insert_hash(%struct.inode* %79, %struct.buffer_head* %80)
  store i32 %81, i32* %12, align 4
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i32 @affs_unlock_dir(%struct.inode* %82)
  br label %84

84:                                               ; preds = %66, %65
  %85 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  br label %92

90:                                               ; preds = %84
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi %struct.inode* [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %85, %struct.inode* %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %96 = call i32 @affs_brelse(%struct.buffer_head* %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %92, %52, %40, %29
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @affs_check_name(i32, i32, i32) #1

declare dso_local i32 @affs_nofilenametruncate(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @affs_remove_header(%struct.dentry*) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_5__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @affs_lock_dir(%struct.inode*) #1

declare dso_local i32 @affs_remove_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @affs_unlock_dir(%struct.inode*) #1

declare dso_local i32 @affs_copy_name(i32, %struct.dentry*) #1

declare dso_local %struct.TYPE_6__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_insert_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
