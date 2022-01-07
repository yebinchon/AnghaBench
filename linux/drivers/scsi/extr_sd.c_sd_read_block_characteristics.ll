; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_block_characteristics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_block_characteristics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i8, i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@TYPE_ZBC = common dso_local global i64 0, align 8
@BLK_ZONED_HM = common dso_local global i64 0, align 8
@BLK_ZONED_HA = common dso_local global i64 0, align 8
@BLK_ZONED_NONE = common dso_local global i64 0, align 8
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Host-%s zoned block device\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"managed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"aware\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*)* @sd_read_block_characteristics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_block_characteristics(%struct.scsi_disk* %0) #0 {
  %2 = alloca %struct.scsi_disk*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %2, align 8
  %7 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %3, align 8
  store i32 64, i32* %6, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmalloc(i32 64, i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @scsi_get_vpd_page(%struct.TYPE_6__* %19, i32 177, i8* %20, i32 64)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %1
  br label %98

24:                                               ; preds = %16
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  %27 = call i32 @get_unaligned_be16(i8* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %32 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %33 = call i32 @blk_queue_flag_set(i32 %31, %struct.request_queue* %32)
  %34 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %35 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %36 = call i32 @blk_queue_flag_clear(i32 %34, %struct.request_queue* %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TYPE_ZBC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i64, i64* @BLK_ZONED_HM, align 8
  %47 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %48 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  br label %76

50:                                               ; preds = %37
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 3
  %57 = trunc i32 %56 to i8
  %58 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %58, i32 0, i32 0
  store i8 %57, i8* %59, align 8
  %60 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %61 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 8
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load i64, i64* @BLK_ZONED_HA, align 8
  %67 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %68 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  br label %75

70:                                               ; preds = %50
  %71 = load i64, i64* @BLK_ZONED_NONE, align 8
  %72 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %73 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %45
  %77 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %78 = call i64 @blk_queue_is_zoned(%struct.request_queue* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %82 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, i32* @KERN_NOTICE, align 4
  %87 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %88 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %89 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BLK_ZONED_HM, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %96 = call i32 @sd_printk(i32 %86, %struct.scsi_disk* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %85, %80, %76
  br label %98

98:                                               ; preds = %97, %23
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @kfree(i8* %99)
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @scsi_get_vpd_page(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i64 @blk_queue_is_zoned(%struct.request_queue*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
