; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_write_same16_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_write_same16_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, i8*, i32, %struct.request*, %struct.scsi_device* }
%struct.request = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64, i32 }
%struct.scsi_device = type { i8* }

@sd_page_pool = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@RQF_SPECIAL_PAYLOAD = common dso_local global i32 0, align 4
@WRITE_SAME_16 = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_WRITE_SAME_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @sd_setup_write_same16_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_setup_write_same16_cmnd(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 5
  %13 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  store %struct.scsi_device* %13, %struct.scsi_device** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 4
  %16 = load %struct.request*, %struct.request** %15, align 8
  store %struct.request* %16, %struct.request** %7, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = load %struct.request*, %struct.request** %7, align 8
  %19 = call i32 @blk_rq_pos(%struct.request* %18)
  %20 = call i8* @sectors_to_logical(%struct.scsi_device* %17, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %22 = load %struct.request*, %struct.request** %7, align 8
  %23 = call i32 @blk_rq_sectors(%struct.request* %22)
  %24 = call i8* @sectors_to_logical(%struct.scsi_device* %21, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i32, i32* @sd_page_pool, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call i32 @mempool_alloc(i32 %28, i32 %29)
  %31 = load %struct.request*, %struct.request** %7, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.request*, %struct.request** %7, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %40, i32* %3, align 4
  br label %104

41:                                               ; preds = %2
  %42 = load %struct.request*, %struct.request** %7, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clear_highpage(i32 %45)
  %47 = load %struct.request*, %struct.request** %7, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.request*, %struct.request** %7, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* @RQF_SPECIAL_PAYLOAD, align 4
  %55 = load %struct.request*, %struct.request** %7, align 8
  %56 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  store i32 16, i32* %60, align 8
  %61 = load i32, i32* @WRITE_SAME_16, align 4
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %41
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 8, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %41
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = call i32 @put_unaligned_be64(i8* %74, i32* %78)
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 10
  %85 = call i32 @put_unaligned_be32(i8* %80, i32* %84)
  %86 = load i32, i32* @SD_MAX_RETRIES, align 4
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %73
  %95 = load i32, i32* @SD_TIMEOUT, align 4
  br label %98

96:                                               ; preds = %73
  %97 = load i32, i32* @SD_WRITE_SAME_TIMEOUT, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = load %struct.request*, %struct.request** %7, align 8
  %101 = getelementptr inbounds %struct.request, %struct.request* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %103 = call i32 @scsi_init_io(%struct.scsi_cmnd* %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %39
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i8* @sectors_to_logical(%struct.scsi_device*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @mempool_alloc(i32, i32) #1

declare dso_local i32 @clear_highpage(i32) #1

declare dso_local i32 @put_unaligned_be64(i8*, i32*) #1

declare dso_local i32 @put_unaligned_be32(i8*, i32*) #1

declare dso_local i32 @scsi_init_io(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
