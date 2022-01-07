; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_create_dfs_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_create_dfs_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fattr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"creating fake fattr for DFS referral\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@CIFS_FATTR_DFS_REFERRAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_fattr*, %struct.super_block*)* @cifs_create_dfs_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_create_dfs_fattr(%struct.cifs_fattr* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.cifs_fattr*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %3, align 8
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %6)
  store %struct.cifs_sb_info* %7, %struct.cifs_sb_info** %5, align 8
  %8 = load i32, i32* @FYI, align 4
  %9 = call i32 @cifs_dbg(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %11 = call i32 @memset(%struct.cifs_fattr* %10, i32 0, i32 32)
  %12 = load i32, i32* @S_IFDIR, align 4
  %13 = load i32, i32* @S_IXUGO, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @S_IRWXU, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %18 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %20 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %23 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %28 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %30 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %29, i32 0, i32 3
  %31 = call i32 @ktime_get_real_ts64(i32* %30)
  %32 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %33 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @timespec64_trunc(i32 %34, i32 %37)
  %39 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %40 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %42 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %45 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %47 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %46, i32 0, i32 5
  store i32 %43, i32* %47, align 4
  %48 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %49 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %48, i32 0, i32 1
  store i32 2, i32* %49, align 4
  %50 = load i32, i32* @CIFS_FATTR_DFS_REFERRAL, align 4
  %51 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %52 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @memset(%struct.cifs_fattr*, i32, i32) #1

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

declare dso_local i32 @timespec64_trunc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
