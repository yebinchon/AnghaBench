; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_is_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_is_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i64 }

@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@USB_DR_MODE_OTG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_is_device(%struct.cdns3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3*, align 8
  store %struct.cdns3* %0, %struct.cdns3** %3, align 8
  %4 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %5 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %12 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %18 = call i64 @cdns3_get_id(%struct.cdns3* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %24

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %10
  br label %23

23:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @cdns3_get_id(%struct.cdns3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
