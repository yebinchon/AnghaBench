; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_inode_needs_reval.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_inode_needs_reval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.cifsInodeInfo = type { i64 }
%struct.cifs_sb_info = type { i64, i32 }

@lookupCacheEnabled = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @cifs_inode_needs_reval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_inode_needs_reval(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.cifsInodeInfo*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %6)
  store %struct.cifsInodeInfo* %7, %struct.cifsInodeInfo** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cifs_sb_info* @CIFS_SB(i32 %10)
  store %struct.cifs_sb_info* %11, %struct.cifs_sb_info** %5, align 8
  %12 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %13 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %19 = call i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %67

22:                                               ; preds = %17
  %23 = load i32, i32* @lookupCacheEnabled, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %67

26:                                               ; preds = %22
  %27 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %67

32:                                               ; preds = %26
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %35 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %38 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %41 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @time_in_range(i32 %33, i64 %36, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %67

47:                                               ; preds = %32
  %48 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @S_ISREG(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %67

66:                                               ; preds = %60, %54, %47
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65, %46, %31, %25, %21, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

declare dso_local i32 @time_in_range(i32, i64, i64) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
