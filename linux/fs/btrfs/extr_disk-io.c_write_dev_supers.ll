; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_write_dev_supers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_write_dev_supers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.btrfs_device = type { i64, %struct.btrfs_fs_info*, i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_super_block = type { i32 }
%struct.buffer_head = type { %struct.btrfs_device*, i32, i32 }

@shash = common dso_local global %struct.TYPE_6__* null, align 8
@BTRFS_SUPER_MIRROR_MAX = common dso_local global i32 0, align 4
@BTRFS_SUPER_INFO_SIZE = common dso_local global i64 0, align 8
@BTRFS_CSUM_SIZE = common dso_local global i32 0, align 4
@BTRFS_BDEV_BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"couldn't get super buffer head for bytenr %llu\00", align 1
@btrfs_end_buffer_write_sync = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@NOBARRIER = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_device*, %struct.btrfs_super_block*, i32)* @write_dev_supers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_dev_supers(%struct.btrfs_device* %0, %struct.btrfs_super_block* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_device*, align 8
  %5 = alloca %struct.btrfs_super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btrfs_device* %0, %struct.btrfs_device** %4, align 8
  store %struct.btrfs_super_block* %1, %struct.btrfs_super_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %14, i32 0, i32 1
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %17, i32 %20)
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @BTRFS_SUPER_MIRROR_MAX, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %3
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %136, %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %139

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @btrfs_sb_offset(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %139

48:                                               ; preds = %36
  %49 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @btrfs_set_super_bytenr(%struct.btrfs_super_block* %49, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %53 = call i32 @crypto_shash_init(%struct.TYPE_6__* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %55 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %56 = bitcast %struct.btrfs_super_block* %55 to i8*
  %57 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %61 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %60, %62
  %64 = call i32 @crypto_shash_update(%struct.TYPE_6__* %54, i8* %59, i64 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %66 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %67 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @crypto_shash_final(%struct.TYPE_6__* %65, i32 %68)
  %70 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %71 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @BTRFS_BDEV_BLOCKSIZE, align 4
  %75 = sdiv i32 %73, %74
  %76 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %77 = call %struct.buffer_head* @__getblk(i32 %72, i32 %75, i64 %76)
  store %struct.buffer_head* %77, %struct.buffer_head** %8, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %79 = icmp ne %struct.buffer_head* %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %48
  %81 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %82 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %81, i32 0, i32 1
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @btrfs_err(%struct.btrfs_fs_info* %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %136

88:                                               ; preds = %48
  %89 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %93 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %94 = call i32 @memcpy(i32 %91, %struct.btrfs_super_block* %92, i64 %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %96 = call i32 @get_bh(%struct.buffer_head* %95)
  %97 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %98 = call i32 @set_buffer_uptodate(%struct.buffer_head* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %100 = call i32 @lock_buffer(%struct.buffer_head* %99)
  %101 = load i32, i32* @btrfs_end_buffer_write_sync, align 4
  %102 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 0
  store %struct.btrfs_device* %104, %struct.btrfs_device** %106, align 8
  %107 = load i32, i32* @REQ_SYNC, align 4
  %108 = load i32, i32* @REQ_META, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @REQ_PRIO, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %88
  %115 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %116 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %115, i32 0, i32 1
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %116, align 8
  %118 = load i32, i32* @NOBARRIER, align 4
  %119 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @REQ_FUA, align 4
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %114, %88
  %126 = load i32, i32* @REQ_OP_WRITE, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %129 = call i32 @btrfsic_submit_bh(i32 %126, i32 %127, %struct.buffer_head* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %132, %125
  br label %136

136:                                              ; preds = %135, %80
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %32

139:                                              ; preds = %47, %32
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 0, i32 -1
  ret i32 %144
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @btrfs_sb_offset(i32) #1

declare dso_local i32 @btrfs_set_super_bytenr(%struct.btrfs_super_block*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.buffer_head* @__getblk(i32, i32, i64) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.btrfs_super_block*, i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfsic_submit_bh(i32, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
