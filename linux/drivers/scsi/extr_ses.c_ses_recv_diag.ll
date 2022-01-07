; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_recv_diag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_recv_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@RECEIVE_DIAGNOSTIC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SES_TIMEOUT = common dso_local global i32 0, align 4
@SES_RETRIES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Wrong diagnostic page; asked for %d got %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, i8*, i32)* @ses_recv_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_recv_diag(%struct.scsi_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca i8, align 1
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %14 = load i32, i32* @RECEIVE_DIAGNOSTIC, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 1, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i32, i32* %7, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %17, align 1
  %20 = getelementptr inbounds i8, i8* %17, i64 1
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %20, align 1
  %24 = getelementptr inbounds i8, i8* %20, i64 1
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %28, align 1
  %29 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SES_TIMEOUT, align 4
  %35 = load i32, i32* @SES_RETRIES, align 4
  %36 = call i32 @scsi_execute_req(%struct.scsi_device* %29, i8* %30, i32 %31, i8* %32, i32 %33, i32* null, i32 %34, i32 %35, i32* null)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %63

42:                                               ; preds = %4
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %12, align 1
  %46 = load i8, i8* %12, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %63

55:                                               ; preds = %42
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i8, i8* %12, align 1
  %60 = call i32 @sdev_printk(i32 %56, %struct.scsi_device* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %58, i8 zeroext %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %55, %53, %40
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
