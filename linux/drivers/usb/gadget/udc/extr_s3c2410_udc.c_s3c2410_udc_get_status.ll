; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_udc = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_IN_CSR1_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP0_CSR_SENDSTL = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR1_SENDSTL = common dso_local global i32 0, align 4
@S3C2410_UDC_OUT_CSR1_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_OCSR1_SENDSTL = common dso_local global i32 0, align 4
@S3C2410_UDC_EP0_FIFO_REG = common dso_local global i32 0, align 4
@base_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c2410_udc*, %struct.usb_ctrlrequest*)* @s3c2410_udc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_udc_get_status(%struct.s3c2410_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c2410_udc*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s3c2410_udc* %0, %struct.s3c2410_udc** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 127
  store i32 %12, i32* %7, align 4
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @USB_RECIP_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %72 [
    i32 128, label %23
    i32 130, label %24
    i32 129, label %28
  ]

23:                                               ; preds = %2
  br label %73

24:                                               ; preds = %2
  %25 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %4, align 8
  %26 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %73

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %33 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %28
  store i32 1, i32* %3, align 4
  br label %85

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %42 = call i32 @udc_write(i32 0, i32 %41)
  %43 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %44 = call i32 @udc_read(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @S3C2410_UDC_EP0_CSR_SENDSTL, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %6, align 4
  br label %67

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %51 = call i32 @udc_write(i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %56 = call i32 @udc_read(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @S3C2410_UDC_ICSR1_SENDSTL, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %48
  %61 = load i32, i32* @S3C2410_UDC_OUT_CSR1_REG, align 4
  %62 = call i32 @udc_read(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @S3C2410_UDC_OCSR1_SENDSTL, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  store i32 %71, i32* %6, align 4
  br label %73

72:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %85

73:                                               ; preds = %67, %24, %23
  %74 = call i32 @udelay(i32 5)
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 255
  %77 = load i32, i32* @S3C2410_UDC_EP0_FIFO_REG, align 4
  %78 = call i32 @udc_write(i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 8
  %81 = load i32, i32* @S3C2410_UDC_EP0_FIFO_REG, align 4
  %82 = call i32 @udc_write(i32 %80, i32 %81)
  %83 = load i32, i32* @base_addr, align 4
  %84 = call i32 @s3c2410_udc_set_ep0_de_in(i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %73, %72, %36
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @udc_read(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @s3c2410_udc_set_ep0_de_in(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
