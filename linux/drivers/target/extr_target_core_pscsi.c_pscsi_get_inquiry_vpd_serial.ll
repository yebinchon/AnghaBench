; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_get_inquiry_vpd_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_get_inquiry_vpd_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.t10_wwn = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@INQUIRY_VPD_SERIAL_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DF_FIRMWARE_VPD_UNIT_SERIAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.t10_wwn*)* @pscsi_get_inquiry_vpd_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pscsi_get_inquiry_vpd_serial(%struct.scsi_device* %0, %struct.t10_wwn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.t10_wwn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.t10_wwn* %1, %struct.t10_wwn** %5, align 8
  %11 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %25 = call i32 @memset(i8* %14, i32 0, i32 %24)
  %26 = load i8, i8* @INQUIRY, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %26, i8* %27, align 16
  %28 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 1, i8* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 -128, i8* %29, align 2
  %30 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %31 = getelementptr inbounds i8, i8* %14, i64 3
  %32 = call i32 @put_unaligned_be16(i32 %30, i8* %31)
  %33 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = call i32 @scsi_execute_req(%struct.scsi_device* %33, i8* %14, i32 %34, i8* %35, i32 %36, i32* null, i32 %37, i32 1, i32* null)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %60

42:                                               ; preds = %23
  %43 = load %struct.t10_wwn*, %struct.t10_wwn** %5, align 8
  %44 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  %50 = call i32 @snprintf(i32* %46, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @DF_FIRMWARE_VPD_UNIT_SERIAL, align 4
  %52 = load %struct.t10_wwn*, %struct.t10_wwn** %5, align 8
  %53 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @kfree(i8* %58)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

60:                                               ; preds = %41
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %60, %42, %20
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @put_unaligned_be16(i32, i8*) #2

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
