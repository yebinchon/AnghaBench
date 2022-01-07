; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_cifs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_cifs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Full path: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"symname is %s\0A\00", align 1
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Create symlink ok, getinodeinfo fail rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_sb_info*, align 8
  %10 = alloca %struct.tcon_link*, align 8
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cifs_sb_info* @CIFS_SB(i32 %18)
  store %struct.cifs_sb_info* %19, %struct.cifs_sb_info** %9, align 8
  store i8* null, i8** %12, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  %20 = call i32 (...) @get_xid()
  store i32 %20, i32* %8, align 4
  %21 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %22 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %21)
  store %struct.tcon_link* %22, %struct.tcon_link** %10, align 8
  %23 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %24 = call i64 @IS_ERR(%struct.tcon_link* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %28 = call i32 @PTR_ERR(%struct.tcon_link* %27)
  store i32 %28, i32* %7, align 4
  br label %111

29:                                               ; preds = %3
  %30 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %31 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %30)
  store %struct.cifs_tcon* %31, %struct.cifs_tcon** %11, align 8
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call i8* @build_path_from_dentry(%struct.dentry* %32)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %111

39:                                               ; preds = %29
  %40 = load i32, i32* @FYI, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @FYI, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %47 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %55 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @create_mf_symlink(i32 %53, %struct.cifs_tcon* %54, %struct.cifs_sb_info* %55, i8* %56, i8* %57)
  store i32 %58, i32* %7, align 4
  br label %76

59:                                               ; preds = %39
  %60 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %61 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %70 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %73 = call i32 @cifs_remap(%struct.cifs_sb_info* %72)
  %74 = call i32 @CIFSUnixCreateSymLink(i32 %65, %struct.cifs_tcon* %66, i8* %67, i8* %68, i32 %71, i32 %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %64, %59
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %76
  %80 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %81 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @cifs_get_inode_info_unix(%struct.inode** %13, i8* %85, i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %98

91:                                               ; preds = %79
  %92 = load i8*, i8** %12, align 8
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @cifs_get_inode_info(%struct.inode** %13, i8* %92, i32* null, i32 %95, i32 %96, i32* null)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %91, %84
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* @FYI, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %109

105:                                              ; preds = %98
  %106 = load %struct.dentry*, %struct.dentry** %5, align 8
  %107 = load %struct.inode*, %struct.inode** %13, align 8
  %108 = call i32 @d_instantiate(%struct.dentry* %106, %struct.inode* %107)
  br label %109

109:                                              ; preds = %105, %101
  br label %110

110:                                              ; preds = %109, %76
  br label %111

111:                                              ; preds = %110, %36, %26
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @kfree(i8* %112)
  %114 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %115 = call i32 @cifs_put_tlink(%struct.tcon_link* %114)
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @free_xid(i32 %116)
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @create_mf_symlink(i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i8*) #1

declare dso_local i32 @CIFSUnixCreateSymLink(i32, %struct.cifs_tcon*, i8*, i8*, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
