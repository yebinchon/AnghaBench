; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_oplock_level.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_oplock_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsInodeInfo = type { i64, i32 }

@SMB2_OPLOCK_LEVEL_NOCHANGE = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_BATCH = common dso_local global i32 0, align 4
@CIFS_CACHE_RHW_FLG = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Batch Oplock granted on inode %p\0A\00", align 1
@SMB2_OPLOCK_LEVEL_EXCLUSIVE = common dso_local global i32 0, align 4
@CIFS_CACHE_RW_FLG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Exclusive Oplock granted on inode %p\0A\00", align 1
@SMB2_OPLOCK_LEVEL_II = common dso_local global i32 0, align 4
@CIFS_CACHE_READ_FLG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Level II Oplock granted on inode %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifsInodeInfo*, i32, i32, i32*)* @smb2_set_oplock_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb2_set_oplock_level(%struct.cifsInodeInfo* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cifsInodeInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.cifsInodeInfo* %0, %struct.cifsInodeInfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SMB2_OPLOCK_LEVEL_NOCHANGE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %56

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SMB2_OPLOCK_LEVEL_BATCH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i64, i64* @CIFS_CACHE_RHW_FLG, align 8
  %21 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %22 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @FYI, align 4
  %24 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %25 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %24, i32 0, i32 1
  %26 = call i32 @cifs_dbg(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %25)
  br label %56

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SMB2_OPLOCK_LEVEL_EXCLUSIVE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i64, i64* @CIFS_CACHE_RW_FLG, align 8
  %33 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %34 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @FYI, align 4
  %36 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %37 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %36, i32 0, i32 1
  %38 = call i32 @cifs_dbg(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  br label %55

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SMB2_OPLOCK_LEVEL_II, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i64, i64* @CIFS_CACHE_READ_FLG, align 8
  %45 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %46 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @FYI, align 4
  %48 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %49 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %48, i32 0, i32 1
  %50 = call i32 @cifs_dbg(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %49)
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %53 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %43
  br label %55

55:                                               ; preds = %54, %31
  br label %56

56:                                               ; preds = %14, %55, %19
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
