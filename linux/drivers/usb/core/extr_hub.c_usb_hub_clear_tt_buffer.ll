; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_clear_tt_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_clear_tt_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32, i32, i64, i32, %struct.usb_tt* }
%struct.usb_tt = type { i32, i32, i32, i64 }
%struct.usb_tt_clear = type { i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't save CLEAR_TT_BUFFER state\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hub_clear_tt_buffer(%struct.urb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_tt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.usb_tt_clear*, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  %9 = load %struct.urb*, %struct.urb** %3, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 2
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %4, align 8
  %12 = load %struct.urb*, %struct.urb** %3, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 4
  %17 = load %struct.usb_tt*, %struct.usb_tt** %16, align 8
  store %struct.usb_tt* %17, %struct.usb_tt** %6, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.usb_tt_clear* @kmalloc(i32 20, i32 %18)
  store %struct.usb_tt_clear* %19, %struct.usb_tt_clear** %8, align 8
  %20 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %21 = icmp eq %struct.usb_tt_clear* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 3
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %106

28:                                               ; preds = %1
  %29 = load %struct.usb_tt*, %struct.usb_tt** %6, align 8
  %30 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 1, %37 ]
  %40 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %41 = getelementptr inbounds %struct.usb_tt_clear, %struct.usb_tt_clear* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @usb_pipeendpoint(i32 %42)
  %44 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %45 = getelementptr inbounds %struct.usb_tt_clear, %struct.usb_tt_clear* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 4
  %51 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %52 = getelementptr inbounds %struct.usb_tt_clear, %struct.usb_tt_clear* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @usb_pipecontrol(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %38
  %59 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %60 = shl i32 %59, 11
  br label %64

61:                                               ; preds = %38
  %62 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %63 = shl i32 %62, 11
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %60, %58 ], [ %63, %61 ]
  %66 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %67 = getelementptr inbounds %struct.usb_tt_clear, %struct.usb_tt_clear* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @usb_pipein(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %75 = getelementptr inbounds %struct.usb_tt_clear, %struct.usb_tt_clear* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, 32768
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %64
  %79 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %80 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bus_to_hcd(i32 %81)
  %83 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %84 = getelementptr inbounds %struct.usb_tt_clear, %struct.usb_tt_clear* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.urb*, %struct.urb** %3, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %89 = getelementptr inbounds %struct.usb_tt_clear, %struct.usb_tt_clear* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.usb_tt*, %struct.usb_tt** %6, align 8
  %91 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %90, i32 0, i32 0
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load %struct.usb_tt_clear*, %struct.usb_tt_clear** %8, align 8
  %95 = getelementptr inbounds %struct.usb_tt_clear, %struct.usb_tt_clear* %94, i32 0, i32 2
  %96 = load %struct.usb_tt*, %struct.usb_tt** %6, align 8
  %97 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %96, i32 0, i32 2
  %98 = call i32 @list_add_tail(i32* %95, i32* %97)
  %99 = load %struct.usb_tt*, %struct.usb_tt** %6, align 8
  %100 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %99, i32 0, i32 1
  %101 = call i32 @schedule_work(i32* %100)
  %102 = load %struct.usb_tt*, %struct.usb_tt** %6, align 8
  %103 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %102, i32 0, i32 0
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %78, %22
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.usb_tt_clear* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @bus_to_hcd(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
