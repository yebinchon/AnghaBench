; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_eprx_stall_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_eprx_stall_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i64, i64, %struct.qe_udc* }
%struct.qe_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@USB_RHS_MASK = common dso_local global i32 0, align 4
@USB_RHS_STALL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i64 0, align 8
@USB_RHS_IGNORE_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*, i32)* @qe_eprx_stall_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_eprx_stall_change(%struct.qe_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.qe_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.qe_udc*, align 8
  store %struct.qe_ep* %0, %struct.qe_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qe_ep*, %struct.qe_ep** %3, align 8
  %9 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.qe_ep*, %struct.qe_ep** %3, align 8
  %12 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %11, i32 0, i32 2
  %13 = load %struct.qe_udc*, %struct.qe_udc** %12, align 8
  store %struct.qe_udc* %13, %struct.qe_udc** %7, align 8
  %14 = load %struct.qe_udc*, %struct.qe_udc** %7, align 8
  %15 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @in_be16(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @USB_RHS_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @USB_RHS_STALL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.qe_ep*, %struct.qe_ep** %3, align 8
  %34 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USB_DIR_IN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @USB_RHS_IGNORE_OUT, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.qe_udc*, %struct.qe_udc** %7, align 8
  %45 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @out_be16(i32* %50, i32 %51)
  ret i32 0
}

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
