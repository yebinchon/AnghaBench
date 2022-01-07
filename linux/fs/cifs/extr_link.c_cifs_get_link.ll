; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_cifs_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_cifs_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i8**, i32)* }
%struct.cifsInodeInfo = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Full path: %s inode = 0x%p\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@ATTR_REPARSE = common dso_local global i32 0, align 4
@kfree_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cifs_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.tcon_link*, align 8
  %14 = alloca %struct.cifs_tcon*, align 8
  %15 = alloca %struct.TCP_Server_Info*, align 8
  %16 = alloca %struct.cifsInodeInfo*, align 8
  %17 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cifs_sb_info* @CIFS_SB(i32 %22)
  store %struct.cifs_sb_info* %23, %struct.cifs_sb_info** %12, align 8
  store %struct.tcon_link* null, %struct.tcon_link** %13, align 8
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ECHILD, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i8* @ERR_PTR(i32 %28)
  store i8* %29, i8** %4, align 8
  br label %133

30:                                               ; preds = %3
  %31 = call i32 (...) @get_xid()
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %33 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %32)
  store %struct.tcon_link* %33, %struct.tcon_link** %13, align 8
  %34 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %35 = call i64 @IS_ERR(%struct.tcon_link* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @free_xid(i32 %38)
  %40 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %41 = call i8* @ERR_CAST(%struct.tcon_link* %40)
  store i8* %41, i8** %4, align 8
  br label %133

42:                                               ; preds = %30
  %43 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %44 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %43)
  store %struct.cifs_tcon* %44, %struct.cifs_tcon** %14, align 8
  %45 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %46 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %48, align 8
  store %struct.TCP_Server_Info* %49, %struct.TCP_Server_Info** %15, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = call i8* @build_path_from_dentry(%struct.dentry* %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @free_xid(i32 %55)
  %57 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %58 = call i32 @cifs_put_tlink(%struct.tcon_link* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i8* @ERR_PTR(i32 %60)
  store i8* %61, i8** %4, align 8
  br label %133

62:                                               ; preds = %42
  %63 = load i32, i32* @FYI, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call i32 @cifs_dbg(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %64, %struct.inode* %65)
  %67 = load i32, i32* @EACCES, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  %69 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %70 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %78 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @query_mf_symlink(i32 %76, %struct.cifs_tcon* %77, %struct.cifs_sb_info* %78, i8* %79, i8** %11)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %75, %62
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %81
  %85 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %86 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i8**, i32)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i8**, i32)** %88, align 8
  %90 = icmp ne i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i8**, i32)* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %84
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %92)
  store %struct.cifsInodeInfo* %93, %struct.cifsInodeInfo** %16, align 8
  store i32 0, i32* %17, align 4
  %94 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %16, align 8
  %95 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ATTR_REPARSE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 1, i32* %17, align 4
  br label %101

101:                                              ; preds = %100, %91
  %102 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %103 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i8**, i32)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i8**, i32)** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %109 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %17, align 4
  %112 = call i32 %106(i32 %107, %struct.cifs_tcon* %108, %struct.cifs_sb_info* %109, i8* %110, i8** %11, i32 %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %101, %84, %81
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @kfree(i8* %114)
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @free_xid(i32 %116)
  %118 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %119 = call i32 @cifs_put_tlink(%struct.tcon_link* %118)
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @kfree(i8* %123)
  %125 = load i32, i32* %8, align 4
  %126 = call i8* @ERR_PTR(i32 %125)
  store i8* %126, i8** %4, align 8
  br label %133

127:                                              ; preds = %113
  %128 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %129 = load i32, i32* @kfree_link, align 4
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @set_delayed_call(%struct.delayed_call* %128, i32 %129, i8* %130)
  %132 = load i8*, i8** %11, align 8
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %127, %122, %54, %37, %26
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i8* @ERR_CAST(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i8*, %struct.inode*) #1

declare dso_local i32 @query_mf_symlink(i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i8**) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
