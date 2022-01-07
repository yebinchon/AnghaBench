; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_probe2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_probe2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Transport: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Protocol: %s\0A\00", align 1
@US_FL_SCM_MULT_TARG = common dso_local global i32 0, align 4
@usb_stor_Bulk_transport = common dso_local global i64 0, align 8
@US_FL_SINGLE_LUN = common dso_local global i32 0, align 4
@US_FL_INITIAL_READ10 = common dso_local global i32 0, align 4
@US_FLIDX_REDO_READ10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"usb-storage %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to add the scsi host\0A\00", align 1
@US_FLIDX_SCAN_PENDING = common dso_local global i32 0, align 4
@delay_use = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"waiting for device to settle before scanning\0A\00", align 1
@system_freezable_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"storage_probe() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_probe2(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %6 = load %struct.us_data*, %struct.us_data** %3, align 8
  %7 = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 3
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.us_data*, %struct.us_data** %3, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.us_data*, %struct.us_data** %3, align 8
  %16 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %139

22:                                               ; preds = %14
  %23 = load %struct.us_data*, %struct.us_data** %3, align 8
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.us_data*, %struct.us_data** %3, align 8
  %29 = load %struct.us_data*, %struct.us_data** %3, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.us_data*, %struct.us_data** %3, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @US_FL_SCM_MULT_TARG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %22
  %40 = load %struct.us_data*, %struct.us_data** %3, align 8
  %41 = getelementptr inbounds %struct.us_data, %struct.us_data* %40, i32 0, i32 2
  store i32 7, i32* %41, align 4
  %42 = load %struct.us_data*, %struct.us_data** %3, align 8
  %43 = call %struct.TYPE_6__* @us_to_host(%struct.us_data* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 7, i32* %44, align 4
  br label %59

45:                                               ; preds = %22
  %46 = load %struct.us_data*, %struct.us_data** %3, align 8
  %47 = call %struct.TYPE_6__* @us_to_host(%struct.us_data* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.us_data*, %struct.us_data** %3, align 8
  %50 = getelementptr inbounds %struct.us_data, %struct.us_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @usb_stor_Bulk_transport, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.us_data*, %struct.us_data** %3, align 8
  %56 = call %struct.TYPE_6__* @us_to_host(%struct.us_data* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %45
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.us_data*, %struct.us_data** %3, align 8
  %61 = getelementptr inbounds %struct.us_data, %struct.us_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @US_FL_SINGLE_LUN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.us_data*, %struct.us_data** %3, align 8
  %68 = getelementptr inbounds %struct.us_data, %struct.us_data* %67, i32 0, i32 2
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.us_data*, %struct.us_data** %3, align 8
  %71 = call i32 @get_pipes(%struct.us_data* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %139

75:                                               ; preds = %69
  %76 = load %struct.us_data*, %struct.us_data** %3, align 8
  %77 = getelementptr inbounds %struct.us_data, %struct.us_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @US_FL_INITIAL_READ10, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* @US_FLIDX_REDO_READ10, align 4
  %84 = load %struct.us_data*, %struct.us_data** %3, align 8
  %85 = getelementptr inbounds %struct.us_data, %struct.us_data* %84, i32 0, i32 5
  %86 = call i32 @set_bit(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %82, %75
  %88 = load %struct.us_data*, %struct.us_data** %3, align 8
  %89 = call i32 @usb_stor_acquire_resources(%struct.us_data* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %139

93:                                               ; preds = %87
  %94 = load %struct.us_data*, %struct.us_data** %3, align 8
  %95 = getelementptr inbounds %struct.us_data, %struct.us_data* %94, i32 0, i32 3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i32 @usb_autopm_get_interface_no_resume(%struct.TYPE_5__* %96)
  %98 = load %struct.us_data*, %struct.us_data** %3, align 8
  %99 = getelementptr inbounds %struct.us_data, %struct.us_data* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.us_data*, %struct.us_data** %3, align 8
  %102 = getelementptr inbounds %struct.us_data, %struct.us_data* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = call i8* @dev_name(%struct.device* %104)
  %106 = call i32 @snprintf(i32 %100, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = load %struct.us_data*, %struct.us_data** %3, align 8
  %108 = call %struct.TYPE_6__* @us_to_host(%struct.us_data* %107)
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = call i32 @scsi_add_host(%struct.TYPE_6__* %108, %struct.device* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %93
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @dev_warn(%struct.device* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %134

116:                                              ; preds = %93
  %117 = load i32, i32* @US_FLIDX_SCAN_PENDING, align 4
  %118 = load %struct.us_data*, %struct.us_data** %3, align 8
  %119 = getelementptr inbounds %struct.us_data, %struct.us_data* %118, i32 0, i32 5
  %120 = call i32 @set_bit(i32 %117, i32* %119)
  %121 = load i32, i32* @delay_use, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = call i32 @dev_dbg(%struct.device* %124, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %116
  %127 = load i32, i32* @system_freezable_wq, align 4
  %128 = load %struct.us_data*, %struct.us_data** %3, align 8
  %129 = getelementptr inbounds %struct.us_data, %struct.us_data* %128, i32 0, i32 4
  %130 = load i32, i32* @delay_use, align 4
  %131 = load i32, i32* @HZ, align 4
  %132 = mul nsw i32 %130, %131
  %133 = call i32 @queue_delayed_work(i32 %127, i32* %129, i32 %132)
  store i32 0, i32* %2, align 4
  br label %145

134:                                              ; preds = %113
  %135 = load %struct.us_data*, %struct.us_data** %3, align 8
  %136 = getelementptr inbounds %struct.us_data, %struct.us_data* %135, i32 0, i32 3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = call i32 @usb_autopm_put_interface_no_suspend(%struct.TYPE_5__* %137)
  br label %139

139:                                              ; preds = %134, %92, %74, %19
  %140 = load %struct.us_data*, %struct.us_data** %3, align 8
  %141 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %142 = load %struct.us_data*, %struct.us_data** %3, align 8
  %143 = call i32 @release_everything(%struct.us_data* %142)
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %126
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @us_to_host(%struct.us_data*) #1

declare dso_local i32 @get_pipes(%struct.us_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_stor_acquire_resources(%struct.us_data*) #1

declare dso_local i32 @usb_autopm_get_interface_no_resume(%struct.TYPE_5__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @scsi_add_host(%struct.TYPE_6__*, %struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @usb_autopm_put_interface_no_suspend(%struct.TYPE_5__*) #1

declare dso_local i32 @release_everything(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
