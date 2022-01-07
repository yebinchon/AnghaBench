; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_validate_write_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_validate_write_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_super_block = type { i32 }

@EUCLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid csum type, has %u want %u\00", align 1
@BTRFS_CSUM_TYPE_CRC32 = common dso_local global i32 0, align 4
@BTRFS_FEATURE_INCOMPAT_SUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"invalid incompat flags, has 0x%llx valid mask 0x%llx\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"super block corruption detected before writing it to disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_super_block*)* @btrfs_validate_write_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_validate_write_super(%struct.btrfs_fs_info* %0, %struct.btrfs_super_block* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.btrfs_super_block* %1, %struct.btrfs_super_block** %4, align 8
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %7 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %8 = call i32 @validate_super(%struct.btrfs_fs_info* %6, %struct.btrfs_super_block* %7, i32 -1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %14 = call i32 @btrfs_super_csum_type(%struct.btrfs_super_block* %13)
  %15 = call i32 @btrfs_supported_super_csum(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EUCLEAN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %21 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %22 = call i32 @btrfs_super_csum_type(%struct.btrfs_super_block* %21)
  %23 = load i32, i32* @BTRFS_CSUM_TYPE_CRC32, align 4
  %24 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %42

25:                                               ; preds = %12
  %26 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %27 = call i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block* %26)
  %28 = load i32, i32* @BTRFS_FEATURE_INCOMPAT_SUPP, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* @EUCLEAN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %36 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %37 = call i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block* %36)
  %38 = load i32, i32* @BTRFS_FEATURE_INCOMPAT_SUPP, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %37, i64 %39)
  br label %42

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %32, %17, %11
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %47 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %46, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @validate_super(%struct.btrfs_fs_info*, %struct.btrfs_super_block*, i32) #1

declare dso_local i32 @btrfs_supported_super_csum(i32) #1

declare dso_local i32 @btrfs_super_csum_type(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, ...) #1

declare dso_local i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
