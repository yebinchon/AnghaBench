; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_handle_new_lsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_handle_new_lsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moschip_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.async_icount }
%struct.async_icount = type { i32, i32, i32, i32 }

@SERIAL_LSR_BI = common dso_local global i32 0, align 4
@SERIAL_LSR_OE = common dso_local global i32 0, align 4
@SERIAL_LSR_PE = common dso_local global i32 0, align 4
@SERIAL_LSR_FE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moschip_port*, i32)* @mos7840_handle_new_lsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7840_handle_new_lsr(%struct.moschip_port* %0, i32 %1) #0 {
  %3 = alloca %struct.moschip_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.async_icount*, align 8
  store %struct.moschip_port* %0, %struct.moschip_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SERIAL_LSR_BI, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @SERIAL_LSR_OE, align 4
  %12 = load i32, i32* @SERIAL_LSR_BI, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %18 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.async_icount* %20, %struct.async_icount** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SERIAL_LSR_BI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.async_icount*, %struct.async_icount** %5, align 8
  %27 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SERIAL_LSR_OE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.async_icount*, %struct.async_icount** %5, align 8
  %37 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SERIAL_LSR_PE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.async_icount*, %struct.async_icount** %5, align 8
  %47 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SERIAL_LSR_FE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.async_icount*, %struct.async_icount** %5, align 8
  %57 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
