; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.max3421_hcd = type { i32, i64, i32 }

@PORT_C_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"port status 0x%08x has changes\0A\00", align 1
@MAX3421_RH_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @max3421_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max3421_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %8)
  store %struct.max3421_hcd* %9, %struct.max3421_hcd** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %10, i32 0, i32 2
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %46

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  store i8 0, i8* %19, align 1
  %20 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PORT_C_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  store i8 2, i8* %27, align 1
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %33 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 1, i32* %7, align 4
  %36 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %37 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAX3421_RH_SUSPENDED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %43 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %42)
  br label %44

44:                                               ; preds = %41, %26
  br label %45

45:                                               ; preds = %44, %18
  br label %46

46:                                               ; preds = %45, %17
  %47 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %48 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %47, i32 0, i32 2
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
