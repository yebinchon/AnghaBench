; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.vscsibk_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @scsiback_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiback_remove(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.vscsibk_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %5 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %4, i32 0, i32 0
  %6 = call %struct.vscsibk_info* @dev_get_drvdata(i32* %5)
  store %struct.vscsibk_info* %6, %struct.vscsibk_info** %3, align 8
  %7 = load %struct.vscsibk_info*, %struct.vscsibk_info** %3, align 8
  %8 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.vscsibk_info*, %struct.vscsibk_info** %3, align 8
  %13 = call i32 @scsiback_disconnect(%struct.vscsibk_info* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.vscsibk_info*, %struct.vscsibk_info** %3, align 8
  %16 = call i32 @scsiback_release_translation_entry(%struct.vscsibk_info* %15)
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %18 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %17, i32 0, i32 0
  %19 = call i32 @dev_set_drvdata(i32* %18, i32* null)
  ret i32 0
}

declare dso_local %struct.vscsibk_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @scsiback_disconnect(%struct.vscsibk_info*) #1

declare dso_local i32 @scsiback_release_translation_entry(%struct.vscsibk_info*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
