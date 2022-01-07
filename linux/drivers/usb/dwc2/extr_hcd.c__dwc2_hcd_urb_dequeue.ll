; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, i32* }
%struct.dwc2_hsotg = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"DWC OTG HCD URB Dequeue\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"urb_dequeue\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"## urb->hcpriv is NULL ##\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Called usb_hcd_giveback_urb()\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"  urb->status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @_dwc2_hcd_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwc2_hcd_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc2_hsotg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = call %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd* %10)
  store %struct.dwc2_hsotg* %11, %struct.dwc2_hsotg** %7, align 8
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = call i32 @dwc2_dump_urb_info(%struct.usb_hcd* %16, %struct.urb* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %24 = load %struct.urb*, %struct.urb** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %23, %struct.urb* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %76

30:                                               ; preds = %3
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %76

40:                                               ; preds = %30
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %42 = load %struct.urb*, %struct.urb** %5, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @dwc2_hcd_urb_dequeue(%struct.dwc2_hsotg* %41, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %47 = load %struct.urb*, %struct.urb** %5, align 8
  %48 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %46, %struct.urb* %47)
  %49 = load %struct.urb*, %struct.urb** %5, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %56 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %59 = load %struct.urb*, %struct.urb** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %58, %struct.urb* %59, i32 %60)
  %62 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %63 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %66 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %70 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.urb*, %struct.urb** %5, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %40, %35, %29
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %77, i32 0, i32 0
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dwc2_dump_urb_info(%struct.usb_hcd*, %struct.urb*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @dwc2_hcd_urb_dequeue(%struct.dwc2_hsotg*, i32*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
