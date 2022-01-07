; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_read_mos_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_read_mos_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MOS_WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mos7720: usb_control_msg() failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32, i32, i32*)* @read_mos_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mos_reg(%struct.usb_serial* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 0
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  store %struct.usb_device* %20, %struct.usb_device** %10, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %22 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %21, i32 0)
  store i32 %22, i32* %11, align 4
  store i32 13, i32* %12, align 4
  store i32 192, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @get_reg_index(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @get_reg_value(i32 %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i32 1, i32 %28)
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %67

35:                                               ; preds = %4
  %36 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %44 = call i32 @usb_control_msg(%struct.usb_device* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %42, i32 1, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32*, i32** %16, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %63

51:                                               ; preds = %35
  %52 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 0
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %17, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32*, i32** %9, align 8
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %47
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %32
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @get_reg_index(i32) #1

declare dso_local i32 @get_reg_value(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
