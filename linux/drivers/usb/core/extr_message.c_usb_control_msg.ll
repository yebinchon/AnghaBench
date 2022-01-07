; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_control_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_ctrlrequest = type { i8*, i8*, i8*, i8*, i8* }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_QUIRK_DELAY_CTRL_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_control_msg(%struct.usb_device* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.usb_ctrlrequest*, align 8
  %21 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call %struct.usb_ctrlrequest* @kmalloc(i32 40, i32 %22)
  store %struct.usb_ctrlrequest* %23, %struct.usb_ctrlrequest** %20, align 8
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %25 = icmp ne %struct.usb_ctrlrequest* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %9
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %67

29:                                               ; preds = %9
  %30 = load i8*, i8** %14, align 8
  %31 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %32 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %35 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %43 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %18, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %47 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @usb_internal_control_msg(%struct.usb_device* %48, i32 %49, %struct.usb_ctrlrequest* %50, i8* %51, i32 %52, i32 %53)
  store i32 %54, i32* %21, align 4
  %55 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @USB_QUIRK_DELAY_CTRL_MSG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %29
  %62 = call i32 @msleep(i32 200)
  br label %63

63:                                               ; preds = %61, %29
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %65 = call i32 @kfree(%struct.usb_ctrlrequest* %64)
  %66 = load i32, i32* %21, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %26
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_internal_control_msg(%struct.usb_device*, i32, %struct.usb_ctrlrequest*, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
