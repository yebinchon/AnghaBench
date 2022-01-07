; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_disable_fifo_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_disable_fifo_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_ep = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@FOTG210_DMISGR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_ep*)* @fotg210_disable_fifo_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_disable_fifo_int(%struct.fotg210_ep* %0) #0 {
  %2 = alloca %struct.fotg210_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.fotg210_ep* %0, %struct.fotg210_ep** %2, align 8
  %4 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %5 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FOTG210_DMISGR1, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @ioread32(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %13 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %18 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @DMISGR1_MF_IN_INT(i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %26 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i32 @DMISGR1_MF_OUTSPK_INT(i64 %28)
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %35 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FOTG210_DMISGR1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @iowrite32(i32 %33, i64 %40)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @DMISGR1_MF_IN_INT(i64) #1

declare dso_local i32 @DMISGR1_MF_OUTSPK_INT(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
