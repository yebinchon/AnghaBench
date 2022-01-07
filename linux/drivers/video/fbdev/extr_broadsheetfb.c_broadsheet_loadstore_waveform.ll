; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_loadstore_waveform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_loadstore_waveform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.broadsheetfb_par* }
%struct.broadsheetfb_par = type { i32 }
%struct.firmware = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"broadsheet.wbf\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get broadsheet waveform\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid waveform\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to store broadsheet waveform\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Stored broadsheet waveform, size %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @broadsheet_loadstore_waveform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_loadstore_waveform(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca %struct.broadsheetfb_par*, align 8
  %13 = alloca %struct.firmware*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %14)
  store %struct.fb_info* %15, %struct.fb_info** %11, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %17, align 8
  store %struct.broadsheetfb_par* %18, %struct.broadsheetfb_par** %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %80

24:                                               ; preds = %4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @request_firmware(%struct.firmware** %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.device* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %78

32:                                               ; preds = %24
  %33 = load %struct.firmware*, %struct.firmware** %13, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 8192
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.firmware*, %struct.firmware** %13, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 65536
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %32
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %75

47:                                               ; preds = %37
  %48 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %12, align 8
  %49 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %12, align 8
  %52 = load %struct.firmware*, %struct.firmware** %13, align 8
  %53 = getelementptr inbounds %struct.firmware, %struct.firmware* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.firmware*, %struct.firmware** %13, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @broadsheet_store_waveform_to_spiflash(%struct.broadsheetfb_par* %51, i32 %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %12, align 8
  %60 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %75

67:                                               ; preds = %47
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.firmware*, %struct.firmware** %13, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_info(%struct.device* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %67, %64, %42
  %76 = load %struct.firmware*, %struct.firmware** %13, align 8
  %77 = call i32 @release_firmware(%struct.firmware* %76)
  br label %78

78:                                               ; preds = %75, %29
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %21
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @broadsheet_store_waveform_to_spiflash(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
