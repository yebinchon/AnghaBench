; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_get_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.smb_vol = type { i32 }
%struct.super_block = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.inode = type { i32 }

@CIFS_MOUNT_USE_PREFIX_PATH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Get root dentry for %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.smb_vol*, %struct.super_block*)* @cifs_get_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @cifs_get_root(%struct.smb_vol* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.smb_vol*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.dentry*, align 8
  store %struct.smb_vol* %0, %struct.smb_vol** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %14)
  store %struct.cifs_sb_info* %15, %struct.cifs_sb_info** %7, align 8
  store i8* null, i8** %8, align 8
  %16 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %17 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CIFS_MOUNT_USE_PREFIX_PATH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.dentry* @dget(i32 %25)
  store %struct.dentry* %26, %struct.dentry** %3, align 8
  br label %131

27:                                               ; preds = %2
  %28 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %29 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %30 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %31 = call i32 @cifs_sb_master_tcon(%struct.cifs_sb_info* %30)
  %32 = call i8* @cifs_build_path_to_root(%struct.smb_vol* %28, %struct.cifs_sb_info* %29, i32 %31, i32 0)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.dentry* @ERR_PTR(i32 %37)
  store %struct.dentry* %38, %struct.dentry** %3, align 8
  br label %131

39:                                               ; preds = %27
  %40 = load i32, i32* @FYI, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @cifs_dbg(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %44 = call signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info* %43)
  store i8 %44, i8* %11, align 1
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.dentry* @dget(i32 %47)
  store %struct.dentry* %48, %struct.dentry** %6, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %9, align 8
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %122, %39
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = call %struct.inode* @d_inode(%struct.dentry* %51)
  store %struct.inode* %52, %struct.inode** %12, align 8
  %53 = load %struct.inode*, %struct.inode** %12, align 8
  %54 = icmp ne %struct.inode* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = call i32 @dput(%struct.dentry* %56)
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.dentry* @ERR_PTR(i32 %59)
  store %struct.dentry* %60, %struct.dentry** %6, align 8
  br label %127

61:                                               ; preds = %50
  %62 = load %struct.inode*, %struct.inode** %12, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @S_ISDIR(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = call i32 @dput(%struct.dentry* %68)
  %70 = load i32, i32* @ENOTDIR, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.dentry* @ERR_PTR(i32 %71)
  store %struct.dentry* %72, %struct.dentry** %6, align 8
  br label %127

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %81, %73
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* %11, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  br label %74

84:                                               ; preds = %74
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %127

89:                                               ; preds = %84
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  store i8* %90, i8** %10, align 8
  br label %92

92:                                               ; preds = %106, %89
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i8*, i8** %9, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* %11, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %100, %102
  br label %104

104:                                              ; preds = %97, %92
  %105 = phi i1 [ false, %92 ], [ %103, %97 ]
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %9, align 8
  br label %92

109:                                              ; preds = %104
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.dentry*, %struct.dentry** %6, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call %struct.dentry* @lookup_one_len_unlocked(i8* %110, %struct.dentry* %111, i32 %117)
  store %struct.dentry* %118, %struct.dentry** %13, align 8
  %119 = load %struct.dentry*, %struct.dentry** %6, align 8
  %120 = call i32 @dput(%struct.dentry* %119)
  %121 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %121, %struct.dentry** %6, align 8
  br label %122

122:                                              ; preds = %109
  %123 = load %struct.dentry*, %struct.dentry** %6, align 8
  %124 = call i32 @IS_ERR(%struct.dentry* %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br i1 %126, label %50, label %127

127:                                              ; preds = %122, %88, %67, %55
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @kfree(i8* %128)
  %130 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %130, %struct.dentry** %3, align 8
  br label %131

131:                                              ; preds = %127, %35, %22
  %132 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %132
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i8* @cifs_build_path_to_root(%struct.smb_vol*, %struct.cifs_sb_info*, i32, i32) #1

declare dso_local i32 @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i8*) #1

declare dso_local signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.dentry* @lookup_one_len_unlocked(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
