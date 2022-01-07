; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_dev_queue_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_dev_queue_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.scsi_device = type { i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unblocking device at zero depth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.scsi_device*)* @scsi_dev_queue_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_dev_queue_ready(%struct.request_queue* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 1
  %9 = call i32 @atomic_inc_return(i32* %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 2
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %38

19:                                               ; preds = %15
  %20 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 2
  %22 = call i64 @atomic_dec_return(i32* %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %38

25:                                               ; preds = %19
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %28 = call i32 @sdev_printk(i32 %26, %struct.scsi_device* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %42

38:                                               ; preds = %36, %24, %18
  %39 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 1
  %41 = call i32 @atomic_dec(i32* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
