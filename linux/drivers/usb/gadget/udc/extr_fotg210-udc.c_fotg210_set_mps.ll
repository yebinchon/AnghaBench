; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_set_mps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_set_mps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_ep = type { %struct.fotg210_udc* }
%struct.fotg210_udc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_ep*, i64, i64, i64)* @fotg210_set_mps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_set_mps(%struct.fotg210_ep* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.fotg210_ep*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fotg210_udc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.fotg210_ep* %0, %struct.fotg210_ep** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.fotg210_ep*, %struct.fotg210_ep** %5, align 8
  %13 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %12, i32 0, i32 0
  %14 = load %struct.fotg210_udc*, %struct.fotg210_udc** %13, align 8
  store %struct.fotg210_udc* %14, %struct.fotg210_udc** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @FOTG210_INEPMPSR(i64 %18)
  br label %23

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @FOTG210_OUTEPMPSR(i64 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i64 [ %19, %17 ], [ %22, %20 ]
  store i64 %24, i64* %11, align 8
  %25 = load %struct.fotg210_udc*, %struct.fotg210_udc** %9, align 8
  %26 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @ioread32(i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @INOUTEPMPSR_MPS(i64 %31)
  %33 = load i64, i64* %10, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.fotg210_udc*, %struct.fotg210_udc** %9, align 8
  %37 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @iowrite32(i64 %35, i64 %40)
  ret void
}

declare dso_local i64 @FOTG210_INEPMPSR(i64) #1

declare dso_local i64 @FOTG210_OUTEPMPSR(i64) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i64 @INOUTEPMPSR_MPS(i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
