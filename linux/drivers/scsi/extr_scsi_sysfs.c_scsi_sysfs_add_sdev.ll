; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_scsi_sysfs_add_sdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_scsi_sysfs_add_sdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__, %struct.TYPE_14__, %struct.scsi_target*, %struct.request_queue* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64* }
%struct.TYPE_14__ = type { i32 }
%struct.scsi_target = type { i32 }
%struct.request_queue = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to add device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to add class device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to register bsg queue, errno=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_sysfs_add_sdev(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.scsi_target*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 5
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 4
  %13 = load %struct.scsi_target*, %struct.scsi_target** %12, align 8
  store %struct.scsi_target* %13, %struct.scsi_target** %7, align 8
  %14 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %15 = call i32 @scsi_target_add(%struct.scsi_target* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %167

20:                                               ; preds = %1
  %21 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %22 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %21, i32 0, i32 0
  %23 = call i32 @transport_configure_device(i32* %22)
  %24 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 2
  %26 = call i32 @device_enable_async_suspend(%struct.TYPE_14__* %25)
  %27 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %28 = call i32 @scsi_autopm_get_target(%struct.scsi_target* %27)
  %29 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 2
  %31 = call i32 @pm_runtime_set_active(%struct.TYPE_14__* %30)
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 2
  %34 = call i32 @pm_runtime_forbid(%struct.TYPE_14__* %33)
  %35 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 2
  %37 = call i32 @pm_runtime_enable(%struct.TYPE_14__* %36)
  %38 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %39 = call i32 @scsi_autopm_put_target(%struct.scsi_target* %38)
  %40 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %41 = call i32 @scsi_autopm_get_device(%struct.scsi_device* %40)
  %42 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %43 = call i32 @scsi_dh_add_device(%struct.scsi_device* %42)
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 2
  %46 = call i32 @device_add(%struct.TYPE_14__* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %20
  %50 = load i32, i32* @KERN_INFO, align 4
  %51 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @sdev_printk(i32 %50, %struct.scsi_device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %167

55:                                               ; preds = %20
  %56 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 3
  %58 = call i32 @device_enable_async_suspend(%struct.TYPE_14__* %57)
  %59 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %59, i32 0, i32 3
  %61 = call i32 @device_add(%struct.TYPE_14__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load i32, i32* @KERN_INFO, align 4
  %66 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @sdev_printk(i32 %65, %struct.scsi_device* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 2
  %71 = call i32 @device_del(%struct.TYPE_14__* %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %167

73:                                               ; preds = %55
  %74 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %74, i32 0, i32 2
  %76 = call i32 @transport_add_device(%struct.TYPE_14__* %75)
  %77 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %78 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %80 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %80, i32 0, i32 2
  %82 = call i32 @bsg_scsi_register_queue(%struct.request_queue* %79, %struct.TYPE_14__* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load i32, i32* @KERN_INFO, align 4
  %87 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @sdev_printk(i32 %86, %struct.scsi_device* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %73
  %91 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %99, label %137

99:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %133, %99
  %101 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %102 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %101, i32 0, i32 1
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %100
  %114 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %115 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %114, i32 0, i32 2
  %116 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %117 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %116, i32 0, i32 1
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @device_create_file(%struct.TYPE_14__* %115, i64 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %113
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %167

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %100

136:                                              ; preds = %100
  br label %137

137:                                              ; preds = %136, %90
  %138 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %139 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %138, i32 0, i32 1
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %137
  %147 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %148 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %151 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %150, i32 0, i32 1
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @sysfs_create_groups(i32* %149, i64 %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %146
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* %2, align 4
  br label %167

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162, %137
  %164 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %165 = call i32 @scsi_autopm_put_device(%struct.scsi_device* %164)
  %166 = load i32, i32* %4, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %163, %160, %130, %64, %49, %18
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @scsi_target_add(%struct.scsi_target*) #1

declare dso_local i32 @transport_configure_device(i32*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.TYPE_14__*) #1

declare dso_local i32 @scsi_autopm_get_target(%struct.scsi_target*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @scsi_autopm_put_target(%struct.scsi_target*) #1

declare dso_local i32 @scsi_autopm_get_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_dh_add_device(%struct.scsi_device*) #1

declare dso_local i32 @device_add(%struct.TYPE_14__*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @device_del(%struct.TYPE_14__*) #1

declare dso_local i32 @transport_add_device(%struct.TYPE_14__*) #1

declare dso_local i32 @bsg_scsi_register_queue(%struct.request_queue*, %struct.TYPE_14__*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @sysfs_create_groups(i32*, i64) #1

declare dso_local i32 @scsi_autopm_put_device(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
