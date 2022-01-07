; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_duplicate_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_duplicate_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.duplicate_extents_to_file = type { i8*, i8*, i8*, i32, i32 }
%struct.cifs_tcon = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FILE_SUPPORTS_BLOCK_REFCOUNTING = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Duplicate extents: src off %lld dst off %lld len %lld\0A\00", align 1
@FSCTL_DUPLICATE_EXTENTS_TO_FILE = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Non-zero response length in duplicate extents\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifsFileInfo*, %struct.cifsFileInfo*, i64, i64, i64)* @smb2_duplicate_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_duplicate_extents(i32 %0, %struct.cifsFileInfo* %1, %struct.cifsFileInfo* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifsFileInfo*, align 8
  %10 = alloca %struct.cifsFileInfo*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.duplicate_extents_to_file, align 8
  %17 = alloca %struct.cifs_tcon*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cifsFileInfo* %1, %struct.cifsFileInfo** %9, align 8
  store %struct.cifsFileInfo* %2, %struct.cifsFileInfo** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %19 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cifs_tcon* @tlink_tcon(i32 %20)
  store %struct.cifs_tcon* %21, %struct.cifs_tcon** %17, align 8
  %22 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %23 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load i32, i32* @FILE_SUPPORTS_BLOCK_REFCOUNTING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %91

33:                                               ; preds = %6
  %34 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %35 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.duplicate_extents_to_file, %struct.duplicate_extents_to_file* %16, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %40 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.duplicate_extents_to_file, %struct.duplicate_extents_to_file* %16, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i8* @cpu_to_le64(i64 %44)
  %46 = getelementptr inbounds %struct.duplicate_extents_to_file, %struct.duplicate_extents_to_file* %16, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i8* @cpu_to_le64(i64 %47)
  %49 = getelementptr inbounds %struct.duplicate_extents_to_file, %struct.duplicate_extents_to_file* %16, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i8* @cpu_to_le64(i64 %50)
  %52 = getelementptr inbounds %struct.duplicate_extents_to_file, %struct.duplicate_extents_to_file* %16, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @FYI, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %55, i64 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %60 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @smb2_set_file_size(i32 %58, %struct.cifs_tcon* %59, %struct.cifsFileInfo* %60, i64 %63, i32 0)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %33
  br label %89

68:                                               ; preds = %33
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %71 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %72 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %76 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FSCTL_DUPLICATE_EXTENTS_TO_FILE, align 4
  %80 = bitcast %struct.duplicate_extents_to_file* %16 to i8*
  %81 = load i32, i32* @CIFSMaxBufSize, align 4
  %82 = call i32 @SMB2_ioctl(i32 %69, %struct.cifs_tcon* %70, i32 %74, i32 %78, i32 %79, i32 1, i8* %80, i32 32, i32 %81, i32* null, i32* %15)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ugt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %68
  %86 = load i32, i32* @FYI, align 4
  %87 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %68
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %30
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @smb2_set_file_size(i32, %struct.cifs_tcon*, %struct.cifsFileInfo*, i64, i32) #1

declare dso_local i32 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
