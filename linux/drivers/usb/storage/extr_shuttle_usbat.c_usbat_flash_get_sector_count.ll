; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_get_sector_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_get_sector_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.usbat_info = type { i32 }

@USBAT_ATA_SECCNT = common dso_local global i8 0, align 1
@USBAT_ATA_DEVICE = common dso_local global i8 0, align 1
@USBAT_ATA_CMD = common dso_local global i8 0, align 1
@__const.usbat_flash_get_sector_count.command = private unnamed_addr constant [3 x i8] c"\01\A0\EC", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Gah! identify_device failed\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.usbat_info*)* @usbat_flash_get_sector_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_flash_get_sector_count(%struct.us_data* %0, %struct.usbat_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.usbat_info*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.usbat_info* %1, %struct.usbat_info** %5, align 8
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %12 = load i8, i8* @USBAT_ATA_SECCNT, align 1
  store i8 %12, i8* %11, align 1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  %14 = load i8, i8* @USBAT_ATA_DEVICE, align 1
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds i8, i8* %13, i64 1
  %16 = load i8, i8* @USBAT_ATA_CMD, align 1
  store i8 %16, i8* %15, align 1
  %17 = bitcast [3 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.usbat_flash_get_sector_count.command, i32 0, i32 0), i64 3, i1 false)
  %18 = load %struct.us_data*, %struct.us_data** %4, align 8
  %19 = icmp ne %struct.us_data* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %22 = icmp ne %struct.usbat_info* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %20
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = call i8* @kmalloc(i32 512, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %90

32:                                               ; preds = %25
  %33 = load %struct.us_data*, %struct.us_data** %4, align 8
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %36 = call i32 @usbat_multiple_write(%struct.us_data* %33, i8* %34, i8* %35, i32 3)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.us_data*, %struct.us_data** %4, align 8
  %42 = call i32 @usb_stor_dbg(%struct.us_data* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %43, i32* %10, align 4
  br label %86

44:                                               ; preds = %32
  %45 = load %struct.us_data*, %struct.us_data** %4, align 8
  %46 = call i32 @usbat_get_status(%struct.us_data* %45, i8* %9)
  %47 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %50, i32* %10, align 4
  br label %86

51:                                               ; preds = %44
  %52 = call i32 @msleep(i32 100)
  %53 = load %struct.us_data*, %struct.us_data** %4, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @usbat_read_block(%struct.us_data* %53, i8* %54, i32 512, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %86

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 117
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 24
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 116
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 16
  %71 = or i32 %65, %70
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 115
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 8
  %77 = or i32 %71, %76
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 114
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %77, %81
  %83 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %84 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %60, %59, %49, %40
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @kfree(i8* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %30, %23
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @usbat_multiple_write(%struct.us_data*, i8*, i8*, i32) #2

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #2

declare dso_local i32 @usbat_get_status(%struct.us_data*, i8*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @usbat_read_block(%struct.us_data*, i8*, i32, i32) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
