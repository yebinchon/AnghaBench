; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_dio_read_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_dio_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i32 }
%struct.page = type { i32 }
%struct.io_failure_record = type { i32, i32 }
%struct.extent_io_tree = type { i32 }
%struct.bio_vec = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.extent_io_tree, %struct.extent_io_tree }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"repair DIO read error: submitting new dio read[%#x] to this_mirror=%d, in_validation=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.bio*, %struct.page*, i32, i32, i32, i32, i32*, i8*)* @dio_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dio_read_error(%struct.inode* %0, %struct.bio* %1, %struct.page* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i8* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.bio*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.io_failure_record*, align 8
  %21 = alloca %struct.extent_io_tree*, align 8
  %22 = alloca %struct.extent_io_tree*, align 8
  %23 = alloca %struct.bio*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.bio_vec, align 8
  store %struct.inode* %0, %struct.inode** %11, align 8
  store %struct.bio* %1, %struct.bio** %12, align 8
  store %struct.page* %2, %struct.page** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  %30 = load %struct.inode*, %struct.inode** %11, align 8
  %31 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  store %struct.extent_io_tree* %32, %struct.extent_io_tree** %21, align 8
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store %struct.extent_io_tree* %35, %struct.extent_io_tree** %22, align 8
  store i32 0, i32* %25, align 4
  %36 = load %struct.bio*, %struct.bio** %12, align 8
  %37 = call i64 @bio_op(%struct.bio* %36)
  %38 = load i64, i64* @REQ_OP_WRITE, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @btrfs_get_io_failure_record(%struct.inode* %42, i32 %43, i32 %44, %struct.io_failure_record** %20)
  store i32 %45, i32* %27, align 4
  %46 = load i32, i32* %27, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %9
  %49 = load i32, i32* %27, align 4
  %50 = call i64 @errno_to_blk_status(i32 %49)
  store i64 %50, i64* %10, align 8
  br label %141

51:                                               ; preds = %9
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = load %struct.bio*, %struct.bio** %12, align 8
  %54 = load %struct.io_failure_record*, %struct.io_failure_record** %20, align 8
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @btrfs_check_dio_repairable(%struct.inode* %52, %struct.bio* %53, %struct.io_failure_record* %54, i32 %55)
  store i32 %56, i32* %27, align 4
  %57 = load i32, i32* %27, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = load %struct.extent_io_tree*, %struct.extent_io_tree** %22, align 8
  %61 = load %struct.extent_io_tree*, %struct.extent_io_tree** %21, align 8
  %62 = load %struct.io_failure_record*, %struct.io_failure_record** %20, align 8
  %63 = call i32 @free_io_failure(%struct.extent_io_tree* %60, %struct.extent_io_tree* %61, %struct.io_failure_record* %62)
  %64 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %64, i64* %10, align 8
  br label %141

65:                                               ; preds = %51
  %66 = load %struct.bio*, %struct.bio** %12, align 8
  %67 = call i32 @bio_segments(%struct.bio* %66)
  store i32 %67, i32* %26, align 4
  %68 = load %struct.bio*, %struct.bio** %12, align 8
  %69 = call i32 @bio_get_first_bvec(%struct.bio* %68, %struct.bio_vec* %29)
  %70 = load i32, i32* %26, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %29, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call i64 @btrfs_inode_sectorsize(%struct.inode* %75)
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72, %65
  %79 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %80 = load i32, i32* %25, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %25, align 4
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.bio*, %struct.bio** %12, align 8
  %85 = call %struct.TYPE_7__* @btrfs_io_bio(%struct.bio* %84)
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %83, %87
  store i32 %88, i32* %24, align 4
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %24, align 4
  %95 = ashr i32 %94, %93
  store i32 %95, i32* %24, align 4
  %96 = load %struct.inode*, %struct.inode** %11, align 8
  %97 = load %struct.bio*, %struct.bio** %12, align 8
  %98 = load %struct.io_failure_record*, %struct.io_failure_record** %20, align 8
  %99 = load %struct.page*, %struct.page** %13, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32*, i32** %18, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = call %struct.bio* @btrfs_create_repair_bio(%struct.inode* %96, %struct.bio* %97, %struct.io_failure_record* %98, %struct.page* %99, i32 %100, i32 %101, i32* %102, i8* %103)
  store %struct.bio* %104, %struct.bio** %23, align 8
  %105 = load i32, i32* @REQ_OP_READ, align 4
  %106 = load i32, i32* %25, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.bio*, %struct.bio** %23, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.inode*, %struct.inode** %11, align 8
  %111 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load %struct.io_failure_record*, %struct.io_failure_record** %20, align 8
  %118 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.io_failure_record*, %struct.io_failure_record** %20, align 8
  %121 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @btrfs_debug(i32 %115, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %119, i32 %122)
  %124 = load %struct.inode*, %struct.inode** %11, align 8
  %125 = load %struct.bio*, %struct.bio** %23, align 8
  %126 = load %struct.io_failure_record*, %struct.io_failure_record** %20, align 8
  %127 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @submit_dio_repair_bio(%struct.inode* %124, %struct.bio* %125, i32 %128)
  store i64 %129, i64* %28, align 8
  %130 = load i64, i64* %28, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %82
  %133 = load %struct.extent_io_tree*, %struct.extent_io_tree** %22, align 8
  %134 = load %struct.extent_io_tree*, %struct.extent_io_tree** %21, align 8
  %135 = load %struct.io_failure_record*, %struct.io_failure_record** %20, align 8
  %136 = call i32 @free_io_failure(%struct.extent_io_tree* %133, %struct.extent_io_tree* %134, %struct.io_failure_record* %135)
  %137 = load %struct.bio*, %struct.bio** %23, align 8
  %138 = call i32 @bio_put(%struct.bio* %137)
  br label %139

139:                                              ; preds = %132, %82
  %140 = load i64, i64* %28, align 8
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %139, %59, %48
  %142 = load i64, i64* %10, align 8
  ret i64 %142
}

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @btrfs_get_io_failure_record(%struct.inode*, i32, i32, %struct.io_failure_record**) #1

declare dso_local i64 @errno_to_blk_status(i32) #1

declare dso_local i32 @btrfs_check_dio_repairable(%struct.inode*, %struct.bio*, %struct.io_failure_record*, i32) #1

declare dso_local i32 @free_io_failure(%struct.extent_io_tree*, %struct.extent_io_tree*, %struct.io_failure_record*) #1

declare dso_local i32 @bio_segments(%struct.bio*) #1

declare dso_local i32 @bio_get_first_bvec(%struct.bio*, %struct.bio_vec*) #1

declare dso_local i64 @btrfs_inode_sectorsize(%struct.inode*) #1

declare dso_local %struct.TYPE_7__* @btrfs_io_bio(%struct.bio*) #1

declare dso_local %struct.bio* @btrfs_create_repair_bio(%struct.inode*, %struct.bio*, %struct.io_failure_record*, %struct.page*, i32, i32, i32*, i8*) #1

declare dso_local i32 @btrfs_debug(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @submit_dio_repair_bio(%struct.inode*, %struct.bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
