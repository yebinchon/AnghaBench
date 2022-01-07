; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i32, i64*, i64*, i64, i64 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@disconnect = common dso_local global i32 0, align 4
@DWC2_L3 = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hsotg_disconnect(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %5 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %77

9:                                                ; preds = %1
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %63, %9
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %21, i32 0, i32 4
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %32 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %31, i32 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ESHUTDOWN, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @kill_all_requests(%struct.dwc2_hsotg* %30, i64 %37, i32 %39)
  br label %41

41:                                               ; preds = %29, %20
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %43 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %41
  %51 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %52 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @ESHUTDOWN, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i32 @kill_all_requests(%struct.dwc2_hsotg* %51, i64 %58, i32 %60)
  br label %62

62:                                               ; preds = %50, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %14

66:                                               ; preds = %14
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %68 = load i32, i32* @disconnect, align 4
  %69 = call i32 @call_gadget(%struct.dwc2_hsotg* %67, i32 %68)
  %70 = load i32, i32* @DWC2_L3, align 4
  %71 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %72 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %74 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %73, i32 0, i32 1
  %75 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %76 = call i32 @usb_gadget_set_state(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %66, %8
  ret void
}

declare dso_local i32 @kill_all_requests(%struct.dwc2_hsotg*, i64, i32) #1

declare dso_local i32 @call_gadget(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @usb_gadget_set_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
