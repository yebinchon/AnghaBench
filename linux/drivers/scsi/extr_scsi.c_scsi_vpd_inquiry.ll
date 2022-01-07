; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi.c_scsi_vpd_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi.c_scsi_vpd_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*, i8, i32)* @scsi_vpd_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_vpd_inquiry(%struct.scsi_device* %0, i8* %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %61

17:                                               ; preds = %4
  %18 = load i8, i8* @INQUIRY, align 1
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  store i8 %18, i8* %19, align 16
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 1
  store i8 1, i8* %20, align 1
  %21 = load i8, i8* %8, align 1
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 2
  store i8 %21, i8* %22, align 2
  %23 = load i32, i32* %9, align 4
  %24 = lshr i32 %23, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 3
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 4
  store i8 %29, i8* %30, align 4
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 5
  store i8 0, i8* %31, align 1
  %32 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 30, %37
  %39 = call i32 @scsi_execute_req(%struct.scsi_device* %32, i8* %33, i32 %34, i8* %35, i32 %36, i32* null, i32 %38, i32 3, i32* null)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %17
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %17
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %61

56:                                               ; preds = %45
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = call i32 @get_unaligned_be16(i8* %58)
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %53, %42, %14
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
