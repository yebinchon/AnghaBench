; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32, %struct.TYPE_10__**, %struct.TYPE_9__**, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DWC2_L0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"suspending usb gadget %s\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_hsotg_suspend(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DWC2_L0, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

12:                                               ; preds = %1
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 7
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %99

17:                                               ; preds = %12
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %19 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %21, i32 0, i32 7
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %28, i32 0, i32 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %17
  %37 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %38 = call i32 @dwc2_hsotg_core_disconnect(%struct.dwc2_hsotg* %37)
  br label %39

39:                                               ; preds = %36, %17
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %41 = call i32 @dwc2_hsotg_disconnect(%struct.dwc2_hsotg* %40)
  %42 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %44 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %46, i32 0, i32 4
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %95, %39
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %50
  %57 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %58 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %57, i32 0, i32 3
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = icmp ne %struct.TYPE_9__* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %56
  %66 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %67 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %66, i32 0, i32 3
  %68 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %68, i64 %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = call i32 @dwc2_hsotg_ep_disable_lock(i32* %73)
  br label %75

75:                                               ; preds = %65, %56
  %76 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %77 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %78, i64 %80
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = icmp ne %struct.TYPE_10__* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %75
  %85 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %86 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %85, i32 0, i32 2
  %87 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %87, i64 %89
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = call i32 @dwc2_hsotg_ep_disable_lock(i32* %92)
  br label %94

94:                                               ; preds = %84, %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %50

98:                                               ; preds = %50
  br label %99

99:                                               ; preds = %98, %12
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %11
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc2_hsotg_core_disconnect(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hsotg_disconnect(%struct.dwc2_hsotg*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc2_hsotg_ep_disable_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
