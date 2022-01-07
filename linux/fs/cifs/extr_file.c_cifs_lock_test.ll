; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_lock_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_lock_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { i32, i32 }
%struct.file_lock = type { i32, i32, i64, i64, i32 }
%struct.cifsLockInfo = type { i32, i32, i64, i64 }
%struct.cifsInodeInfo = type { i32, i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TCP_Server_Info* }

@CIFS_LOCK_OP = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifsFileInfo*, i32, i32, i32, %struct.file_lock*)* @cifs_lock_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_lock_test(%struct.cifsFileInfo* %0, i32 %1, i32 %2, i32 %3, %struct.file_lock* %4) #0 {
  %6 = alloca %struct.cifsFileInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file_lock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cifsLockInfo*, align 8
  %13 = alloca %struct.cifsInodeInfo*, align 8
  %14 = alloca %struct.TCP_Server_Info*, align 8
  %15 = alloca i32, align 4
  store %struct.cifsFileInfo* %0, %struct.cifsFileInfo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.file_lock* %4, %struct.file_lock** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %6, align 8
  %17 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @d_inode(i32 %18)
  %20 = call %struct.cifsInodeInfo* @CIFS_I(i32 %19)
  store %struct.cifsInodeInfo* %20, %struct.cifsInodeInfo** %13, align 8
  %21 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %6, align 8
  %22 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_6__* @tlink_tcon(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %27, align 8
  store %struct.TCP_Server_Info* %28, %struct.TCP_Server_Info** %14, align 8
  %29 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %13, align 8
  %30 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %29, i32 0, i32 0
  %31 = call i32 @down_read(i32* %30)
  %32 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %37 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CIFS_LOCK_OP, align 4
  %40 = call i32 @cifs_find_lock_conflict(%struct.cifsFileInfo* %32, i32 %33, i32 %34, i32 %35, i32 %38, %struct.cifsLockInfo** %12, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %5
  %44 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %12, align 8
  %45 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %48 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %12, align 8
  %50 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %12, align 8
  %53 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = sub nsw i64 %55, 1
  %57 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %58 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %12, align 8
  %60 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %63 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %12, align 8
  %65 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %68 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %66, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %43
  %75 = load i32, i32* @F_RDLCK, align 4
  %76 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %77 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %43
  %79 = load i32, i32* @F_WRLCK, align 4
  %80 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %81 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %94

83:                                               ; preds = %5
  %84 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %13, align 8
  %85 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 1, i32* %11, align 4
  br label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @F_UNLCK, align 4
  %91 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %92 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %88
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %13, align 8
  %96 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %95, i32 0, i32 0
  %97 = call i32 @up_read(i32* %96)
  %98 = load i32, i32* %11, align 4
  ret i32 %98
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local %struct.TYPE_6__* @tlink_tcon(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @cifs_find_lock_conflict(%struct.cifsFileInfo*, i32, i32, i32, i32, %struct.cifsLockInfo**, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
