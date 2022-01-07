; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_hub_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_hub_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.dummy_hcd = type { i32, i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@PORT_C_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"port status 0x%08x has changes\0A\00", align 1
@DUMMY_RH_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @dummy_hub_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_hub_status(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dummy_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.dummy_hcd* @hcd_to_dummy_hcd(%struct.usb_hcd* %8)
  store %struct.dummy_hcd* %9, %struct.dummy_hcd** %5, align 8
  %10 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %72

20:                                               ; preds = %2
  %21 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %22 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %28 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @time_after_eq(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load i32, i32* @USB_PORT_STAT_C_SUSPEND, align 4
  %34 = shl i32 %33, 16
  %35 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %36 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %42 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %46 = call i32 @set_link_state(%struct.dummy_hcd* %45)
  br label %47

47:                                               ; preds = %32, %25, %20
  %48 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %49 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PORT_C_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  store i8 2, i8* %55, align 1
  %56 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %57 = call i32 @dummy_dev(%struct.dummy_hcd* %56)
  %58 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %59 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 1, i32* %7, align 4
  %62 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %63 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DUMMY_RH_SUSPENDED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %69 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %68)
  br label %70

70:                                               ; preds = %67, %54
  br label %71

71:                                               ; preds = %70, %47
  br label %72

72:                                               ; preds = %71, %19
  %73 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %74 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local %struct.dummy_hcd* @hcd_to_dummy_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @set_link_state(%struct.dummy_hcd*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dummy_dev(%struct.dummy_hcd*) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
