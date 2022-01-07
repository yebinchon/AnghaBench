; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_cmp_log_and_dev_bytenr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_cmp_log_and_dev_bytenr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_state = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfsic_dev_state = type { i64, i32 }
%struct.btrfsic_block_data_ctx = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [62 x i8] c"btrfsic: btrfsic_map_block(logical @%llu, mirror %d) failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [182 x i8] c"btrfs: attempt to write M-block which contains logical bytenr that doesn't map to dev+physical bytenr of submit_bio, buffer->log_bytenr=%llu, submit_bio(bdev=%s, phys_bytenr=%llu)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Read logical bytenr @%llu maps to (%s/%llu/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfsic_state*, i64, %struct.btrfsic_dev_state*, i64)* @btrfsic_cmp_log_and_dev_bytenr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_cmp_log_and_dev_bytenr(%struct.btrfsic_state* %0, i64 %1, %struct.btrfsic_dev_state* %2, i64 %3) #0 {
  %5 = alloca %struct.btrfsic_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfsic_dev_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfsic_block_data_ctx, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.btrfsic_dev_state* %2, %struct.btrfsic_dev_state** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %16 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %15, i32 0, i32 1
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %21 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @btrfs_num_copies(%struct.btrfs_fs_info* %18, i64 %19, i32 %22)
  store i32 %23, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %24

24:                                               ; preds = %62, %4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %32 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @btrfsic_map_block(%struct.btrfsic_state* %29, i64 %30, i32 %33, %struct.btrfsic_block_data_ctx* %10, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (i8*, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %40)
  br label %62

42:                                               ; preds = %28
  %43 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %7, align 8
  %44 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %10, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %10, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %10)
  br label %65

60:                                               ; preds = %51, %42
  %61 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %10)
  br label %62

62:                                               ; preds = %60, %38
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %24

65:                                               ; preds = %56, %24
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @WARN_ON(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %65
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %7, align 8
  %75 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 (i8*, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.1, i64 0, i64 0), i64 %73, i32 %76, i64 %77)
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %104, %72
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %87 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @btrfsic_map_block(%struct.btrfsic_state* %84, i64 %85, i32 %88, %struct.btrfsic_block_data_ctx* %10, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %104

94:                                               ; preds = %83
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %10, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %10, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 (i8*, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %95, i32 %99, i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %94, %93
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %79

107:                                              ; preds = %79
  br label %108

108:                                              ; preds = %107, %65
  ret void
}

declare dso_local i32 @btrfs_num_copies(%struct.btrfs_fs_info*, i64, i32) #1

declare dso_local i32 @btrfsic_map_block(%struct.btrfsic_state*, i64, i32, %struct.btrfsic_block_data_ctx*, i32) #1

declare dso_local i32 @pr_info(i8*, i64, i32, ...) #1

declare dso_local i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
