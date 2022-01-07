; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_alloc_usb_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_alloc_usb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i8*, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @vmk80xx_alloc_usb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_alloc_usb_buffers(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.vmk80xx_private*, align 8
  %5 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %7, align 8
  store %struct.vmk80xx_private* %8, %struct.vmk80xx_private** %4, align 8
  %9 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %10 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @usb_endpoint_maxp(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i64 %13, i32 %14)
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %17 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %19 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %27 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @usb_endpoint_maxp(i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i64 %30, i32 %31)
  %33 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %34 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %36 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @usb_endpoint_maxp(i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
