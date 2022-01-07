; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_ci_handle_vbus_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_ci_handle_vbus_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i64, i32 }

@OTGSC_BSV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ci_handle_vbus_change(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %10 = load i32, i32* @OTGSC_BSV, align 4
  %11 = call i64 @hw_read_otgsc(%struct.ci_hdrc* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %15 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %20 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %19, i32 0, i32 0
  %21 = call i32 @usb_gadget_vbus_connect(i32* %20)
  br label %37

22:                                               ; preds = %13, %8
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %24 = load i32, i32* @OTGSC_BSV, align 4
  %25 = call i64 @hw_read_otgsc(%struct.ci_hdrc* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %29 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %34 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %33, i32 0, i32 0
  %35 = call i32 @usb_gadget_vbus_disconnect(i32* %34)
  br label %36

36:                                               ; preds = %32, %27, %22
  br label %37

37:                                               ; preds = %7, %36, %18
  ret void
}

declare dso_local i64 @hw_read_otgsc(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @usb_gadget_vbus_connect(i32*) #1

declare dso_local i32 @usb_gadget_vbus_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
