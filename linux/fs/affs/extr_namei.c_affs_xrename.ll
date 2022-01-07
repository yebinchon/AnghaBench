; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_xrename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_xrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @affs_xrename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_xrename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %17 = load %struct.super_block*, %struct.super_block** %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.buffer_head* @affs_bread(%struct.super_block* %17, i32 %21)
  store %struct.buffer_head* %22, %struct.buffer_head** %11, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %109

28:                                               ; preds = %4
  %29 = load %struct.super_block*, %struct.super_block** %10, align 8
  %30 = load %struct.dentry*, %struct.dentry** %9, align 8
  %31 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.buffer_head* @affs_bread(%struct.super_block* %29, i32 %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %12, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %109

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @affs_lock_dir(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %45 = call i32 @affs_remove_hash(%struct.inode* %43, %struct.buffer_head* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @affs_unlock_dir(%struct.inode* %46)
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %97

51:                                               ; preds = %40
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @affs_lock_dir(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %56 = call i32 @affs_remove_hash(%struct.inode* %54, %struct.buffer_head* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @affs_unlock_dir(%struct.inode* %57)
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %97

62:                                               ; preds = %51
  %63 = load %struct.super_block*, %struct.super_block** %10, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %65 = call %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block* %63, %struct.buffer_head* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dentry*, %struct.dentry** %9, align 8
  %69 = call i32 @affs_copy_name(i32 %67, %struct.dentry* %68)
  %70 = load %struct.super_block*, %struct.super_block** %10, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %72 = call i32 @affs_fix_checksum(%struct.super_block* %70, %struct.buffer_head* %71)
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = call i32 @affs_lock_dir(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %77 = call i32 @affs_insert_hash(%struct.inode* %75, %struct.buffer_head* %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = call i32 @affs_unlock_dir(%struct.inode* %78)
  %80 = load %struct.super_block*, %struct.super_block** %10, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %82 = call %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block* %80, %struct.buffer_head* %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dentry*, %struct.dentry** %7, align 8
  %86 = call i32 @affs_copy_name(i32 %84, %struct.dentry* %85)
  %87 = load %struct.super_block*, %struct.super_block** %10, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %89 = call i32 @affs_fix_checksum(%struct.super_block* %87, %struct.buffer_head* %88)
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = call i32 @affs_lock_dir(%struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %94 = call i32 @affs_insert_hash(%struct.inode* %92, %struct.buffer_head* %93)
  store i32 %94, i32* %13, align 4
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = call i32 @affs_unlock_dir(%struct.inode* %95)
  br label %97

97:                                               ; preds = %62, %61, %50
  %98 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %98, %struct.inode* %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %101, %struct.inode* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %105 = call i32 @affs_brelse(%struct.buffer_head* %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %107 = call i32 @affs_brelse(%struct.buffer_head* %106)
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %97, %37, %25
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_3__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @affs_lock_dir(%struct.inode*) #1

declare dso_local i32 @affs_remove_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @affs_unlock_dir(%struct.inode*) #1

declare dso_local i32 @affs_copy_name(i32, %struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

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
