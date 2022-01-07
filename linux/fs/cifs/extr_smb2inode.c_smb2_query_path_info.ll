; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_smb2_query_path_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_smb2_query_path_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smb2_file_all_info, i64 }
%struct.smb2_file_all_info = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_fid = type { i32, i32 }
%struct.cifsFileInfo = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@ACL_NO_MODE = common dso_local global i32 0, align 4
@SMB2_OP_QUERY_INFO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@OPEN_REPARSE_POINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_query_path_info(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca %struct.cifs_sb_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.smb2_file_all_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.cifs_fid, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.cifsFileInfo*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %10, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %23 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %20, align 4
  %25 = load i32*, i32** %14, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %15, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.smb2_file_all_info* @kzalloc(i32 %31, i32 %32)
  store %struct.smb2_file_all_info* %33, %struct.smb2_file_all_info** %17, align 8
  %34 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %17, align 8
  %35 = icmp eq %struct.smb2_file_all_info* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %7
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %141

39:                                               ; preds = %7
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %85, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %49 = call i32 @open_shroot(i32 %47, %struct.cifs_tcon* %48, %struct.cifs_fid* %19)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %137

53:                                               ; preds = %46
  %54 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %55 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32*, i32** %13, align 8
  %61 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %62 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @move_smb2_info_to_cifs(i32* %60, %struct.smb2_file_all_info* %63)
  br label %81

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %68 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %19, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %19, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %17, align 8
  %73 = call i32 @SMB2_query_info(i32 %66, %struct.cifs_tcon* %67, i32 %69, i32 %71, %struct.smb2_file_all_info* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %65
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %17, align 8
  %79 = call i32 @move_smb2_info_to_cifs(i32* %77, %struct.smb2_file_all_info* %78)
  br label %80

80:                                               ; preds = %76, %65
  br label %81

81:                                               ; preds = %80, %59
  %82 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %83 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %82, i32 0, i32 1
  %84 = call i32 @close_shroot(%struct.TYPE_2__* %83)
  br label %137

85:                                               ; preds = %43, %39
  %86 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %87 = call i64 @backup_cred(%struct.cifs_sb_info* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %91 = load i32, i32* %18, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @cifs_get_readable_path(%struct.cifs_tcon* %94, i8* %95, %struct.cifsFileInfo** %21)
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %99 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %102 = load i32, i32* @FILE_OPEN, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* @ACL_NO_MODE, align 4
  %105 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %17, align 8
  %106 = load i32, i32* @SMB2_OP_QUERY_INFO, align 4
  %107 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %21, align 8
  %108 = call i32 @smb2_compound_op(i32 %97, %struct.cifs_tcon* %98, %struct.cifs_sb_info* %99, i8* %100, i32 %101, i32 %102, i32 %103, i32 %104, %struct.smb2_file_all_info* %105, i32 %106, %struct.cifsFileInfo* %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @EOPNOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %93
  %114 = load i32*, i32** %15, align 8
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* @OPEN_REPARSE_POINT, align 4
  %116 = load i32, i32* %18, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %120 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %123 = load i32, i32* @FILE_OPEN, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @ACL_NO_MODE, align 4
  %126 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %17, align 8
  %127 = load i32, i32* @SMB2_OP_QUERY_INFO, align 4
  %128 = call i32 @smb2_compound_op(i32 %118, %struct.cifs_tcon* %119, %struct.cifs_sb_info* %120, i8* %121, i32 %122, i32 %123, i32 %124, i32 %125, %struct.smb2_file_all_info* %126, i32 %127, %struct.cifsFileInfo* null)
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %113, %93
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %137

133:                                              ; preds = %129
  %134 = load i32*, i32** %13, align 8
  %135 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %17, align 8
  %136 = call i32 @move_smb2_info_to_cifs(i32* %134, %struct.smb2_file_all_info* %135)
  br label %137

137:                                              ; preds = %133, %132, %81, %52
  %138 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %17, align 8
  %139 = call i32 @kfree(%struct.smb2_file_all_info* %138)
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %137, %36
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local %struct.smb2_file_all_info* @kzalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @open_shroot(i32, %struct.cifs_tcon*, %struct.cifs_fid*) #1

declare dso_local i32 @move_smb2_info_to_cifs(i32*, %struct.smb2_file_all_info*) #1

declare dso_local i32 @SMB2_query_info(i32, %struct.cifs_tcon*, i32, i32, %struct.smb2_file_all_info*) #1

declare dso_local i32 @close_shroot(%struct.TYPE_2__*) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_get_readable_path(%struct.cifs_tcon*, i8*, %struct.cifsFileInfo**) #1

declare dso_local i32 @smb2_compound_op(i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i32, i32, i32, i32, %struct.smb2_file_all_info*, i32, %struct.cifsFileInfo*) #1

declare dso_local i32 @kfree(%struct.smb2_file_all_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
