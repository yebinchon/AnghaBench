; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_ep_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_ep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.s3c_hsudc_ep = type { i32, %struct.TYPE_2__, i32, %struct.s3c_hsudc* }
%struct.TYPE_2__ = type { i32* }
%struct.s3c_hsudc = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@S3C_EIER = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @s3c_hsudc_ep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_ep_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.s3c_hsudc_ep*, align 8
  %5 = alloca %struct.s3c_hsudc*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = call %struct.s3c_hsudc_ep* @our_ep(%struct.usb_ep* %7)
  store %struct.s3c_hsudc_ep* %8, %struct.s3c_hsudc_ep** %4, align 8
  %9 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %10 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %9, i32 0, i32 3
  %11 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  store %struct.s3c_hsudc* %11, %struct.s3c_hsudc** %5, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %13 = icmp ne %struct.usb_ep* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %16 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %14
  %24 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %5, align 8
  %25 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %5, align 8
  %29 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %30 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @set_index(%struct.s3c_hsudc* %28, i32 %31)
  %33 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %34 = call i32 @ep_index(%struct.s3c_hsudc_ep* %33)
  %35 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %5, align 8
  %36 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @S3C_EIER, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @__clear_bit(i32 %34, i64 %39)
  %41 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %42 = load i32, i32* @ESHUTDOWN, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @s3c_hsudc_nuke_ep(%struct.s3c_hsudc_ep* %41, i32 %43)
  %45 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %46 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %4, align 8
  %49 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %5, align 8
  %51 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %23, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.s3c_hsudc_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_index(%struct.s3c_hsudc*, i32) #1

declare dso_local i32 @__clear_bit(i32, i64) #1

declare dso_local i32 @ep_index(%struct.s3c_hsudc_ep*) #1

declare dso_local i32 @s3c_hsudc_nuke_ep(%struct.s3c_hsudc_ep*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
