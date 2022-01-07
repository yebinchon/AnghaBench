; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_sr_check_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_sr_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.scsi_cd* }
%struct.scsi_cd = type { i32, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@CDSL_CURRENT = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@SR_TIMEOUT = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"GET_EVENT and TUR disagree continuously, suppress GET_EVENT events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32, i32)* @sr_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_check_events(%struct.cdrom_device_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_cd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_sense_hdr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %14 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %13, i32 0, i32 0
  %15 = load %struct.scsi_cd*, %struct.scsi_cd** %14, align 8
  store %struct.scsi_cd* %15, %struct.scsi_cd** %8, align 8
  %16 = load i32, i32* @CDSL_CURRENT, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %160

20:                                               ; preds = %3
  %21 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %22 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @sr_get_events(%struct.TYPE_3__* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %29 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %33 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %66

41:                                               ; preds = %20
  %42 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %43 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %42, i32 0, i32 5
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %53 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %52, i32 0, i32 5
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %57 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %48, %41
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %160

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %68 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %71 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %70, i32 0, i32 5
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* @SR_TIMEOUT, align 4
  %74 = load i32, i32* @MAX_RETRIES, align 4
  %75 = call i32 @scsi_test_unit_ready(%struct.TYPE_3__* %72, i32 %73, i32 %74, %struct.scsi_sense_hdr* %10)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @scsi_status_is_good(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %66
  %80 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %10)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 58
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i1 [ false, %79 ], [ %85, %82 ]
  br label %88

88:                                               ; preds = %86, %66
  %89 = phi i1 [ true, %66 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  %91 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %92 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %95 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %100 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %99, i32 0, i32 5
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %88
  %104 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %105 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %104, i32 0, i32 5
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %115 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %114, i32 0, i32 5
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  %118 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %119 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %110, %103
  %121 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %122 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %4, align 4
  br label %160

127:                                              ; preds = %120
  %128 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %129 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %127
  %133 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %134 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %139 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = icmp sgt i64 %140, 8
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* @KERN_WARNING, align 4
  %145 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %146 = call i32 @sr_printk(i32 %144, %struct.scsi_cd* %145, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %147 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %148 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %143, %137
  br label %153

150:                                              ; preds = %132
  %151 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %152 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %150, %149
  br label %154

154:                                              ; preds = %153, %127
  %155 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %156 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  %157 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %158 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %154, %125, %63, %19
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @sr_get_events(%struct.TYPE_3__*) #1

declare dso_local i32 @scsi_test_unit_ready(%struct.TYPE_3__*, i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_status_is_good(i32) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sr_printk(i32, %struct.scsi_cd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
