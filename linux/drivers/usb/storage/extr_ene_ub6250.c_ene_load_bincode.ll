; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_load_bincode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_load_bincode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32*, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }
%struct.bulk_cb_wrap = type { i32, i32*, i32, i32 }
%struct.ene_ub6250_info = type { i8 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SD_INIT1_PATTERN\0A\00", align 1
@SD_INIT1_FIRMWARE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"SD_INIT2_PATTERN\0A\00", align 1
@SD_INIT2_FIRMWARE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"SD_RW_PATTERN\0A\00", align 1
@SD_RW_FIRMWARE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"MS_INIT_PATTERN\0A\00", align 1
@MS_INIT_FIRMWARE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"MSP_RW_PATTERN\0A\00", align 1
@MSP_RW_FIRMWARE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"MS_RW_PATTERN\0A\00", align 1
@MS_RW_FIRMWARE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"----------- Unknown PATTERN ----------\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"load firmware %s failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@FDIR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8)* @ene_load_bincode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_load_bincode(%struct.us_data* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bulk_cb_wrap*, align 8
  %12 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.firmware* null, %struct.firmware** %9, align 8
  %13 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.us_data*, %struct.us_data** %4, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %17, %struct.bulk_cb_wrap** %11, align 8
  %18 = load %struct.us_data*, %struct.us_data** %4, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %21, %struct.ene_ub6250_info** %12, align 8
  %22 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %12, align 8
  %23 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %30, i32* %3, align 4
  br label %127

31:                                               ; preds = %2
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %58 [
    i32 130, label %34
    i32 129, label %38
    i32 128, label %42
    i32 132, label %46
    i32 133, label %50
    i32 131, label %54
  ]

34:                                               ; preds = %31
  %35 = load %struct.us_data*, %struct.us_data** %4, align 8
  %36 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** @SD_INIT1_FIRMWARE, align 8
  store i8* %37, i8** %7, align 8
  br label %61

38:                                               ; preds = %31
  %39 = load %struct.us_data*, %struct.us_data** %4, align 8
  %40 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** @SD_INIT2_FIRMWARE, align 8
  store i8* %41, i8** %7, align 8
  br label %61

42:                                               ; preds = %31
  %43 = load %struct.us_data*, %struct.us_data** %4, align 8
  %44 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** @SD_RW_FIRMWARE, align 8
  store i8* %45, i8** %7, align 8
  br label %61

46:                                               ; preds = %31
  %47 = load %struct.us_data*, %struct.us_data** %4, align 8
  %48 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i8*, i8** @MS_INIT_FIRMWARE, align 8
  store i8* %49, i8** %7, align 8
  br label %61

50:                                               ; preds = %31
  %51 = load %struct.us_data*, %struct.us_data** %4, align 8
  %52 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i8*, i8** @MSP_RW_FIRMWARE, align 8
  store i8* %53, i8** %7, align 8
  br label %61

54:                                               ; preds = %31
  %55 = load %struct.us_data*, %struct.us_data** %4, align 8
  %56 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i8*, i8** @MS_RW_FIRMWARE, align 8
  store i8* %57, i8** %7, align 8
  br label %61

58:                                               ; preds = %31
  %59 = load %struct.us_data*, %struct.us_data** %4, align 8
  %60 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %123

61:                                               ; preds = %54, %50, %46, %42, %38, %34
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.us_data*, %struct.us_data** %4, align 8
  %64 = getelementptr inbounds %struct.us_data, %struct.us_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @request_firmware(%struct.firmware** %9, i8* %62, i32* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.us_data*, %struct.us_data** %4, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  br label %123

74:                                               ; preds = %61
  %75 = load %struct.firmware*, %struct.firmware** %9, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.firmware*, %struct.firmware** %9, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @kmemdup(i32 %77, i32 %80, i32 %81)
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %123

86:                                               ; preds = %74
  %87 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %11, align 8
  %88 = call i32 @memset(%struct.bulk_cb_wrap* %87, i32 0, i32 24)
  %89 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %11, align 8
  %92 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.firmware*, %struct.firmware** %9, align 8
  %94 = getelementptr inbounds %struct.firmware, %struct.firmware* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %11, align 8
  %97 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %11, align 8
  %99 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %11, align 8
  %101 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 239, i32* %103, align 4
  %104 = load %struct.us_data*, %struct.us_data** %4, align 8
  %105 = load i32, i32* @FDIR_WRITE, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @ene_send_scsi_cmd(%struct.us_data* %104, i32 %105, i8* %106, i32 0)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.us_data*, %struct.us_data** %4, align 8
  %109 = getelementptr inbounds %struct.us_data, %struct.us_data* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %86
  %113 = load %struct.us_data*, %struct.us_data** %4, align 8
  %114 = getelementptr inbounds %struct.us_data, %struct.us_data* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @scsi_set_resid(i32* %115, i32 0)
  br label %117

117:                                              ; preds = %112, %86
  %118 = load i8, i8* %5, align 1
  %119 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %12, align 8
  %120 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %119, i32 0, i32 0
  store i8 %118, i8* %120, align 1
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @kfree(i8* %121)
  br label %123

123:                                              ; preds = %117, %85, %70, %58
  %124 = load %struct.firmware*, %struct.firmware** %9, align 8
  %125 = call i32 @release_firmware(%struct.firmware* %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %29
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i8*, i32) #1

declare dso_local i32 @scsi_set_resid(i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
