; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_query_dir_first.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_query_dir_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_fid = type { i32, i32 }
%struct.cifs_search_info = type { i32, i64 }
%struct.cifs_open_parms = type { i32, i32, %struct.cifs_fid*, i64, i32, %struct.cifs_tcon* }

@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"open dir failed rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"query directory failed rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*, %struct.cifs_fid*, i32, %struct.cifs_search_info*)* @smb2_query_dir_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_query_dir_first(i32 %0, %struct.cifs_tcon* %1, i8* %2, %struct.cifs_sb_info* %3, %struct.cifs_fid* %4, i32 %5, %struct.cifs_search_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.cifs_fid*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cifs_search_info*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.cifs_open_parms, align 8
  store i32 %0, i32* %9, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.cifs_sb_info* %3, %struct.cifs_sb_info** %12, align 8
  store %struct.cifs_fid* %4, %struct.cifs_fid** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.cifs_search_info* %6, %struct.cifs_search_info** %15, align 8
  %20 = load i32, i32* @SMB2_OPLOCK_LEVEL_NONE, align 4
  store i32 %20, i32* %18, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %23 = call i32* @cifs_convert_path_to_utf16(i8* %21, %struct.cifs_sb_info* %22)
  store i32* %23, i32** %16, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %94

29:                                               ; preds = %7
  %30 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %31 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 5
  store %struct.cifs_tcon* %30, %struct.cifs_tcon** %31, align 8
  %32 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %33 = load i32, i32* @FILE_READ_DATA, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @FILE_OPEN, align 4
  %37 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %39 = call i64 @backup_cred(%struct.cifs_sb_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i64, i64* @CREATE_OPEN_BACKUP_INTENT, align 8
  %43 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 3
  store i64 %42, i64* %43, align 8
  br label %46

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 3
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %48 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 2
  store %struct.cifs_fid* %47, %struct.cifs_fid** %48, align 8
  %49 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @SMB2_open(i32 %50, %struct.cifs_open_parms* %19, i32* %51, i32* %18, i32* null, i32* null, i32* null)
  store i32 %52, i32* %17, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @kfree(i32* %53)
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @FYI, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @cifs_dbg(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %8, align 4
  br label %94

62:                                               ; preds = %46
  %63 = load %struct.cifs_search_info*, %struct.cifs_search_info** %15, align 8
  %64 = getelementptr inbounds %struct.cifs_search_info, %struct.cifs_search_info* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.cifs_search_info*, %struct.cifs_search_info** %15, align 8
  %66 = getelementptr inbounds %struct.cifs_search_info, %struct.cifs_search_info* %65, i32 0, i32 0
  store i32 2, i32* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %69 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %70 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %73 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cifs_search_info*, %struct.cifs_search_info** %15, align 8
  %76 = call i32 @SMB2_query_directory(i32 %67, %struct.cifs_tcon* %68, i32 %71, i32 %74, i32 0, %struct.cifs_search_info* %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %62
  %80 = load i32, i32* @FYI, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @cifs_dbg(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %85 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %86 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %89 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SMB2_close(i32 %83, %struct.cifs_tcon* %84, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %79, %62
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %92, %57, %26
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32* @cifs_convert_path_to_utf16(i8*, %struct.cifs_sb_info*) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @SMB2_open(i32, %struct.cifs_open_parms*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @SMB2_query_directory(i32, %struct.cifs_tcon*, i32, i32, i32, %struct.cifs_search_info*) #1

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
