; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_cifs_create_mf_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_link.c_cifs_create_mf_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_fid = type { i32 }
%struct.cifs_open_parms = type { i32, i8*, i32, %struct.cifs_fid*, i32, i32, %struct.cifs_sb_info*, %struct.cifs_tcon* }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32, i32 }

@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_CREATE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@CIFS_MF_SYMLINK_FILE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_create_mf_symlink(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cifs_fid, align 4
  %17 = alloca %struct.cifs_open_parms, align 8
  %18 = alloca %struct.cifs_io_parms, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* @CREATE_NOT_DIR, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %22 = call i64 @backup_cred(%struct.cifs_sb_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %26 = load i32, i32* %19, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %19, align 4
  br label %28

28:                                               ; preds = %24, %6
  %29 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %30 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 7
  store %struct.cifs_tcon* %29, %struct.cifs_tcon** %30, align 8
  %31 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %32 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 6
  store %struct.cifs_sb_info* %31, %struct.cifs_sb_info** %32, align 8
  %33 = load i32, i32* @GENERIC_WRITE, align 4
  %34 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %19, align 4
  %36 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @FILE_CREATE, align 4
  %38 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 3
  store %struct.cifs_fid* %16, %struct.cifs_fid** %41, align 8
  %42 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @CIFS_open(i32 %43, %struct.cifs_open_parms* %17, i32* %15, i32* null)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %7, align 4
  br label %72

49:                                               ; preds = %28
  %50 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %16, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %18, i32 0, i32 4
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %18, i32 0, i32 3
  store i32 %55, i32* %56, align 8
  %57 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %58 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %18, i32 0, i32 2
  store %struct.cifs_tcon* %57, %struct.cifs_tcon** %58, align 8
  %59 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %18, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %61 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %18, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @CIFSSMBWrite(i32 %62, %struct.cifs_io_parms* %18, i32* %63, i8* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %68 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %16, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CIFSSMBClose(i32 %66, %struct.cifs_tcon* %67, i32 %69)
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %49, %47
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFS_open(i32, %struct.cifs_open_parms*, i32*, i32*) #1

declare dso_local i32 @CIFSSMBWrite(i32, %struct.cifs_io_parms*, i32*, i8*) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
