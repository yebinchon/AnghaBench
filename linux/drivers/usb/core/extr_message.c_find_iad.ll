; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_find_iad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_find_iad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface_assoc_descriptor = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_config = type { %struct.usb_interface_assoc_descriptor** }

@USB_MAXIADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Interface #%d referenced by multiple IADs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_interface_assoc_descriptor* (%struct.usb_device*, %struct.usb_host_config*, i32)* @find_iad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_interface_assoc_descriptor* @find_iad(%struct.usb_device* %0, %struct.usb_host_config* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface_assoc_descriptor*, align 8
  %8 = alloca %struct.usb_interface_assoc_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_host_config* %1, %struct.usb_host_config** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.usb_interface_assoc_descriptor* null, %struct.usb_interface_assoc_descriptor** %7, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %69, %3
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @USB_MAXIADS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.usb_host_config*, %struct.usb_host_config** %5, align 8
  %18 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %17, i32 0, i32 0
  %19 = load %struct.usb_interface_assoc_descriptor**, %struct.usb_interface_assoc_descriptor*** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %19, i64 %21
  %23 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %22, align 8
  %24 = icmp ne %struct.usb_interface_assoc_descriptor* %23, null
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi i1 [ false, %12 ], [ %24, %16 ]
  br i1 %26, label %27, label %72

27:                                               ; preds = %25
  %28 = load %struct.usb_host_config*, %struct.usb_host_config** %5, align 8
  %29 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %28, i32 0, i32 0
  %30 = load %struct.usb_interface_assoc_descriptor**, %struct.usb_interface_assoc_descriptor*** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %30, i64 %32
  %34 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %33, align 8
  store %struct.usb_interface_assoc_descriptor* %34, %struct.usb_interface_assoc_descriptor** %8, align 8
  %35 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %8, align 8
  %36 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %69

40:                                               ; preds = %27
  %41 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %8, align 8
  %42 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %8, align 8
  %46 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = add nsw i32 %44, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %59 = icmp ne %struct.usb_interface_assoc_descriptor* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %8, align 8
  store %struct.usb_interface_assoc_descriptor* %61, %struct.usb_interface_assoc_descriptor** %7, align 8
  br label %67

62:                                               ; preds = %57
  %63 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %64 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %60
  br label %68

68:                                               ; preds = %67, %53, %40
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %12

72:                                               ; preds = %25
  %73 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  ret %struct.usb_interface_assoc_descriptor* %73
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
