; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_smb3_query_mf_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_smb3_query_mf_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_fid = type { i32, i32, i32 }
%struct.cifs_open_parms = type { i32, %struct.cifs_fid*, i32, i32, i32, %struct.cifs_sb_info*, %struct.cifs_tcon* }
%struct.cifs_io_parms = type { i32, i32, i32, i64, %struct.cifs_tcon*, i32, i32 }
%struct.smb2_file_all_info = type { i64 }

@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CIFS_MF_SYMLINK_FILE_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb3_query_mf_symlink(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cifs_fid, align 4
  %16 = alloca %struct.cifs_open_parms, align 8
  %17 = alloca %struct.cifs_io_parms, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.smb2_file_all_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.smb2_file_all_info*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32, i32* @CIFS_NO_BUFFER, align 4
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* @SMB2_OPLOCK_LEVEL_NONE, align 4
  store i32 %23, i32* %20, align 4
  store %struct.smb2_file_all_info* null, %struct.smb2_file_all_info** %21, align 8
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %25 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 6
  store %struct.cifs_tcon* %24, %struct.cifs_tcon** %25, align 8
  %26 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %27 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 5
  store %struct.cifs_sb_info* %26, %struct.cifs_sb_info** %27, align 8
  %28 = load i32, i32* @GENERIC_READ, align 4
  %29 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @CREATE_NOT_DIR, align 4
  %31 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %33 = call i64 @backup_cred(%struct.cifs_sb_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %37 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %6
  %41 = load i32, i32* @FILE_OPEN, align 4
  %42 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 1
  store %struct.cifs_fid* %15, %struct.cifs_fid** %43, align 8
  %44 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %47 = call %struct.smb2_file_all_info* @cifs_convert_path_to_utf16(i8* %45, %struct.cifs_sb_info* %46)
  store %struct.smb2_file_all_info* %47, %struct.smb2_file_all_info** %19, align 8
  %48 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %19, align 8
  %49 = icmp eq %struct.smb2_file_all_info* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %122

53:                                               ; preds = %40
  %54 = load i32, i32* @PATH_MAX, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = add i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.smb2_file_all_info* @kzalloc(i32 %58, i32 %59)
  store %struct.smb2_file_all_info* %60, %struct.smb2_file_all_info** %21, align 8
  %61 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %21, align 8
  %62 = icmp eq %struct.smb2_file_all_info* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %19, align 8
  %65 = call i32 @kfree(%struct.smb2_file_all_info* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %122

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %19, align 8
  %71 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %21, align 8
  %72 = call i32 @SMB2_open(i32 %69, %struct.cifs_open_parms* %16, %struct.smb2_file_all_info* %70, i32* %20, %struct.smb2_file_all_info* %71, i32* null, i32* null)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %116

76:                                               ; preds = %68
  %77 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %21, align 8
  %78 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %81 = call i64 @cpu_to_le64(i32 %80)
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %108

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %15, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %17, i32 0, i32 6
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %17, i32 0, i32 5
  store i32 %92, i32* %93, align 8
  %94 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %95 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %17, i32 0, i32 4
  store %struct.cifs_tcon* %94, %struct.cifs_tcon** %95, align 8
  %96 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %17, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %98 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %17, i32 0, i32 2
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %15, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %17, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %15, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %17, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @SMB2_read(i32 %105, %struct.cifs_io_parms* %17, i32* %106, i8** %12, i32* %18)
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %86, %83
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %111 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %15, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %15, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @SMB2_close(i32 %109, %struct.cifs_tcon* %110, i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %108, %75
  %117 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %19, align 8
  %118 = call i32 @kfree(%struct.smb2_file_all_info* %117)
  %119 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %21, align 8
  %120 = call i32 @kfree(%struct.smb2_file_all_info* %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %116, %63, %50
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local %struct.smb2_file_all_info* @cifs_convert_path_to_utf16(i8*, %struct.cifs_sb_info*) #1

declare dso_local %struct.smb2_file_all_info* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.smb2_file_all_info*) #1

declare dso_local i32 @SMB2_open(i32, %struct.cifs_open_parms*, %struct.smb2_file_all_info*, i32*, %struct.smb2_file_all_info*, i32*, i32*) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @SMB2_read(i32, %struct.cifs_io_parms*, i32*, i8**, i32*) #1

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
