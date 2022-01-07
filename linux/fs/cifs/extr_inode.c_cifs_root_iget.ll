; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_root_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_root_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32*, i32*, i32 }
%struct.super_block = type { i32 }
%struct.cifs_sb_info = type { i32, i32, i32, i64 }
%struct.cifs_tcon = type { i32, i64, i32 }

@CIFS_MOUNT_USE_PREFIX_PATH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"server does not support POSIX extensions\00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ipc connection - fake read inode\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@cifs_ipc_inode_ops = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @cifs_root_iget(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %11)
  store %struct.cifs_sb_info* %12, %struct.cifs_sb_info** %5, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  %13 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %14 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %13)
  store %struct.cifs_tcon* %14, %struct.cifs_tcon** %8, align 8
  store i8* null, i8** %9, align 8
  %15 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %16 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CIFS_MOUNT_USE_PREFIX_PATH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @strlen(i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 2
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 %32, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i64, i64* @ENOMEM, align 8
  %39 = sub nsw i64 0, %38
  %40 = call %struct.inode* @ERR_PTR(i64 %39)
  store %struct.inode* %40, %struct.inode** %2, align 8
  br label %151

41:                                               ; preds = %26
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 47, i8* %43, align 1
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @memcpy(i8* %45, i64 %48, i32 %49)
  br label %61

51:                                               ; preds = %21, %1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i64, i64* @ENOMEM, align 8
  %58 = sub nsw i64 0, %57
  %59 = call %struct.inode* @ERR_PTR(i64 %58)
  store %struct.inode* %59, %struct.inode** %2, align 8
  br label %151

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %41
  %62 = call i32 (...) @get_xid()
  store i32 %62, i32* %4, align 4
  %63 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %64 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.super_block*, %struct.super_block** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @cifs_get_inode_info_unix(%struct.inode** %6, i8* %68, %struct.super_block* %69, i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @EOPNOTSUPP, align 8
  %74 = sub nsw i64 0, %73
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %91

77:                                               ; preds = %67
  %78 = load i32, i32* @VFS, align 4
  %79 = call i32 @cifs_dbg(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %81 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %77, %61
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %85 = call i32 @CIFS_DIR_SEP(%struct.cifs_sb_info* %84)
  %86 = call i32 @convert_delimiter(i8* %83, i32 %85)
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.super_block*, %struct.super_block** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @cifs_get_inode_info(%struct.inode** %6, i8* %87, i32* null, %struct.super_block* %88, i32 %89, i32* null)
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %82, %76
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = icmp ne %struct.inode* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* %7, align 8
  %96 = call %struct.inode* @ERR_PTR(i64 %95)
  store %struct.inode* %96, %struct.inode** %6, align 8
  br label %145

97:                                               ; preds = %91
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %97
  %101 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %102 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %100
  %106 = load i32, i32* @FYI, align 4
  %107 = call i32 @cifs_dbg(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = call i32 @spin_lock(i32* %109)
  %111 = load i32, i32* @S_IFDIR, align 4
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = call i32 @set_nlink(%struct.inode* %116, i32 2)
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 4
  store i32* @cifs_ipc_inode_ops, i32** %119, align 8
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 3
  store i32* @simple_dir_operations, i32** %121, align 8
  %122 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %123 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %128 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.inode*, %struct.inode** %6, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock(i32* %133)
  br label %144

135:                                              ; preds = %100, %97
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = call i32 @iget_failed(%struct.inode* %139)
  %141 = load i64, i64* %7, align 8
  %142 = call %struct.inode* @ERR_PTR(i64 %141)
  store %struct.inode* %142, %struct.inode** %6, align 8
  br label %143

143:                                              ; preds = %138, %135
  br label %144

144:                                              ; preds = %143, %105
  br label %145

145:                                              ; preds = %144, %94
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @kfree(i8* %146)
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @free_xid(i32 %148)
  %150 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %150, %struct.inode** %2, align 8
  br label %151

151:                                              ; preds = %145, %56, %37
  %152 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %152
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i64 @cifs_get_inode_info_unix(%struct.inode**, i8*, %struct.super_block*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @convert_delimiter(i8*, i32) #1

declare dso_local i32 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

declare dso_local i64 @cifs_get_inode_info(%struct.inode**, i8*, i32*, %struct.super_block*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
