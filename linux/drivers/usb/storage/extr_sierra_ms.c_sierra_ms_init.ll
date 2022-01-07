; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_sierra_ms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_sierra_ms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { %struct.TYPE_2__*, %struct.usb_device* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.swoc_info = type { i32 }
%struct.Scsi_Host = type { i32 }

@swi_tru_install = common dso_local global i64 0, align 8
@TRU_FORCE_MODEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"SWIMS: Forcing Modem Mode\0A\00", align 1
@SWIMS_SET_MODE_Modem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SWIMS: Failed to switch to modem mode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TRU_FORCE_MS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"SWIMS: Forcing Mass Storage Mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SWIMS: Normal SWoC Logic\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"SWIMS: Failed SWoC query\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"SWIMS: Completely failed SWoC query\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"SWIMS: Switching to Modem Mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"SWIMS: Failed to switch modem\0A\00", align 1
@dev_attr_truinst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sierra_ms_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.swoc_info*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i32 3, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.us_data*, %struct.us_data** %3, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %8, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %15 = call i32 @scsi_get_host_dev(%struct.Scsi_Host* %14)
  %16 = load i64, i64* @swi_tru_install, align 8
  %17 = load i64, i64* @TRU_FORCE_MODEM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.us_data*, %struct.us_data** %3, align 8
  %21 = call i32 @usb_stor_dbg(%struct.us_data* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %23 = load i32, i32* @SWIMS_SET_MODE_Modem, align 4
  %24 = call i32 @sierra_set_ms_mode(%struct.usb_device* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.us_data*, %struct.us_data** %3, align 8
  %29 = call i32 @usb_stor_dbg(%struct.us_data* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %121

33:                                               ; preds = %1
  %34 = load i64, i64* @swi_tru_install, align 8
  %35 = load i64, i64* @TRU_FORCE_MS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.us_data*, %struct.us_data** %3, align 8
  %39 = call i32 @usb_stor_dbg(%struct.us_data* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %115

40:                                               ; preds = %33
  %41 = load %struct.us_data*, %struct.us_data** %3, align 8
  %42 = call i32 @usb_stor_dbg(%struct.us_data* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.swoc_info* @kmalloc(i32 4, i32 %43)
  store %struct.swoc_info* %44, %struct.swoc_info** %6, align 8
  %45 = load %struct.swoc_info*, %struct.swoc_info** %6, align 8
  %46 = icmp ne %struct.swoc_info* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %121

50:                                               ; preds = %40
  store i32 3, i32* %5, align 4
  br label %51

51:                                               ; preds = %72, %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  %54 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %55 = load %struct.swoc_info*, %struct.swoc_info** %6, align 8
  %56 = call i32 @sierra_get_swoc_info(%struct.usb_device* %54, %struct.swoc_info* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.us_data*, %struct.us_data** %3, align 8
  %61 = call i32 @usb_stor_dbg(%struct.us_data* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @HZ, align 4
  %63 = mul nsw i32 2, %62
  %64 = call i32 @schedule_timeout_uninterruptible(i32 %63)
  br label %65

65:                                               ; preds = %59, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i1 [ false, %66 ], [ %71, %69 ]
  br i1 %73, label %51, label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.us_data*, %struct.us_data** %3, align 8
  %79 = call i32 @usb_stor_dbg(%struct.us_data* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.swoc_info*, %struct.swoc_info** %6, align 8
  %81 = call i32 @kfree(%struct.swoc_info* %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %121

84:                                               ; preds = %74
  %85 = load %struct.us_data*, %struct.us_data** %3, align 8
  %86 = getelementptr inbounds %struct.us_data, %struct.us_data* %85, i32 0, i32 1
  %87 = load %struct.usb_device*, %struct.usb_device** %86, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 0
  %89 = load %struct.swoc_info*, %struct.swoc_info** %6, align 8
  %90 = call i32 @debug_swoc(i32* %88, %struct.swoc_info* %89)
  %91 = load %struct.swoc_info*, %struct.swoc_info** %6, align 8
  %92 = call i32 @containsFullLinuxPackage(%struct.swoc_info* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %84
  %95 = load %struct.us_data*, %struct.us_data** %3, align 8
  %96 = call i32 @usb_stor_dbg(%struct.us_data* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %97 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %98 = load i32, i32* @SWIMS_SET_MODE_Modem, align 4
  %99 = call i32 @sierra_set_ms_mode(%struct.usb_device* %97, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.us_data*, %struct.us_data** %3, align 8
  %104 = call i32 @usb_stor_dbg(%struct.us_data* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %94
  %106 = load %struct.swoc_info*, %struct.swoc_info** %6, align 8
  %107 = call i32 @kfree(%struct.swoc_info* %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %121

110:                                              ; preds = %84
  %111 = load %struct.swoc_info*, %struct.swoc_info** %6, align 8
  %112 = call i32 @kfree(%struct.swoc_info* %111)
  br label %113

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %37
  %116 = load %struct.us_data*, %struct.us_data** %3, align 8
  %117 = getelementptr inbounds %struct.us_data, %struct.us_data* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 @device_create_file(i32* %119, i32* @dev_attr_truinst)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %115, %105, %77, %47, %30
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.Scsi_Host* @us_to_host(%struct.us_data*) #1

declare dso_local i32 @scsi_get_host_dev(%struct.Scsi_Host*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @sierra_set_ms_mode(%struct.usb_device*, i32) #1

declare dso_local %struct.swoc_info* @kmalloc(i32, i32) #1

declare dso_local i32 @sierra_get_swoc_info(%struct.usb_device*, %struct.swoc_info*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @kfree(%struct.swoc_info*) #1

declare dso_local i32 @debug_swoc(i32*, %struct.swoc_info*) #1

declare dso_local i32 @containsFullLinuxPackage(%struct.swoc_info*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
