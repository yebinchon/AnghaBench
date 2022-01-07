; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_uhci_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_uhci_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.uhci_hcd = type { i32, i32, i32, i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @uhci_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uhci_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd* %8)
  store %struct.uhci_hcd* %9, %struct.uhci_hcd** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %15 = call i32 @uhci_scan_schedule(%struct.uhci_hcd* %14)
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %2
  br label %92

25:                                               ; preds = %19
  %26 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %27 = call i32 @uhci_check_ports(%struct.uhci_hcd* %26)
  %28 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @get_hub_status_data(%struct.uhci_hcd* %28, i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %90 [
    i32 128, label %34
    i32 131, label %46
    i32 130, label %53
    i32 129, label %66
  ]

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %39 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %34
  store i32 1, i32* %7, align 4
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %44 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %43)
  br label %45

45:                                               ; preds = %42, %37
  br label %91

46:                                               ; preds = %25
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %51 = call i32 @wakeup_rh(%struct.uhci_hcd* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %91

53:                                               ; preds = %25
  %54 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %55 = call i32 @any_ports_active(%struct.uhci_hcd* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %59 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %58, i32 0, i32 0
  store i32 129, i32* %59, align 8
  %60 = load i64, i64* @jiffies, align 8
  %61 = load i64, i64* @HZ, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %64 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %57, %53
  br label %91

66:                                               ; preds = %25
  %67 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %68 = call i32 @any_ports_active(%struct.uhci_hcd* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %72 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %71, i32 0, i32 0
  store i32 130, i32* %72, align 8
  br label %89

73:                                               ; preds = %66
  %74 = load i64, i64* @jiffies, align 8
  %75 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %76 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @time_after_eq(i64 %74, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %82 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %87 = call i32 @suspend_rh(%struct.uhci_hcd* %86, i32 131)
  br label %88

88:                                               ; preds = %85, %80, %73
  br label %89

89:                                               ; preds = %88, %70
  br label %91

90:                                               ; preds = %25
  br label %91

91:                                               ; preds = %90, %89, %65, %52, %45
  br label %92

92:                                               ; preds = %91, %24
  %93 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %94 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %93, i32 0, i32 1
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uhci_scan_schedule(%struct.uhci_hcd*) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @uhci_check_ports(%struct.uhci_hcd*) #1

declare dso_local i32 @get_hub_status_data(%struct.uhci_hcd*, i8*) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @wakeup_rh(%struct.uhci_hcd*) #1

declare dso_local i32 @any_ports_active(%struct.uhci_hcd*) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @suspend_rh(%struct.uhci_hcd*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
