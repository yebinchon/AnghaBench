; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_get_inode_info_unix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_get_inode_info_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.cifs_fattr = type { i64, i32 }
%struct.cifs_tcon = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Getting info on %s\0A\00", align 1
@EREMOTE = common dso_local global i32 0, align 4
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"check_mf_symlink: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_get_inode_info_unix(%struct.inode** %0, i8* %1, %struct.super_block* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cifs_fattr, align 8
  %13 = alloca %struct.cifs_tcon*, align 8
  %14 = alloca %struct.tcon_link*, align 8
  %15 = alloca %struct.cifs_sb_info*, align 8
  %16 = alloca i32, align 4
  store %struct.inode** %0, %struct.inode*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.super_block* %2, %struct.super_block** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.super_block*, %struct.super_block** %8, align 8
  %18 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %17)
  store %struct.cifs_sb_info* %18, %struct.cifs_sb_info** %15, align 8
  %19 = load i32, i32* @FYI, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %23 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %22)
  store %struct.tcon_link* %23, %struct.tcon_link** %14, align 8
  %24 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %25 = call i64 @IS_ERR(%struct.tcon_link* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %29 = call i32 @PTR_ERR(%struct.tcon_link* %28)
  store i32 %29, i32* %5, align 4
  br label %154

30:                                               ; preds = %4
  %31 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %32 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %31)
  store %struct.cifs_tcon* %32, %struct.cifs_tcon** %13, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %37 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %40 = call i32 @cifs_remap(%struct.cifs_sb_info* %39)
  %41 = call i32 @CIFSSMBUnixQPathInfo(i32 %33, %struct.cifs_tcon* %34, i8* %35, i32* %11, i32 %38, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %43 = call i32 @cifs_put_tlink(%struct.tcon_link* %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %30
  %47 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %48 = call i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr* %12, i32* %11, %struct.cifs_sb_info* %47)
  br label %60

49:                                               ; preds = %30
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @EREMOTE, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.super_block*, %struct.super_block** %8, align 8
  %56 = call i32 @cifs_create_dfs_fattr(%struct.cifs_fattr* %12, %struct.super_block* %55)
  store i32 0, i32* %10, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %154

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %62 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %70 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @check_mf_symlink(i32 %68, %struct.cifs_tcon* %69, %struct.cifs_sb_info* %70, %struct.cifs_fattr* %12, i8* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* @FYI, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %67
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.inode**, %struct.inode*** %6, align 8
  %82 = load %struct.inode*, %struct.inode** %81, align 8
  %83 = icmp eq %struct.inode* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load %struct.super_block*, %struct.super_block** %8, align 8
  %86 = call i32 @cifs_fill_uniqueid(%struct.super_block* %85, %struct.cifs_fattr* %12)
  %87 = load %struct.super_block*, %struct.super_block** %8, align 8
  %88 = call %struct.inode* @cifs_iget(%struct.super_block* %87, %struct.cifs_fattr* %12)
  %89 = load %struct.inode**, %struct.inode*** %6, align 8
  store %struct.inode* %88, %struct.inode** %89, align 8
  %90 = load %struct.inode**, %struct.inode*** %6, align 8
  %91 = load %struct.inode*, %struct.inode** %90, align 8
  %92 = icmp ne %struct.inode* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93, %84
  br label %151

97:                                               ; preds = %80
  %98 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %99 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.inode**, %struct.inode*** %6, align 8
  %106 = load %struct.inode*, %struct.inode** %105, align 8
  %107 = call %struct.TYPE_2__* @CIFS_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %12, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %109, %111
  br label %113

113:                                              ; preds = %104, %97
  %114 = phi i1 [ false, %97 ], [ %112, %104 ]
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.inode**, %struct.inode*** %6, align 8
  %120 = load %struct.inode*, %struct.inode** %119, align 8
  %121 = call %struct.TYPE_2__* @CIFS_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @ESTALE, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %10, align 4
  br label %152

125:                                              ; preds = %113
  %126 = load %struct.inode**, %struct.inode*** %6, align 8
  %127 = load %struct.inode*, %struct.inode** %126, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @S_IFMT, align 4
  %131 = and i32 %129, %130
  %132 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %12, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @S_IFMT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %131, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %125
  %141 = load %struct.inode**, %struct.inode*** %6, align 8
  %142 = load %struct.inode*, %struct.inode** %141, align 8
  %143 = call %struct.TYPE_2__* @CIFS_I(%struct.inode* %142)
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* @ESTALE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %10, align 4
  br label %152

147:                                              ; preds = %125
  %148 = load %struct.inode**, %struct.inode*** %6, align 8
  %149 = load %struct.inode*, %struct.inode** %148, align 8
  %150 = call i32 @cifs_fattr_to_inode(%struct.inode* %149, %struct.cifs_fattr* %12)
  br label %151

151:                                              ; preds = %147, %96
  br label %152

152:                                              ; preds = %151, %140, %118
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %57, %27
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBUnixQPathInfo(i32, %struct.cifs_tcon*, i8*, i32*, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr*, i32*, %struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_create_dfs_fattr(%struct.cifs_fattr*, %struct.super_block*) #1

declare dso_local i32 @check_mf_symlink(i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, %struct.cifs_fattr*, i8*) #1

declare dso_local i32 @cifs_fill_uniqueid(%struct.super_block*, %struct.cifs_fattr*) #1

declare dso_local %struct.inode* @cifs_iget(%struct.super_block*, %struct.cifs_fattr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @cifs_fattr_to_inode(%struct.inode*, %struct.cifs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
