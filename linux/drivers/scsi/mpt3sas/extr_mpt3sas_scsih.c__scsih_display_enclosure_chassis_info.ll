; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_display_enclosure_chassis_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_display_enclosure_chassis_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._sas_device = type { i64, i8*, i32, i64, i32, i32, i64 }
%struct.scsi_device = type { i32 }
%struct.scsi_target = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"enclosure logical id (0x%016llx), slot(%d) \0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"enclosure level(0x%04x), connector name( %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"chassis slot(0x%04x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"enclosure logical id(0x%016llx), slot(%d) \0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"enclosure logical id(0x%016llx), slot(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct._sas_device*, %struct.scsi_device*, %struct.scsi_target*)* @_scsih_display_enclosure_chassis_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_display_enclosure_chassis_info(%struct.MPT3SAS_ADAPTER* %0, %struct._sas_device* %1, %struct.scsi_device* %2, %struct.scsi_target* %3) #0 {
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca %struct._sas_device*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.scsi_target*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %5, align 8
  store %struct._sas_device* %1, %struct._sas_device** %6, align 8
  store %struct.scsi_device* %2, %struct.scsi_device** %7, align 8
  store %struct.scsi_target* %3, %struct.scsi_target** %8, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %10 = icmp ne %struct.scsi_device* %9, null
  br i1 %10, label %11, label %59

11:                                               ; preds = %4
  %12 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %13 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %19 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %20 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %23 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, %struct.scsi_device*, i8*, i64, ...) @sdev_printk(i32 %17, %struct.scsi_device* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %24)
  br label %26

26:                                               ; preds = %16, %11
  %27 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %28 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load i32, i32* @KERN_INFO, align 4
  %36 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %37 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %38 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %42 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, %struct.scsi_device*, i8*, i64, ...) @sdev_printk(i32 %35, %struct.scsi_device* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %40, i8* %43)
  br label %45

45:                                               ; preds = %34, %26
  %46 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %47 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @KERN_INFO, align 4
  %52 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %53 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %54 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = call i32 (i32, %struct.scsi_device*, i8*, i64, ...) @sdev_printk(i32 %51, %struct.scsi_device* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %50, %45
  br label %155

59:                                               ; preds = %4
  %60 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %61 = icmp ne %struct.scsi_target* %60, null
  br i1 %61, label %62, label %110

62:                                               ; preds = %59
  %63 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %64 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %70 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %71 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %74 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, %struct.scsi_target*, i8*, i64, ...) @starget_printk(i32 %68, %struct.scsi_target* %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %72, i32 %75)
  br label %77

77:                                               ; preds = %67, %62
  %78 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %79 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load i32, i32* @KERN_INFO, align 4
  %87 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %88 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %89 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %93 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, %struct.scsi_target*, i8*, i64, ...) @starget_printk(i32 %86, %struct.scsi_target* %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %91, i8* %94)
  br label %96

96:                                               ; preds = %85, %77
  %97 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %98 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i32, i32* @KERN_INFO, align 4
  %103 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %104 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %105 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = call i32 (i32, %struct.scsi_target*, i8*, i64, ...) @starget_printk(i32 %102, %struct.scsi_target* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  br label %109

109:                                              ; preds = %101, %96
  br label %154

110:                                              ; preds = %59
  %111 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %112 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %117 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %118 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %122 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, i32, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %115, %110
  %126 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %127 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %125
  %134 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %135 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %136 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %139 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, i32, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %134, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %137, i8* %140)
  br label %142

142:                                              ; preds = %133, %125
  %143 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %144 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %149 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %150 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, i32, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %147, %142
  br label %154

154:                                              ; preds = %153, %109
  br label %155

155:                                              ; preds = %154, %58
  ret void
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i64, ...) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*, i64, ...) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
