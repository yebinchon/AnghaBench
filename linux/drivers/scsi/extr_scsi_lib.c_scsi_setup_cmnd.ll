; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_setup_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_setup_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i32 }
%struct.scsi_cmnd = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.request*)* @scsi_setup_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_setup_cmnd(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = call %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request* %7)
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %6, align 8
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = call i32 @blk_rq_bytes(%struct.request* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @DMA_NONE, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = call i64 @rq_data_dir(%struct.request* %17)
  %19 = load i64, i64* @WRITE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %12
  %31 = load %struct.request*, %struct.request** %5, align 8
  %32 = call i64 @blk_rq_is_scsi(%struct.request* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = call i32 @scsi_setup_scsi_cmnd(%struct.scsi_device* %35, %struct.request* %36)
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = call i32 @scsi_setup_fs_cmnd(%struct.scsi_device* %39, %struct.request* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @blk_rq_is_scsi(%struct.request*) #1

declare dso_local i32 @scsi_setup_scsi_cmnd(%struct.scsi_device*, %struct.request*) #1

declare dso_local i32 @scsi_setup_fs_cmnd(%struct.scsi_device*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
