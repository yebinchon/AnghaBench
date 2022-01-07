; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.adfs_sb_info = type { i64, i64, i64, i32, i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@ADFS_DEFAULT_OWNER_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c",ownmask=%o\00", align 1
@ADFS_DEFAULT_OTHER_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c",othmask=%o\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c",ftsuffix=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @adfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.adfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.adfs_sb_info* @ADFS_SB(i32 %8)
  store %struct.adfs_sb_info* %9, %struct.adfs_sb_info** %5, align 8
  %10 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %14 = call i32 @uid_eq(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %20)
  %22 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %28 = call i32 @gid_eq(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @from_kgid_munged(i32* @init_user_ns, i32 %34)
  %36 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %39 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADFS_DEFAULT_OWNER_MASK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %46 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ADFS_DEFAULT_OTHER_MASK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %58 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %63 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %69 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %66, %61
  ret i32 0
}

declare dso_local %struct.adfs_sb_info* @ADFS_SB(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @from_kgid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
