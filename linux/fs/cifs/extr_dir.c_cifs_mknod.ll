; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.inode*, %struct.dentry*, %struct.cifs_tcon*, i8*, i32, i32)* }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.tcon_link*, align 8
  %14 = alloca %struct.cifs_tcon*, align 8
  %15 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  store i8* null, i8** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @old_valid_dev(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %74

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.cifs_sb_info* @CIFS_SB(i32 %27)
  store %struct.cifs_sb_info* %28, %struct.cifs_sb_info** %12, align 8
  %29 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %30 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %29)
  store %struct.tcon_link* %30, %struct.tcon_link** %13, align 8
  %31 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %32 = call i64 @IS_ERR(%struct.tcon_link* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %36 = call i32 @PTR_ERR(%struct.tcon_link* %35)
  store i32 %36, i32* %5, align 4
  br label %74

37:                                               ; preds = %24
  %38 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %39 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %38)
  store %struct.cifs_tcon* %39, %struct.cifs_tcon** %14, align 8
  %40 = call i32 (...) @get_xid()
  store i32 %40, i32* %11, align 4
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = call i8* @build_path_from_dentry(%struct.dentry* %41)
  store i8* %42, i8** %15, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %66

48:                                               ; preds = %37
  %49 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %50 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (i32, %struct.inode*, %struct.dentry*, %struct.cifs_tcon*, i8*, i32, i32)*, i32 (i32, %struct.inode*, %struct.dentry*, %struct.cifs_tcon*, i8*, i32, i32)** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 %57(i32 %58, %struct.inode* %59, %struct.dentry* %60, %struct.cifs_tcon* %61, i8* %62, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %48, %45
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @kfree(i8* %67)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @free_xid(i32 %69)
  %71 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %72 = call i32 @cifs_put_tlink(%struct.tcon_link* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %66, %34, %21
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @old_valid_dev(i32) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
