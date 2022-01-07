; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_prep_state_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_prep_state_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"rejecting I/O to offline device\0A\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"rejecting I/O to dead device\0A\00", align 1
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@RQF_PREEMPT = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.request*)* @scsi_prep_state_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_prep_state_check(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %35 [
    i32 130, label %9
    i32 128, label %9
    i32 131, label %14
    i32 133, label %19
    i32 132, label %19
    i32 129, label %21
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @KERN_ERR, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = call i32 @sdev_printk(i32 %10, %struct.scsi_device* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %17 = call i32 @sdev_printk(i32 %15, %struct.scsi_device* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = icmp ne %struct.request* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.request*, %struct.request** %5, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RQF_PREEMPT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %24, %21
  %34 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %2
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = icmp ne %struct.request* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RQF_PREEMPT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %38, %35
  %48 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %45, %33, %31, %19, %14, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
