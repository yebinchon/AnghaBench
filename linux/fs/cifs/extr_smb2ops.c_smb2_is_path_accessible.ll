; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_is_path_accessible.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_is_path_accessible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_open_parms = type { i32, %struct.cifs_fid*, i64, i32, i32, %struct.cifs_tcon* }
%struct.cifs_fid = type { i32, i32 }

@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*)* @smb2_is_path_accessible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_is_path_accessible(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cifs_open_parms, align 8
  %14 = alloca %struct.cifs_fid, align 4
  store i32 %0, i32* %6, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @SMB2_OPLOCK_LEVEL_NONE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %22 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %74

27:                                               ; preds = %20, %4
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %30 = call i32* @cifs_convert_path_to_utf16(i8* %28, %struct.cifs_sb_info* %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %74

36:                                               ; preds = %27
  %37 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %38 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 5
  store %struct.cifs_tcon* %37, %struct.cifs_tcon** %38, align 8
  %39 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %40 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @FILE_OPEN, align 4
  %42 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %44 = call i64 @backup_cred(%struct.cifs_sb_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i64, i64* @CREATE_OPEN_BACKUP_INTENT, align 8
  %48 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 2
  store i64 %47, i64* %48, align 8
  br label %51

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 2
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 1
  store %struct.cifs_fid* %14, %struct.cifs_fid** %52, align 8
  %53 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @SMB2_open(i32 %54, %struct.cifs_open_parms* %13, i32* %55, i32* %12, i32* null, i32* null, i32* null)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %74

63:                                               ; preds = %51
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %66 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %14, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %14, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SMB2_close(i32 %64, %struct.cifs_tcon* %65, i32 %67, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %63, %59, %33, %26
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32* @cifs_convert_path_to_utf16(i8*, %struct.cifs_sb_info*) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @SMB2_open(i32, %struct.cifs_open_parms*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
