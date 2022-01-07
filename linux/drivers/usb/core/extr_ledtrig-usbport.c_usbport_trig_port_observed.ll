; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_port_observed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_port_observed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbport_trig_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.usb_device = type { i32 }
%struct.of_phandle_args = type { %struct.device_node* }

@.str = private unnamed_addr constant [16 x i8] c"trigger-sources\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"#trigger-source-cells\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to get trigger sources for %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Failed to get trigger source phandle at index %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbport_trig_data*, %struct.usb_device*, i32)* @usbport_trig_port_observed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbport_trig_port_observed(%struct.usbport_trig_data* %0, %struct.usb_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbport_trig_data*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.of_phandle_args, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usbport_trig_data* %0, %struct.usbport_trig_data** %5, align 8
  store %struct.usb_device* %1, %struct.usb_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %5, align 8
  %16 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %9, align 8
  %23 = load %struct.device_node*, %struct.device_node** %9, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

26:                                               ; preds = %3
  %27 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.device_node* @usb_of_get_device_node(%struct.usb_device* %27, i32 %28)
  store %struct.device_node* %29, %struct.device_node** %11, align 8
  %30 = load %struct.device_node*, %struct.device_node** %11, align 8
  %31 = icmp ne %struct.device_node* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %74

33:                                               ; preds = %26
  %34 = load %struct.device_node*, %struct.device_node** %11, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  %37 = call i32 @of_count_phandle_with_args(%struct.device_node* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = load %struct.device_node*, %struct.device_node** %9, align 8
  %43 = call i32 @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %42)
  store i32 0, i32* %4, align 4
  br label %74

44:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.device_node*, %struct.device_node** %9, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @of_parse_phandle_with_args(%struct.device_node* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51, %struct.of_phandle_args* %10)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58)
  br label %70

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %62 = load %struct.device_node*, %struct.device_node** %61, align 8
  %63 = call i32 @of_node_put(%struct.device_node* %62)
  %64 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %65 = load %struct.device_node*, %struct.device_node** %64, align 8
  %66 = load %struct.device_node*, %struct.device_node** %11, align 8
  %67 = icmp eq %struct.device_node* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %74

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %45

73:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %68, %40, %32, %25
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.device_node* @usb_of_get_device_node(%struct.usb_device*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
