; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dwc3 = type { i32, i32, i32, %struct.usb_gadget_driver*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@dwc3_interrupt = common dso_local global i32 0, align 4
@dwc3_thread_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to request irq #%d --> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s is already bound to %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @dwc3_gadget_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.dwc3*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %11 = call %struct.dwc3* @gadget_to_dwc(%struct.usb_gadget* %10)
  store %struct.dwc3* %11, %struct.dwc3** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @dwc3_interrupt, align 4
  %17 = load i32, i32* @dwc3_thread_interrupt, align 4
  %18 = load i32, i32* @IRQF_SHARED, align 4
  %19 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @request_threaded_irq(i32 %15, i32 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %27 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  br label %83

32:                                               ; preds = %2
  %33 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %34 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 1
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 3
  %39 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %38, align 8
  %40 = icmp ne %struct.usb_gadget_driver* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %43 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %46 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %50 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %49, i32 0, i32 3
  %51 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %50, align 8
  %52 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %75

58:                                               ; preds = %32
  %59 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %60 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %61 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %60, i32 0, i32 3
  store %struct.usb_gadget_driver* %59, %struct.usb_gadget_driver** %61, align 8
  %62 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @pm_runtime_active(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %69 = call i32 @__dwc3_gadget_start(%struct.dwc3* %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %72 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %71, i32 0, i32 1
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  store i32 0, i32* %3, align 4
  br label %85

75:                                               ; preds = %41
  %76 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %77 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %76, i32 0, i32 1
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %82 = call i32 @free_irq(i32 %80, %struct.dwc3* %81)
  br label %83

83:                                               ; preds = %75, %25
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %70
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.dwc3* @gadget_to_dwc(%struct.usb_gadget*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @pm_runtime_active(i32) #1

declare dso_local i32 @__dwc3_gadget_start(%struct.dwc3*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
