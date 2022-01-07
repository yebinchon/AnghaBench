; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DWC2_L2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"resuming usb gadget %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_hsotg_resume(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %5 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %6 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DWC2_L2, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %11
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %21 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_info(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %28 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %27, i32 0, i32 1
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %32 = call i32 @dwc2_hsotg_core_init_disconnected(%struct.dwc2_hsotg* %31, i32 0)
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %16
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = call i32 @dwc2_enable_acg(%struct.dwc2_hsotg* %38)
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %41 = call i32 @dwc2_hsotg_core_connect(%struct.dwc2_hsotg* %40)
  br label %42

42:                                               ; preds = %37, %16
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %44 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %43, i32 0, i32 1
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %42, %11
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc2_hsotg_core_init_disconnected(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_enable_acg(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hsotg_core_connect(%struct.dwc2_hsotg*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
