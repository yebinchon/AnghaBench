; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.pvcalls_fedata = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pvcalls_back_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca %struct.pvcalls_fedata*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.xenbus_device*
  store %struct.xenbus_device* %9, %struct.xenbus_device** %6, align 8
  store %struct.pvcalls_fedata* null, %struct.pvcalls_fedata** %7, align 8
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %11 = icmp eq %struct.xenbus_device* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 0
  %17 = call %struct.pvcalls_fedata* @dev_get_drvdata(i32* %16)
  store %struct.pvcalls_fedata* %17, %struct.pvcalls_fedata** %7, align 8
  %18 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %19 = icmp eq %struct.pvcalls_fedata* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %24 = call i32 @pvcalls_back_work(%struct.pvcalls_fedata* %23)
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %20, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.pvcalls_fedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pvcalls_back_work(%struct.pvcalls_fedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
