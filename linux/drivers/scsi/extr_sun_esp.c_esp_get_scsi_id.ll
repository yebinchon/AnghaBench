; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_get_scsi_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_get_scsi_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"initiator-id\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"scsi-initiator-id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.platform_device*)* @esp_get_scsi_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_get_scsi_id(%struct.esp* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %7 = load %struct.esp*, %struct.esp** %3, align 8
  %8 = getelementptr inbounds %struct.esp, %struct.esp* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.platform_device* @to_platform_device(i32 %9)
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i8* @of_getintprop_default(%struct.device_node* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 255)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.esp*, %struct.esp** %3, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.esp*, %struct.esp** %3, align 8
  %21 = getelementptr inbounds %struct.esp, %struct.esp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 255
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i8* @of_getintprop_default(%struct.device_node* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 255)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.esp*, %struct.esp** %3, align 8
  %30 = getelementptr inbounds %struct.esp, %struct.esp* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.esp*, %struct.esp** %3, align 8
  %32 = getelementptr inbounds %struct.esp, %struct.esp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %45

36:                                               ; preds = %25
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.device_node*, %struct.device_node** %39, align 8
  %41 = call i8* @of_getintprop_default(%struct.device_node* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.esp*, %struct.esp** %3, align 8
  %44 = getelementptr inbounds %struct.esp, %struct.esp* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %36, %35, %24
  %46 = load %struct.esp*, %struct.esp** %3, align 8
  %47 = getelementptr inbounds %struct.esp, %struct.esp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.esp*, %struct.esp** %3, align 8
  %50 = getelementptr inbounds %struct.esp, %struct.esp* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.esp*, %struct.esp** %3, align 8
  %54 = getelementptr inbounds %struct.esp, %struct.esp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 1, %55
  %57 = load %struct.esp*, %struct.esp** %3, align 8
  %58 = getelementptr inbounds %struct.esp, %struct.esp* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i8* @of_getintprop_default(%struct.device_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
