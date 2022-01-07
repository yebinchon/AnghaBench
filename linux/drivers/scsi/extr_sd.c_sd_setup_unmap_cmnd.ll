; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_unmap_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_unmap_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, i32, i32, %struct.request*, %struct.scsi_device* }
%struct.request = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.scsi_device = type { i32 }

@sd_page_pool = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@RQF_SPECIAL_PAYLOAD = common dso_local global i32 0, align 4
@UNMAP = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sd_setup_unmap_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_setup_unmap_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 5
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 4
  %15 = load %struct.request*, %struct.request** %14, align 8
  store %struct.request* %15, %struct.request** %5, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = call i32 @blk_rq_pos(%struct.request* %17)
  %19 = call i8* @sectors_to_logical(%struct.scsi_device* %16, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = call i32 @blk_rq_sectors(%struct.request* %21)
  %23 = call i8* @sectors_to_logical(%struct.scsi_device* %20, i32 %22)
  store i8* %23, i8** %7, align 8
  store i32 24, i32* %8, align 4
  %24 = load i32, i32* @sd_page_pool, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @mempool_alloc(i32 %24, i32 %25)
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %36, i32* %2, align 4
  br label %96

37:                                               ; preds = %1
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clear_highpage(i32 %41)
  %43 = load %struct.request*, %struct.request** %5, align 8
  %44 = getelementptr inbounds %struct.request, %struct.request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.request*, %struct.request** %5, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @RQF_SPECIAL_PAYLOAD, align 4
  %51 = load %struct.request*, %struct.request** %5, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  store i32 10, i32* %56, align 8
  %57 = load i32, i32* @UNMAP, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  store i32 24, i32* %65, align 4
  %66 = load %struct.request*, %struct.request** %5, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @page_address(i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = call i32 @put_unaligned_be16(i32 22, i8* %72)
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = call i32 @put_unaligned_be16(i32 16, i8* %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  %80 = call i32 @put_unaligned_be64(i8* %77, i8* %79)
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 16
  %84 = call i32 @put_unaligned_be32(i8* %81, i8* %83)
  %85 = load i32, i32* @SD_MAX_RETRIES, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @SD_TIMEOUT, align 4
  %92 = load %struct.request*, %struct.request** %5, align 8
  %93 = getelementptr inbounds %struct.request, %struct.request* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %95 = call i32 @scsi_init_io(%struct.scsi_cmnd* %94)
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %37, %35
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i8* @sectors_to_logical(%struct.scsi_device*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @mempool_alloc(i32, i32) #1

declare dso_local i32 @clear_highpage(i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @put_unaligned_be64(i8*, i8*) #1

declare dso_local i32 @put_unaligned_be32(i8*, i8*) #1

declare dso_local i32 @scsi_init_io(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
