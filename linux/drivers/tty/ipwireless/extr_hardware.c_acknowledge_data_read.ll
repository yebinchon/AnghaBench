; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_acknowledge_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_acknowledge_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@HW_VERSION_1 = common dso_local global i64 0, align 8
@DCR_RXDONE = common dso_local global i32 0, align 4
@IODCR = common dso_local global i64 0, align 8
@MEMRX_PCINTACKK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_hardware*)* @acknowledge_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acknowledge_data_read(%struct.ipw_hardware* %0) #0 {
  %2 = alloca %struct.ipw_hardware*, align 8
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %2, align 8
  %3 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %4 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @HW_VERSION_1, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @DCR_RXDONE, align 4
  %10 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IODCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outw(i32 %9, i64 %14)
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @MEMRX_PCINTACKK, align 4
  %18 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %19 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @writew(i32 %17, i32* %21)
  br label %23

23:                                               ; preds = %16, %8
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @writew(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
