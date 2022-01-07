; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb21_set_oplock_level.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb21_set_oplock_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsInodeInfo = type { i32, i32 }

@SMB2_OPLOCK_LEVEL_NOCHANGE = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_EXCLUSIVE = common dso_local global i32 0, align 4
@SMB2_LEASE_READ_CACHING_HE = common dso_local global i32 0, align 4
@CIFS_CACHE_READ_FLG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@SMB2_LEASE_HANDLE_CACHING_HE = common dso_local global i32 0, align 4
@CIFS_CACHE_HANDLE_FLG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@SMB2_LEASE_WRITE_CACHING_HE = common dso_local global i32 0, align 4
@CIFS_CACHE_WRITE_FLG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"%s Lease granted on inode %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifsInodeInfo*, i32, i32, i32*)* @smb21_set_oplock_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb21_set_oplock_level(%struct.cifsInodeInfo* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cifsInodeInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.cifsInodeInfo* %0, %struct.cifsInodeInfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = bitcast [5 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 5, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SMB2_OPLOCK_LEVEL_NOCHANGE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %76

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SMB2_OPLOCK_LEVEL_EXCLUSIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  call void @smb2_set_oplock_level(%struct.cifsInodeInfo* %24, i32 %25, i32 %26, i32* %27)
  br label %76

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SMB2_LEASE_READ_CACHING_HE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @CIFS_CACHE_READ_FLG, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %38 = call i32 @strcat(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SMB2_LEASE_HANDLE_CACHING_HE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @CIFS_CACHE_HANDLE_FLG, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %49 = call i32 @strcat(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SMB2_LEASE_WRITE_CACHING_HE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @CIFS_CACHE_WRITE_FLG, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %60 = call i32 @strcat(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %66 = call i32 @strncpy(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 5)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %70 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @FYI, align 4
  %72 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %73 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %74 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %73, i32 0, i32 1
  %75 = call i32 @cifs_dbg(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %72, i32* %74)
  br label %76

76:                                               ; preds = %67, %23, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @smb2_set_oplock_level(%struct.cifsInodeInfo*, i32, i32, i32*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @cifs_dbg(i32, i8*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
