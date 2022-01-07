; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_request_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_ep = type { i64, i32, %struct.isp1760_udc* }
%struct.isp1760_udc = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.isp1760_request = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32 (i32*, %struct.TYPE_4__*)* }

@.str = private unnamed_addr constant [38 x i8] c"completing request %p with status %d\0A\00", align 1
@USB_DIR_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_ep*, %struct.isp1760_request*, i32)* @isp1760_udc_request_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_udc_request_complete(%struct.isp1760_ep* %0, %struct.isp1760_request* %1, i32 %2) #0 {
  %4 = alloca %struct.isp1760_ep*, align 8
  %5 = alloca %struct.isp1760_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isp1760_udc*, align 8
  %8 = alloca i64, align 8
  store %struct.isp1760_ep* %0, %struct.isp1760_ep** %4, align 8
  store %struct.isp1760_request* %1, %struct.isp1760_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %10 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %9, i32 0, i32 2
  %11 = load %struct.isp1760_udc*, %struct.isp1760_udc** %10, align 8
  store %struct.isp1760_udc* %11, %struct.isp1760_udc** %7, align 8
  %12 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %13 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %12, i32 0, i32 2
  %14 = load %struct.isp1760_udc*, %struct.isp1760_udc** %13, align 8
  %15 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.isp1760_request*, %struct.isp1760_request** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.isp1760_request* %19, i32 %20)
  %22 = load %struct.isp1760_request*, %struct.isp1760_request** %5, align 8
  %23 = getelementptr inbounds %struct.isp1760_request, %struct.isp1760_request* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.isp1760_request*, %struct.isp1760_request** %5, align 8
  %26 = getelementptr inbounds %struct.isp1760_request, %struct.isp1760_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.isp1760_request*, %struct.isp1760_request** %5, align 8
  %29 = getelementptr inbounds %struct.isp1760_request, %struct.isp1760_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32 (i32*, %struct.TYPE_4__*)*, i32 (i32*, %struct.TYPE_4__*)** %30, align 8
  %32 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %33 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %32, i32 0, i32 1
  %34 = load %struct.isp1760_request*, %struct.isp1760_request** %5, align 8
  %35 = getelementptr inbounds %struct.isp1760_request, %struct.isp1760_request* %34, i32 0, i32 0
  %36 = call i32 %31(i32* %33, %struct.TYPE_4__* %35)
  %37 = load %struct.isp1760_udc*, %struct.isp1760_udc** %7, align 8
  %38 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %37, i32 0, i32 1
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %3
  %44 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %45 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.isp1760_udc*, %struct.isp1760_udc** %7, align 8
  %50 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @USB_DIR_OUT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %56 = load i64, i64* @USB_DIR_OUT, align 8
  %57 = call i32 @isp1760_udc_ctrl_send_status(%struct.isp1760_ep* %55, i64 %56)
  br label %58

58:                                               ; preds = %54, %48, %43, %3
  %59 = load %struct.isp1760_udc*, %struct.isp1760_udc** %7, align 8
  %60 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %59, i32 0, i32 1
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.isp1760_request*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @isp1760_udc_ctrl_send_status(%struct.isp1760_ep*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
