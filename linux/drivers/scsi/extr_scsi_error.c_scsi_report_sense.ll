; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_report_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_report_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@SDEV_EVT_MAXBITS = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@SDEV_EVT_INQUIRY_CHANGE_REPORTED = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Inquiry data has changed\00", align 1
@SDEV_EVT_LUN_CHANGE_REPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [154 x i8] c"Warning! Received an indication that the LUN assignments on this target have changed. The Linux SCSI layer does not automatically remap LUN assignments.\0A\00", align 1
@.str.2 = private unnamed_addr constant [161 x i8] c"Warning! Received an indication that the operating parameters on this target have changed. The Linux SCSI layer does not automatically adjust these parameters.\0A\00", align 1
@SDEV_EVT_SOFT_THRESHOLD_REACHED_REPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"Warning! Received an indication that the LUN reached a thin provisioning soft threshold.\0A\00", align 1
@SDEV_EVT_POWER_ON_RESET_OCCURRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Power-on or device reset occurred\0A\00", align 1
@SDEV_EVT_MODE_PARAMETER_CHANGE_REPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Mode parameters changed\00", align 1
@SDEV_EVT_ALUA_STATE_CHANGE_REPORTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Asymmetric access state changed\00", align 1
@SDEV_EVT_CAPACITY_CHANGE_REPORTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Capacity data has changed\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Parameters changed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, %struct.scsi_sense_hdr*)* @scsi_report_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_report_sense(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_sense_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %4, align 8
  %6 = load i32, i32* @SDEV_EVT_MAXBITS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UNIT_ATTENTION, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %138

12:                                               ; preds = %2
  %13 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 63
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @SDEV_EVT_INQUIRY_CHANGE_REPORTED, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @KERN_WARNING, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = call i32 @sdev_printk(i32 %24, %struct.scsi_device* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %55

27:                                               ; preds = %17, %12
  %28 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 63
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 14
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @SDEV_EVT_LUN_CHANGE_REPORTED, align 4
  store i32 %38, i32* %5, align 4
  %39 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %40 = call i32 @scsi_report_lun_change(%struct.scsi_device* %39)
  %41 = load i32, i32* @KERN_WARNING, align 4
  %42 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %43 = call i32 @sdev_printk(i32 %41, %struct.scsi_device* %42, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.1, i64 0, i64 0))
  br label %54

44:                                               ; preds = %32, %27
  %45 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %46 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 63
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @KERN_WARNING, align 4
  %51 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %52 = call i32 @sdev_printk(i32 %50, %struct.scsi_device* %51, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %37
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 56
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 7
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @SDEV_EVT_SOFT_THRESHOLD_REACHED_REPORTED, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @KERN_WARNING, align 4
  %68 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %69 = call i32 @sdev_printk(i32 %67, %struct.scsi_device* %68, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %60, %55
  %71 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 41
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @SDEV_EVT_POWER_ON_RESET_OCCURRED, align 4
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @KERN_WARNING, align 4
  %78 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %79 = call i32 @sdev_printk(i32 %77, %struct.scsi_device* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 42
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %87 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* @SDEV_EVT_MODE_PARAMETER_CHANGE_REPORTED, align 4
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @KERN_WARNING, align 4
  %93 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %94 = call i32 @sdev_printk(i32 %92, %struct.scsi_device* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %137

95:                                               ; preds = %85, %80
  %96 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %97 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 42
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 6
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* @SDEV_EVT_ALUA_STATE_CHANGE_REPORTED, align 4
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @KERN_WARNING, align 4
  %108 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %109 = call i32 @sdev_printk(i32 %107, %struct.scsi_device* %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %136

110:                                              ; preds = %100, %95
  %111 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %112 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 42
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %117 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 9
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i32, i32* @SDEV_EVT_CAPACITY_CHANGE_REPORTED, align 4
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* @KERN_WARNING, align 4
  %123 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %124 = call i32 @sdev_printk(i32 %122, %struct.scsi_device* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %135

125:                                              ; preds = %115, %110
  %126 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %127 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 42
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @KERN_WARNING, align 4
  %132 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %133 = call i32 @sdev_printk(i32 %131, %struct.scsi_device* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %125
  br label %135

135:                                              ; preds = %134, %120
  br label %136

136:                                              ; preds = %135, %105
  br label %137

137:                                              ; preds = %136, %90
  br label %138

138:                                              ; preds = %137, %2
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @SDEV_EVT_MAXBITS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %145 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @set_bit(i32 %143, i32 %146)
  %148 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %149 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %148, i32 0, i32 0
  %150 = call i32 @schedule_work(i32* %149)
  br label %151

151:                                              ; preds = %142, %138
  ret void
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

declare dso_local i32 @scsi_report_lun_change(%struct.scsi_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
