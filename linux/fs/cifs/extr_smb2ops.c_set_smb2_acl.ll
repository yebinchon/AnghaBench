; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_set_smb2_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_set_smb2_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ntsd = type { i32 }
%struct.inode = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_fid = type { i32, i32 }
%struct.cifs_open_parms = type { i32, i8*, i32, %struct.cifs_fid*, i32, %struct.cifs_tcon*, i64 }

@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"set smb3 acl for path %s\0A\00", align 1
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i64 0, align 8
@CIFS_ACL_OWNER = common dso_local global i32 0, align 4
@CIFS_ACL_GROUP = common dso_local global i32 0, align 4
@WRITE_OWNER = common dso_local global i32 0, align 4
@WRITE_DAC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ntsd*, i32, %struct.inode*, i8*, i32)* @set_smb2_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_smb2_acl(%struct.cifs_ntsd* %0, i32 %1, %struct.inode* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_ntsd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cifs_tcon*, align 8
  %17 = alloca %struct.cifs_sb_info*, align 8
  %18 = alloca %struct.tcon_link*, align 8
  %19 = alloca %struct.cifs_fid, align 4
  %20 = alloca %struct.cifs_open_parms, align 8
  %21 = alloca i32*, align 8
  store %struct.cifs_ntsd* %0, %struct.cifs_ntsd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* @SMB2_OPLOCK_LEVEL_NONE, align 4
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.cifs_sb_info* @CIFS_SB(i32 %25)
  store %struct.cifs_sb_info* %26, %struct.cifs_sb_info** %17, align 8
  %27 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %28 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %27)
  store %struct.tcon_link* %28, %struct.tcon_link** %18, align 8
  %29 = load i32, i32* @FYI, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @cifs_dbg(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %33 = call i64 @IS_ERR(%struct.tcon_link* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %37 = call i32 @PTR_ERR(%struct.tcon_link* %36)
  store i32 %37, i32* %6, align 4
  br label %117

38:                                               ; preds = %5
  %39 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %40 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %39)
  store %struct.cifs_tcon* %40, %struct.cifs_tcon** %16, align 8
  %41 = call i32 (...) @get_xid()
  store i32 %41, i32* %13, align 4
  %42 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %43 = call i64 @backup_cred(%struct.cifs_sb_info* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* @CREATE_OPEN_BACKUP_INTENT, align 8
  %47 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %20, i32 0, i32 6
  store i64 %46, i64* %47, align 8
  br label %50

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %20, i32 0, i32 6
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @CIFS_ACL_OWNER, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @CIFS_ACL_GROUP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @WRITE_OWNER, align 4
  store i32 %59, i32* %15, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @WRITE_DAC, align 4
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %65 = call i32* @cifs_convert_path_to_utf16(i8* %63, %struct.cifs_sb_info* %64)
  store i32* %65, i32** %21, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @free_xid(i32 %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %6, align 4
  br label %117

74:                                               ; preds = %62
  %75 = load %struct.cifs_tcon*, %struct.cifs_tcon** %16, align 8
  %76 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %20, i32 0, i32 5
  store %struct.cifs_tcon* %75, %struct.cifs_tcon** %76, align 8
  %77 = load i32, i32* %15, align 4
  %78 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %20, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* @FILE_OPEN, align 4
  %80 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %20, i32 0, i32 4
  store i32 %79, i32* %80, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %20, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %20, i32 0, i32 3
  store %struct.cifs_fid* %19, %struct.cifs_fid** %83, align 8
  %84 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %20, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %21, align 8
  %87 = call i32 @SMB2_open(i32 %85, %struct.cifs_open_parms* %20, i32* %86, i32* %12, i32* null, i32* null, i32* null)
  store i32 %87, i32* %14, align 4
  %88 = load i32*, i32** %21, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %95 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %94)
  %96 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %19, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %19, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @SMB2_set_acl(i32 %93, %struct.cifs_tcon* %95, i32 %97, i32 %99, %struct.cifs_ntsd* %100, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.cifs_tcon*, %struct.cifs_tcon** %16, align 8
  %106 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %19, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %19, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @SMB2_close(i32 %104, %struct.cifs_tcon* %105, i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %92, %74
  %112 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %113 = call i32 @cifs_put_tlink(%struct.tcon_link* %112)
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @free_xid(i32 %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %111, %68, %35
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32* @cifs_convert_path_to_utf16(i8*, %struct.cifs_sb_info*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @SMB2_open(i32, %struct.cifs_open_parms*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @SMB2_set_acl(i32, %struct.cifs_tcon*, i32, i32, %struct.cifs_ntsd*, i32, i32) #1

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
