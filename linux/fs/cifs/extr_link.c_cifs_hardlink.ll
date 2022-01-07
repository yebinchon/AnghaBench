; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_cifs_hardlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_cifs_hardlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)* }
%struct.cifsInodeInfo = type { i64 }
%struct.TYPE_8__ = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_hardlink(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.tcon_link*, align 8
  %14 = alloca %struct.cifs_tcon*, align 8
  %15 = alloca %struct.TCP_Server_Info*, align 8
  %16 = alloca %struct.cifsInodeInfo*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cifs_sb_info* @CIFS_SB(i32 %21)
  store %struct.cifs_sb_info* %22, %struct.cifs_sb_info** %12, align 8
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %24 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %23)
  store %struct.tcon_link* %24, %struct.tcon_link** %13, align 8
  %25 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %26 = call i64 @IS_ERR(%struct.tcon_link* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %30 = call i32 @PTR_ERR(%struct.tcon_link* %29)
  store i32 %30, i32* %4, align 4
  br label %141

31:                                               ; preds = %3
  %32 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %33 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %32)
  store %struct.cifs_tcon* %33, %struct.cifs_tcon** %14, align 8
  %34 = call i32 (...) @get_xid()
  store i32 %34, i32* %9, align 4
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call i8* @build_path_from_dentry(%struct.dentry* %35)
  store i8* %36, i8** %10, align 8
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = call i8* @build_path_from_dentry(%struct.dentry* %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i8*, i8** %11, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %31
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %131

47:                                               ; preds = %41
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %49 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %58 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %61 = call i32 @cifs_remap(%struct.cifs_sb_info* %60)
  %62 = call i32 @CIFSUnixCreateHardLink(i32 %53, %struct.cifs_tcon* %54, i8* %55, i8* %56, i32 %59, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %103

63:                                               ; preds = %47
  %64 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %65 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %67, align 8
  store %struct.TCP_Server_Info* %68, %struct.TCP_Server_Info** %15, align 8
  %69 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %70 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)** %72, align 8
  %74 = icmp ne i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ENOSYS, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %131

78:                                               ; preds = %63
  %79 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %80 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %89 = call i32 %83(i32 %84, %struct.cifs_tcon* %85, i8* %86, i8* %87, %struct.cifs_sb_info* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94, %78
  %100 = load i32, i32* @EOPNOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %94
  br label %103

103:                                              ; preds = %102, %52
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = call i32 @d_drop(%struct.dentry* %104)
  %106 = load %struct.dentry*, %struct.dentry** %5, align 8
  %107 = call i64 @d_really_is_positive(%struct.dentry* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %103
  %110 = load %struct.dentry*, %struct.dentry** %5, align 8
  %111 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %110)
  %112 = call %struct.cifsInodeInfo* @CIFS_I(%struct.TYPE_8__* %111)
  store %struct.cifsInodeInfo* %112, %struct.cifsInodeInfo** %16, align 8
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.dentry*, %struct.dentry** %5, align 8
  %117 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = call i32 @spin_lock(i32* %118)
  %120 = load %struct.dentry*, %struct.dentry** %5, align 8
  %121 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %120)
  %122 = call i32 @inc_nlink(%struct.TYPE_8__* %121)
  %123 = load %struct.dentry*, %struct.dentry** %5, align 8
  %124 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = call i32 @spin_unlock(i32* %125)
  br label %127

127:                                              ; preds = %115, %109
  %128 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %16, align 8
  %129 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %103
  br label %131

131:                                              ; preds = %130, %75, %44
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @kfree(i8* %132)
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @kfree(i8* %134)
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @free_xid(i32 %136)
  %138 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %139 = call i32 @cifs_put_tlink(%struct.tcon_link* %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %131, %28
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @CIFSUnixCreateHardLink(i32, %struct.cifs_tcon*, i8*, i8*, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inc_nlink(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
