; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)* }
%struct.cifsInodeInfo = type { i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cifs_rmdir, inode = 0x%p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca %struct.tcon_link*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.TCP_Server_Info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cifsInodeInfo*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %11, align 8
  %13 = load i32, i32* @FYI, align 4
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @cifs_dbg(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.inode* %14)
  %16 = call i32 (...) @get_xid()
  store i32 %16, i32* %6, align 4
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i8* @build_path_from_dentry(%struct.dentry* %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.cifs_sb_info* @CIFS_SB(i32 %27)
  store %struct.cifs_sb_info* %28, %struct.cifs_sb_info** %7, align 8
  %29 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %30 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %29)
  store %struct.tcon_link* %30, %struct.tcon_link** %8, align 8
  %31 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %32 = call i64 @IS_ERR(%struct.tcon_link* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.tcon_link* %35)
  store i32 %36, i32* %5, align 4
  br label %105

37:                                               ; preds = %24
  %38 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %39 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %38)
  store %struct.cifs_tcon* %39, %struct.cifs_tcon** %9, align 8
  %40 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %41 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %43, align 8
  store %struct.TCP_Server_Info* %44, %struct.TCP_Server_Info** %10, align 8
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %46 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)** %48, align 8
  %50 = icmp ne i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @ENOSYS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  %54 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %55 = call i32 @cifs_put_tlink(%struct.tcon_link* %54)
  br label %105

56:                                               ; preds = %37
  %57 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %58 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %66 = call i32 %61(i32 %62, %struct.cifs_tcon* %63, i8* %64, %struct.cifs_sb_info* %65)
  store i32 %66, i32* %5, align 4
  %67 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %68 = call i32 @cifs_put_tlink(%struct.tcon_link* %67)
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %56
  %72 = load %struct.dentry*, %struct.dentry** %4, align 8
  %73 = call %struct.inode* @d_inode(%struct.dentry* %72)
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load %struct.dentry*, %struct.dentry** %4, align 8
  %77 = call %struct.inode* @d_inode(%struct.dentry* %76)
  %78 = call i32 @i_size_write(%struct.inode* %77, i32 0)
  %79 = load %struct.dentry*, %struct.dentry** %4, align 8
  %80 = call %struct.inode* @d_inode(%struct.dentry* %79)
  %81 = call i32 @clear_nlink(%struct.inode* %80)
  %82 = load %struct.dentry*, %struct.dentry** %4, align 8
  %83 = call %struct.inode* @d_inode(%struct.dentry* %82)
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 2
  %85 = call i32 @spin_unlock(i32* %84)
  br label %86

86:                                               ; preds = %71, %56
  %87 = load %struct.dentry*, %struct.dentry** %4, align 8
  %88 = call %struct.inode* @d_inode(%struct.dentry* %87)
  %89 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %88)
  store %struct.cifsInodeInfo* %89, %struct.cifsInodeInfo** %12, align 8
  %90 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %91 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.inode*, %struct.inode** %3, align 8
  %93 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %92)
  store %struct.cifsInodeInfo* %93, %struct.cifsInodeInfo** %12, align 8
  %94 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %95 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = call i32 @current_time(%struct.inode* %96)
  %98 = load %struct.inode*, %struct.inode** %3, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  %102 = load %struct.dentry*, %struct.dentry** %4, align 8
  %103 = call %struct.inode* @d_inode(%struct.dentry* %102)
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %86, %51, %34, %21
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @kfree(i8* %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @free_xid(i32 %108)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @cifs_dbg(i32, i8*, %struct.inode*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
