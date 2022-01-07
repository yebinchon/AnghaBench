; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_set_cifs_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_set_cifs_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ntsd = type { i32 }
%struct.inode = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_fid = type { i32 }
%struct.cifs_open_parms = type { i32, i32, i8*, i32, %struct.cifs_fid*, i32, %struct.cifs_sb_info*, %struct.cifs_tcon* }

@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@CIFS_ACL_OWNER = common dso_local global i32 0, align 4
@CIFS_ACL_GROUP = common dso_local global i32 0, align 4
@WRITE_OWNER = common dso_local global i32 0, align 4
@WRITE_DAC = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to open file to set ACL\0A\00", align 1
@NOISY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SetCIFSACL rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cifs_acl(%struct.cifs_ntsd* %0, i32 %1, %struct.inode* %2, i8* %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca %struct.cifs_tcon*, align 8
  %18 = alloca %struct.cifs_sb_info*, align 8
  %19 = alloca %struct.tcon_link*, align 8
  %20 = alloca %struct.cifs_fid, align 4
  %21 = alloca %struct.cifs_open_parms, align 8
  store %struct.cifs_ntsd* %0, %struct.cifs_ntsd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.cifs_sb_info* @CIFS_SB(i32 %24)
  store %struct.cifs_sb_info* %25, %struct.cifs_sb_info** %18, align 8
  %26 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %18, align 8
  %27 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %26)
  store %struct.tcon_link* %27, %struct.tcon_link** %19, align 8
  %28 = load %struct.tcon_link*, %struct.tcon_link** %19, align 8
  %29 = call i64 @IS_ERR(%struct.tcon_link* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load %struct.tcon_link*, %struct.tcon_link** %19, align 8
  %33 = call i32 @PTR_ERR(%struct.tcon_link* %32)
  store i32 %33, i32* %6, align 4
  br label %102

34:                                               ; preds = %5
  %35 = load %struct.tcon_link*, %struct.tcon_link** %19, align 8
  %36 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %35)
  store %struct.cifs_tcon* %36, %struct.cifs_tcon** %17, align 8
  %37 = call i32 (...) @get_xid()
  store i32 %37, i32* %13, align 4
  %38 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %18, align 8
  %39 = call i64 @backup_cred(%struct.cifs_sb_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %43 = load i32, i32* %16, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @CIFS_ACL_OWNER, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @CIFS_ACL_GROUP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @WRITE_OWNER, align 4
  store i32 %54, i32* %15, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @WRITE_DAC, align 4
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %59 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 7
  store %struct.cifs_tcon* %58, %struct.cifs_tcon** %59, align 8
  %60 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %18, align 8
  %61 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 6
  store %struct.cifs_sb_info* %60, %struct.cifs_sb_info** %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %16, align 4
  %65 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @FILE_OPEN, align 4
  %67 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 5
  store i32 %66, i32* %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 4
  store %struct.cifs_fid* %20, %struct.cifs_fid** %70, align 8
  %71 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 3
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @CIFS_open(i32 %72, %struct.cifs_open_parms* %21, i32* %12, i32* null)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  %77 = load i32, i32* @VFS, align 4
  %78 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %96

79:                                               ; preds = %57
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %82 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %20, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @CIFSSMBSetCIFSACL(i32 %80, %struct.cifs_tcon* %81, i32 %83, %struct.cifs_ntsd* %84, i32 %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* @NOISY, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %93 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %20, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @CIFSSMBClose(i32 %91, %struct.cifs_tcon* %92, i32 %94)
  br label %96

96:                                               ; preds = %79, %76
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @free_xid(i32 %97)
  %99 = load %struct.tcon_link*, %struct.tcon_link** %19, align 8
  %100 = call i32 @cifs_put_tlink(%struct.tcon_link* %99)
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %96, %31
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFS_open(i32, %struct.cifs_open_parms*, i32*, i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @CIFSSMBSetCIFSACL(i32, %struct.cifs_tcon*, i32, %struct.cifs_ntsd*, i32, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
