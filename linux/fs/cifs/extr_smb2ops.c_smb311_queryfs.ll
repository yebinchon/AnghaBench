; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb311_queryfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb311_queryfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.kstatfs = type { i32 }
%struct.cifs_open_parms = type { i32, %struct.cifs_fid*, i64, i32, i32, %struct.cifs_tcon* }
%struct.cifs_fid = type { i32, i32 }

@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@SMB2_MAGIC_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.kstatfs*)* @smb311_queryfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb311_queryfs(i32 %0, %struct.cifs_tcon* %1, %struct.kstatfs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca %struct.kstatfs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cifs_open_parms, align 8
  %12 = alloca %struct.cifs_fid, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store %struct.kstatfs* %2, %struct.kstatfs** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @SMB2_OPLOCK_LEVEL_NONE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %15 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %21 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %22 = call i32 @smb2_queryfs(i32 %19, %struct.cifs_tcon* %20, %struct.kstatfs* %21)
  store i32 %22, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %11, i32 0, i32 5
  store %struct.cifs_tcon* %24, %struct.cifs_tcon** %25, align 8
  %26 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %27 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %11, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @FILE_OPEN, align 4
  %29 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %11, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %11, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %11, i32 0, i32 1
  store %struct.cifs_fid* %12, %struct.cifs_fid** %31, align 8
  %32 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %11, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @SMB2_open(i32 %33, %struct.cifs_open_parms* %11, i32* %9, i32* %10, i32* null, i32* null, i32* null)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %59

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %42 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %12, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %47 = call i32 @SMB311_posix_qfs_info(i32 %40, %struct.cifs_tcon* %41, i32 %43, i32 %45, %struct.kstatfs* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @SMB2_MAGIC_NUMBER, align 4
  %49 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %50 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %53 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %12, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SMB2_close(i32 %51, %struct.cifs_tcon* %52, i32 %54, i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %39, %37, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @smb2_queryfs(i32, %struct.cifs_tcon*, %struct.kstatfs*) #1

declare dso_local i32 @SMB2_open(i32, %struct.cifs_open_parms*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SMB311_posix_qfs_info(i32, %struct.cifs_tcon*, i32, i32, %struct.kstatfs*) #1

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
