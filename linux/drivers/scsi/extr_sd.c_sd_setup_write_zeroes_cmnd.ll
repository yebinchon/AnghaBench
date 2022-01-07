; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_write_zeroes_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_write_zeroes_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device*, %struct.request* }
%struct.scsi_device = type { i64 }
%struct.request = type { i32, i32 }
%struct.scsi_disk = type { i32, i64 }

@REQ_NOUNMAP = common dso_local global i32 0, align 4
@BLK_STS_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sd_setup_write_zeroes_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_setup_write_zeroes_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %11, %struct.request** %4, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  store %struct.scsi_device* %14, %struct.scsi_device** %5, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.scsi_disk* @scsi_disk(i32 %17)
  store %struct.scsi_disk* %18, %struct.scsi_disk** %6, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = call i32 @blk_rq_pos(%struct.request* %20)
  %22 = call i32 @sectors_to_logical(%struct.scsi_device* %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = call i32 @blk_rq_sectors(%struct.request* %24)
  %26 = call i32 @sectors_to_logical(%struct.scsi_device* %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.request*, %struct.request** %4, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REQ_NOUNMAP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %1
  %34 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %43 [
    i32 128, label %37
    i32 129, label %40
  ]

37:                                               ; preds = %33
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %39 = call i32 @sd_setup_write_same16_cmnd(%struct.scsi_cmnd* %38, i32 1)
  store i32 %39, i32* %2, align 4
  br label %68

40:                                               ; preds = %33
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %42 = call i32 @sd_setup_write_same10_cmnd(%struct.scsi_cmnd* %41, i32 1)
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @BLK_STS_TARGET, align 4
  store i32 %50, i32* %2, align 4
  br label %68

51:                                               ; preds = %44
  %52 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %53 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = icmp ugt i32 %57, -1
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 65535
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %56, %51
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = call i32 @sd_setup_write_same16_cmnd(%struct.scsi_cmnd* %63, i32 0)
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %67 = call i32 @sd_setup_write_same10_cmnd(%struct.scsi_cmnd* %66, i32 0)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %62, %49, %40, %37
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @sectors_to_logical(%struct.scsi_device*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @sd_setup_write_same16_cmnd(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @sd_setup_write_same10_cmnd(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
