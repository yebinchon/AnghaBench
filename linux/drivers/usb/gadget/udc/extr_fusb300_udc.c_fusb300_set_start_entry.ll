; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_fusb300_set_start_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_fusb300_set_start_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb300 = type { i32, i64, i64 }

@FUSB300_FIFO_ENTRY_NUM = common dso_local global i32 0, align 4
@FUSB300_EPSET1_START_ENTRY_MSK = common dso_local global i32 0, align 4
@FUSB300_MAX_FIFO_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"fifo entry is over the maximum number!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fusb300*, i32)* @fusb300_set_start_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fusb300_set_start_entry(%struct.fusb300* %0, i32 %1) #0 {
  %3 = alloca %struct.fusb300*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fusb300* %0, %struct.fusb300** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %8 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @FUSB300_OFFSET_EPSET1(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = call i32 @ioread32(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %15 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FUSB300_FIFO_ENTRY_NUM, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @FUSB300_EPSET1_START_ENTRY_MSK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @FUSB300_EPSET1_START_ENTRY(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %29 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @FUSB300_OFFSET_EPSET1(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @iowrite32(i32 %27, i64 %33)
  %35 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %36 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FUSB300_MAX_FIFO_ENTRY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %42 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %44 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %51

46:                                               ; preds = %2
  %47 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %48 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %40
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @FUSB300_OFFSET_EPSET1(i32) #1

declare dso_local i32 @FUSB300_EPSET1_START_ENTRY(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
