; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_revalidate_dentry_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_revalidate_dentry_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Update attributes: %s inode 0x%p count %d dentry: 0x%p d_time %ld jiffies %ld\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_revalidate_dentry_attr(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = icmp eq %struct.inode* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call i32 @cifs_inode_needs_reval(%struct.inode* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %70

25:                                               ; preds = %19
  %26 = call i32 (...) @get_xid()
  store i32 %26, i32* %4, align 4
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i8* @build_path_from_dentry(%struct.dentry* %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %64

34:                                               ; preds = %25
  %35 = load i32, i32* @FYI, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dentry*, %struct.dentry** %3, align 8
  %43 = load %struct.dentry*, %struct.dentry** %3, align 8
  %44 = call i32 @cifs_get_time(%struct.dentry* %43)
  %45 = load i32, i32* @jiffies, align 4
  %46 = call i32 @cifs_dbg(i32 %35, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %36, %struct.inode* %37, i32 %41, %struct.dentry* %42, i32 %44, i32 %45)
  %47 = load %struct.super_block*, %struct.super_block** %7, align 8
  %48 = call i32 @CIFS_SB(%struct.super_block* %47)
  %49 = call %struct.TYPE_4__* @cifs_sb_master_tcon(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.super_block*, %struct.super_block** %7, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @cifs_get_inode_info_unix(%struct.inode** %6, i8* %54, %struct.super_block* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %63

58:                                               ; preds = %34
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.super_block*, %struct.super_block** %7, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @cifs_get_inode_info(%struct.inode** %6, i8* %59, i32* null, %struct.super_block* %60, i32 %61, i32* null)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %31
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @kfree(i8* %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @free_xid(i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %23, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @cifs_inode_needs_reval(%struct.inode*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i8*, %struct.inode*, i32, %struct.dentry*, i32, i32) #1

declare dso_local i32 @cifs_get_time(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @cifs_sb_master_tcon(i32) #1

declare dso_local i32 @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, %struct.super_block*, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, %struct.super_block*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
