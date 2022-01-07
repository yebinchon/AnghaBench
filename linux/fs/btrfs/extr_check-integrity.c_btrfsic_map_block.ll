; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_map_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_map_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_state = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfsic_block_data_ctx = type { i32*, i32*, i32*, i32*, i8*, i8*, i32 }
%struct.btrfs_bio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.btrfs_device* }
%struct.btrfs_device = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BTRFS_MAP_READ = common dso_local global i32 0, align 4
@BTRFS_DEV_STATE_MISSING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"btrfsic: error, cannot lookup dev (#1)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfsic_state*, i8*, i8*, %struct.btrfsic_block_data_ctx*, i32)* @btrfsic_map_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfsic_map_block(%struct.btrfsic_state* %0, i8* %1, i8* %2, %struct.btrfsic_block_data_ctx* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfsic_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.btrfsic_block_data_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.btrfs_bio*, align 8
  %16 = alloca %struct.btrfs_device*, align 8
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.btrfsic_block_data_ctx* %3, %struct.btrfsic_block_data_ctx** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.btrfsic_state*, %struct.btrfsic_state** %7, align 8
  %18 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %17, i32 0, i32 0
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_bio* null, %struct.btrfs_bio** %15, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %14, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %22 = load i32, i32* @BTRFS_MAP_READ, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @btrfs_map_block(%struct.btrfs_fs_info* %21, i32 %22, i8* %23, i8** %14, %struct.btrfs_bio** %15, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %5
  %29 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %30 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %29, i32 0, i32 5
  store i8* null, i8** %30, align 8
  %31 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %31, i32 0, i32 6
  store i32 0, i32* %32, align 8
  %33 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %34 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %33, i32 0, i32 4
  store i8* null, i8** %34, align 8
  %35 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %40 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %111

44:                                               ; preds = %5
  %45 = load %struct.btrfs_bio*, %struct.btrfs_bio** %15, align 8
  %46 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.btrfs_device*, %struct.btrfs_device** %49, align 8
  store %struct.btrfs_device* %50, %struct.btrfs_device** %16, align 8
  %51 = load i32, i32* @BTRFS_DEV_STATE_MISSING, align 4
  %52 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %53 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %52, i32 0, i32 2
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %44
  %57 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %58 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %63 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61, %56, %44
  %67 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %78

69:                                               ; preds = %61
  %70 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %71 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @btrfsic_dev_state_lookup(i32 %74)
  %76 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %77 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %69, %66
  %79 = load %struct.btrfs_bio*, %struct.btrfs_bio** %15, align 8
  %80 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %86 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %89 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %94 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %93, i32 0, i32 3
  store i32* null, i32** %94, align 8
  %95 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %98 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %97, i32 0, i32 1
  store i32* null, i32** %98, align 8
  %99 = load %struct.btrfs_bio*, %struct.btrfs_bio** %15, align 8
  %100 = call i32 @kfree(%struct.btrfs_bio* %99)
  %101 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %10, align 8
  %102 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* null, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %78
  %106 = load i32, i32* @ENXIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %13, align 4
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %78
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %28
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @btrfs_map_block(%struct.btrfs_fs_info*, i32, i8*, i8**, %struct.btrfs_bio**, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32* @btrfsic_dev_state_lookup(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_bio*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
