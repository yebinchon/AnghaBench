; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_write_same_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_write_same_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i64, i32, i32*, %struct.scsi_device*, %struct.request* }
%struct.scsi_device = type { i64 }
%struct.request = type { i64, i32, %struct.bio*, i32 }
%struct.bio = type { i32 }
%struct.scsi_disk = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@BLK_STS_TARGET = common dso_local global i32 0, align 4
@SD_WRITE_SAME_TIMEOUT = common dso_local global i32 0, align 4
@WRITE_SAME_16 = common dso_local global i32 0, align 4
@WRITE_SAME = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sd_setup_write_same_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_setup_write_same_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 5
  %14 = load %struct.request*, %struct.request** %13, align 8
  store %struct.request* %14, %struct.request** %4, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %5, align 8
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.scsi_disk* @scsi_disk(i32 %20)
  store %struct.scsi_disk* %21, %struct.scsi_disk** %6, align 8
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 2
  %24 = load %struct.bio*, %struct.bio** %23, align 8
  store %struct.bio* %24, %struct.bio** %7, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %26 = load %struct.request*, %struct.request** %4, align 8
  %27 = call i32 @blk_rq_pos(%struct.request* %26)
  %28 = call i32 @sectors_to_logical(%struct.scsi_device* %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = call i32 @blk_rq_sectors(%struct.request* %30)
  %32 = call i32 @sectors_to_logical(%struct.scsi_device* %29, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %34 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @BLK_STS_TARGET, align 4
  store i32 %40, i32* %2, align 4
  br label %133

41:                                               ; preds = %1
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = call i64 @bio_offset(%struct.bio* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load %struct.bio*, %struct.bio** %7, align 8
  %47 = call i64 @bio_iovec(%struct.bio* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br label %55

55:                                               ; preds = %45, %41
  %56 = phi i1 [ true, %41 ], [ %54, %45 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load i32, i32* @SD_WRITE_SAME_TIMEOUT, align 4
  %60 = load %struct.request*, %struct.request** %4, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = icmp ugt i32 %67, -1
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp sgt i32 %70, 65535
  br i1 %71, label %72, label %92

72:                                               ; preds = %69, %66, %55
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  store i32 16, i32* %74, align 8
  %75 = load i32, i32* @WRITE_SAME_16, align 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = call i32 @put_unaligned_be64(i32 %80, i32* %84)
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 10
  %91 = call i32 @put_unaligned_be32(i32 %86, i32* %90)
  br label %112

92:                                               ; preds = %69
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  store i32 10, i32* %94, align 8
  %95 = load i32, i32* @WRITE_SAME, align 4
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = call i32 @put_unaligned_be32(i32 %100, i32* %104)
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 7
  %111 = call i32 @put_unaligned_be16(i32 %106, i32* %110)
  br label %112

112:                                              ; preds = %92, %72
  %113 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* @SD_MAX_RETRIES, align 4
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %122 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.request*, %struct.request** %4, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %127 = call i32 @scsi_init_io(%struct.scsi_cmnd* %126)
  store i32 %127, i32* %10, align 4
  %128 = load %struct.request*, %struct.request** %4, align 8
  %129 = call i64 @blk_rq_bytes(%struct.request* %128)
  %130 = load %struct.request*, %struct.request** %4, align 8
  %131 = getelementptr inbounds %struct.request, %struct.request* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %112, %39
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @sectors_to_logical(%struct.scsi_device*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bio_offset(%struct.bio*) #1

declare dso_local i64 @bio_iovec(%struct.bio*) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @scsi_init_io(%struct.scsi_cmnd*) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
