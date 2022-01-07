; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_reset_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_reset_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i64, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@USB_STATE_DEFAULT = common dso_local global i64 0, align 8
@USB_MAX_ENDPOINTS = common dso_local global i8 0, align 1
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*)* @reset_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_irq(%struct.qe_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca i8, align 1
  store %struct.qe_udc* %0, %struct.qe_udc** %3, align 8
  %5 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %6 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @USB_STATE_DEFAULT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %13 = call i32 @qe_usb_disable(%struct.qe_udc* %12)
  %14 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %15 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @out_8(i32* %17, i32 0)
  store i8 0, i8* %4, align 1
  br label %19

19:                                               ; preds = %40, %11
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @USB_MAX_ENDPOINTS, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %27 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %37 = load i8, i8* %4, align 1
  %38 = call i32 @qe_ep_reset(%struct.qe_udc* %36, i8 zeroext %37)
  br label %39

39:                                               ; preds = %35, %25
  br label %40

40:                                               ; preds = %39
  %41 = load i8, i8* %4, align 1
  %42 = add i8 %41, 1
  store i8 %42, i8* %4, align 1
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %45 = call i32 @reset_queues(%struct.qe_udc* %44)
  %46 = load i64, i64* @USB_STATE_DEFAULT, align 8
  %47 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %48 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %50 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %51 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @USB_DIR_OUT, align 4
  %53 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %54 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %56 = call i32 @qe_usb_enable(%struct.qe_udc* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @qe_usb_disable(%struct.qe_udc*) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @qe_ep_reset(%struct.qe_udc*, i8 zeroext) #1

declare dso_local i32 @reset_queues(%struct.qe_udc*) #1

declare dso_local i32 @qe_usb_enable(%struct.qe_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
