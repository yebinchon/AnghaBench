; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_ftdi = type { i32, %struct.TYPE_2__*, i64, i64, i64, i64, i32, %struct.usb_class_driver* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_class_driver = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"USB FTDI U132 jtag interface on minor %d now disconnected\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"USB FTDI U132 host controller interface now disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ftdi_elan_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_elan_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_class_driver*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.usb_ftdi* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.usb_ftdi* %7, %struct.usb_ftdi** %3, align 8
  %8 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %9 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %13 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %12, i32 0, i32 7
  %14 = load %struct.usb_class_driver*, %struct.usb_class_driver** %13, align 8
  %15 = icmp ne %struct.usb_class_driver* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %21 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %20, i32 0, i32 7
  %22 = load %struct.usb_class_driver*, %struct.usb_class_driver** %21, align 8
  store %struct.usb_class_driver* %22, %struct.usb_class_driver** %5, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %24 = call i32 @usb_set_intfdata(%struct.usb_interface* %23, i32* null)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %26 = load %struct.usb_class_driver*, %struct.usb_class_driver** %5, align 8
  %27 = call i32 @usb_deregister_dev(%struct.usb_interface* %25, %struct.usb_class_driver* %26)
  %28 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %29 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_info(i32* %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %73

34:                                               ; preds = %1
  %35 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %36 = call i32 @ftdi_status_cancel_work(%struct.usb_ftdi* %35)
  %37 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %38 = call i32 @ftdi_command_cancel_work(%struct.usb_ftdi* %37)
  %39 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %40 = call i32 @ftdi_response_cancel_work(%struct.usb_ftdi* %39)
  %41 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %42 = call i32 @ftdi_elan_abandon_completions(%struct.usb_ftdi* %41)
  %43 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %44 = call i32 @ftdi_elan_abandon_targets(%struct.usb_ftdi* %43)
  %45 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %46 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %34
  %50 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %51 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %50, i32 0, i32 6
  %52 = call i32 @platform_device_unregister(i32* %51)
  %53 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %54 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %56 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %58 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %60 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %49, %34
  %62 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %63 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %67 = call i32 @usb_set_intfdata(%struct.usb_interface* %66, i32* null)
  %68 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %69 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_info(i32* %71, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %61, %16
  %74 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %75 = call i32 @ftdi_elan_put_kref(%struct.usb_ftdi* %74)
  ret void
}

declare dso_local %struct.usb_ftdi* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @ftdi_status_cancel_work(%struct.usb_ftdi*) #1

declare dso_local i32 @ftdi_command_cancel_work(%struct.usb_ftdi*) #1

declare dso_local i32 @ftdi_response_cancel_work(%struct.usb_ftdi*) #1

declare dso_local i32 @ftdi_elan_abandon_completions(%struct.usb_ftdi*) #1

declare dso_local i32 @ftdi_elan_abandon_targets(%struct.usb_ftdi*) #1

declare dso_local i32 @platform_device_unregister(i32*) #1

declare dso_local i32 @ftdi_elan_put_kref(%struct.usb_ftdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
