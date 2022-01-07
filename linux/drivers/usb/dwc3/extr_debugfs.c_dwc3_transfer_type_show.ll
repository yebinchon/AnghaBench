; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_transfer_type_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_transfer_type_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dwc3_ep* }
%struct.dwc3_ep = type { i32, %struct.TYPE_2__, %struct.dwc3* }
%struct.TYPE_2__ = type { i32 }
%struct.dwc3 = type { i32 }

@DWC3_EP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"control\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"isochronous\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bulk\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dwc3_transfer_type_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_transfer_type_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwc3_ep*, align 8
  %6 = alloca %struct.dwc3*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %9, align 8
  store %struct.dwc3_ep* %10, %struct.dwc3_ep** %5, align 8
  %11 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %12 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %11, i32 0, i32 2
  %13 = load %struct.dwc3*, %struct.dwc3** %12, align 8
  store %struct.dwc3* %13, %struct.dwc3** %6, align 8
  %14 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %19 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %26 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %55

33:                                               ; preds = %24
  %34 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %35 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_endpoint_type(i32 %37)
  switch i32 %38, label %51 [
    i32 130, label %39
    i32 128, label %42
    i32 131, label %45
    i32 129, label %48
  ]

39:                                               ; preds = %33
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %54

42:                                               ; preds = %33
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %54

45:                                               ; preds = %33
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %54

48:                                               ; preds = %33
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %54

51:                                               ; preds = %33
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48, %45, %42, %39
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %57 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

declare dso_local i32 @usb_endpoint_type(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
