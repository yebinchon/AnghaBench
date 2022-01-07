; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_fusb300_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_fusb300_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fusb300 = type { %struct.fusb300**, i32, i32, i32 }

@FUSB300_MAX_NUM_EP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fusb300_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb300_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fusb300*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fusb300* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fusb300* %6, %struct.fusb300** %3, align 8
  %7 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %8 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %7, i32 0, i32 3
  %9 = call i32 @usb_del_gadget_udc(i32* %8)
  %10 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %11 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iounmap(i32 %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  %16 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.fusb300* %16)
  %18 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %19 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %18, i32 0, i32 0
  %20 = load %struct.fusb300**, %struct.fusb300*** %19, align 8
  %21 = getelementptr inbounds %struct.fusb300*, %struct.fusb300** %20, i64 0
  %22 = load %struct.fusb300*, %struct.fusb300** %21, align 8
  %23 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %22, i32 0, i32 0
  %24 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %25 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @fusb300_free_request(%struct.fusb300*** %23, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %41, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @FUSB300_MAX_NUM_EP, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %34 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %33, i32 0, i32 0
  %35 = load %struct.fusb300**, %struct.fusb300*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.fusb300*, %struct.fusb300** %35, i64 %37
  %39 = load %struct.fusb300*, %struct.fusb300** %38, align 8
  %40 = call i32 @kfree(%struct.fusb300* %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %46 = call i32 @kfree(%struct.fusb300* %45)
  ret i32 0
}

declare dso_local %struct.fusb300* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_irq(i32, %struct.fusb300*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @fusb300_free_request(%struct.fusb300***, i32) #1

declare dso_local i32 @kfree(%struct.fusb300*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
