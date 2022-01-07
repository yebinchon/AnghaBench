; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_setup_reset_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_setup_reset_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, i64, i64, i32, %struct.request* }
%struct.request = type { i32, i32 }
%struct.scsi_disk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@ZBC_OUT = common dso_local global i32 0, align 4
@ZO_RESET_WRITE_POINTER = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_zbc_setup_reset_cmnd(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.scsi_disk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 5
  %12 = load %struct.request*, %struct.request** %11, align 8
  store %struct.request* %12, %struct.request** %6, align 8
  %13 = load %struct.request*, %struct.request** %6, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.scsi_disk* @scsi_disk(i32 %15)
  store %struct.scsi_disk* %16, %struct.scsi_disk** %7, align 8
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = call i32 @blk_rq_pos(%struct.request* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.scsi_disk*, %struct.scsi_disk** %7, align 8
  %20 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @sectors_to_logical(%struct.TYPE_2__* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.scsi_disk*, %struct.scsi_disk** %7, align 8
  %25 = call i32 @sd_is_zoned(%struct.scsi_disk* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %28, i32* %3, align 4
  br label %93

29:                                               ; preds = %2
  %30 = load %struct.scsi_disk*, %struct.scsi_disk** %7, align 8
  %31 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %37, i32* %3, align 4
  br label %93

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.scsi_disk*, %struct.scsi_disk** %7, align 8
  %41 = call i32 @sd_zbc_zone_sectors(%struct.scsi_disk* %40)
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %46, i32* %3, align 4
  br label %93

47:                                               ; preds = %38
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  store i32 16, i32* %49, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memset(i32* %52, i32 0, i32 %55)
  %57 = load i32, i32* @ZBC_OUT, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @ZO_RESET_WRITE_POINTER, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %47
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 14
  store i32 1, i32* %73, align 4
  br label %81

74:                                               ; preds = %47
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = call i32 @put_unaligned_be64(i32 %75, i32* %79)
  br label %81

81:                                               ; preds = %74, %69
  %82 = load i32, i32* @SD_TIMEOUT, align 4
  %83 = load %struct.request*, %struct.request** %6, align 8
  %84 = getelementptr inbounds %struct.request, %struct.request* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @DMA_NONE, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %81, %45, %36, %27
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @sectors_to_logical(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @sd_is_zoned(%struct.scsi_disk*) #1

declare dso_local i32 @sd_zbc_zone_sectors(%struct.scsi_disk*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
