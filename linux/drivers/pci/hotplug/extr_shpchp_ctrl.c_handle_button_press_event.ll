; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_ctrl.c_handle_button_press_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_ctrl.c_handle_button_press_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, %struct.TYPE_2__*, i32, i32, %struct.controller* }
%struct.TYPE_2__ = type { i32 (%struct.slot*, i32)*, i32 (%struct.slot*)*, i32 (%struct.slot*)*, i32 (%struct.slot*)*, i32 (%struct.slot*, i32*)* }
%struct.controller = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"PCI slot #%s - powering off due to button press\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"PCI slot #%s - powering on due to button press\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Button cancel on Slot(%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"PCI slot #%s - action canceled due to button press\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Button ignore on Slot(%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Not a valid state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slot*)* @handle_button_press_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_button_press_event(%struct.slot* %0) #0 {
  %2 = alloca %struct.slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %2, align 8
  %5 = load %struct.slot*, %struct.slot** %2, align 8
  %6 = getelementptr inbounds %struct.slot, %struct.slot* %5, i32 0, i32 4
  %7 = load %struct.controller*, %struct.controller** %6, align 8
  store %struct.controller* %7, %struct.controller** %4, align 8
  %8 = load %struct.slot*, %struct.slot** %2, align 8
  %9 = getelementptr inbounds %struct.slot, %struct.slot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %107 [
    i32 128, label %11
    i32 132, label %58
    i32 131, label %58
    i32 130, label %100
    i32 129, label %100
  ]

11:                                               ; preds = %1
  %12 = load %struct.slot*, %struct.slot** %2, align 8
  %13 = getelementptr inbounds %struct.slot, %struct.slot* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)** %15, align 8
  %17 = load %struct.slot*, %struct.slot** %2, align 8
  %18 = call i32 %16(%struct.slot* %17, i32* %3)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.slot*, %struct.slot** %2, align 8
  %23 = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 0
  store i32 132, i32* %23, align 8
  %24 = load %struct.controller*, %struct.controller** %4, align 8
  %25 = load %struct.slot*, %struct.slot** %2, align 8
  %26 = call i32 @slot_name(%struct.slot* %25)
  %27 = call i32 @ctrl_info(%struct.controller* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %35

28:                                               ; preds = %11
  %29 = load %struct.slot*, %struct.slot** %2, align 8
  %30 = getelementptr inbounds %struct.slot, %struct.slot* %29, i32 0, i32 0
  store i32 131, i32* %30, align 8
  %31 = load %struct.controller*, %struct.controller** %4, align 8
  %32 = load %struct.slot*, %struct.slot** %2, align 8
  %33 = call i32 @slot_name(%struct.slot* %32)
  %34 = call i32 @ctrl_info(%struct.controller* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.slot*, %struct.slot** %2, align 8
  %37 = getelementptr inbounds %struct.slot, %struct.slot* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32 (%struct.slot*)*, i32 (%struct.slot*)** %39, align 8
  %41 = load %struct.slot*, %struct.slot** %2, align 8
  %42 = call i32 %40(%struct.slot* %41)
  %43 = load %struct.slot*, %struct.slot** %2, align 8
  %44 = getelementptr inbounds %struct.slot, %struct.slot* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.slot*, i32)*, i32 (%struct.slot*, i32)** %46, align 8
  %48 = load %struct.slot*, %struct.slot** %2, align 8
  %49 = call i32 %47(%struct.slot* %48, i32 0)
  %50 = load %struct.slot*, %struct.slot** %2, align 8
  %51 = getelementptr inbounds %struct.slot, %struct.slot* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.slot*, %struct.slot** %2, align 8
  %54 = getelementptr inbounds %struct.slot, %struct.slot* %53, i32 0, i32 2
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 5, %55
  %57 = call i32 @queue_delayed_work(i32 %52, i32* %54, i32 %56)
  br label %110

58:                                               ; preds = %1, %1
  %59 = load %struct.controller*, %struct.controller** %4, align 8
  %60 = load %struct.slot*, %struct.slot** %2, align 8
  %61 = call i32 @slot_name(%struct.slot* %60)
  %62 = call i32 @ctrl_info(%struct.controller* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.slot*, %struct.slot** %2, align 8
  %64 = getelementptr inbounds %struct.slot, %struct.slot* %63, i32 0, i32 2
  %65 = call i32 @cancel_delayed_work(i32* %64)
  %66 = load %struct.slot*, %struct.slot** %2, align 8
  %67 = getelementptr inbounds %struct.slot, %struct.slot* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 132
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load %struct.slot*, %struct.slot** %2, align 8
  %72 = getelementptr inbounds %struct.slot, %struct.slot* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32 (%struct.slot*)*, i32 (%struct.slot*)** %74, align 8
  %76 = load %struct.slot*, %struct.slot** %2, align 8
  %77 = call i32 %75(%struct.slot* %76)
  br label %86

78:                                               ; preds = %58
  %79 = load %struct.slot*, %struct.slot** %2, align 8
  %80 = getelementptr inbounds %struct.slot, %struct.slot* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32 (%struct.slot*)*, i32 (%struct.slot*)** %82, align 8
  %84 = load %struct.slot*, %struct.slot** %2, align 8
  %85 = call i32 %83(%struct.slot* %84)
  br label %86

86:                                               ; preds = %78, %70
  %87 = load %struct.slot*, %struct.slot** %2, align 8
  %88 = getelementptr inbounds %struct.slot, %struct.slot* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.slot*, i32)*, i32 (%struct.slot*, i32)** %90, align 8
  %92 = load %struct.slot*, %struct.slot** %2, align 8
  %93 = call i32 %91(%struct.slot* %92, i32 0)
  %94 = load %struct.controller*, %struct.controller** %4, align 8
  %95 = load %struct.slot*, %struct.slot** %2, align 8
  %96 = call i32 @slot_name(%struct.slot* %95)
  %97 = call i32 @ctrl_info(%struct.controller* %94, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load %struct.slot*, %struct.slot** %2, align 8
  %99 = getelementptr inbounds %struct.slot, %struct.slot* %98, i32 0, i32 0
  store i32 128, i32* %99, align 8
  br label %110

100:                                              ; preds = %1, %1
  %101 = load %struct.controller*, %struct.controller** %4, align 8
  %102 = load %struct.slot*, %struct.slot** %2, align 8
  %103 = call i32 @slot_name(%struct.slot* %102)
  %104 = call i32 @ctrl_info(%struct.controller* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load %struct.slot*, %struct.slot** %2, align 8
  %106 = call i32 @update_slot_info(%struct.slot* %105)
  br label %110

107:                                              ; preds = %1
  %108 = load %struct.controller*, %struct.controller** %4, align 8
  %109 = call i32 @ctrl_warn(%struct.controller* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %100, %86, %35
  ret void
}

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @update_slot_info(%struct.slot*) #1

declare dso_local i32 @ctrl_warn(%struct.controller*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
