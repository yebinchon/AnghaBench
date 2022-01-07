; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_mod_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_mod_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32, i32 }
%struct.device = type { i32 }

@usbhs_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"irq request err\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhs_mod_probe(%struct.usbhs_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  %6 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %7 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %9 = call i32 @usbhs_mod_host_probe(%struct.usbhs_priv* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %16 = call i32 @usbhs_mod_gadget_probe(%struct.usbhs_priv* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %43

20:                                               ; preds = %14
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %23 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @usbhs_interrupt, align 4
  %26 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %27 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_name(%struct.device* %29)
  %31 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %32 = call i32 @devm_request_irq(%struct.device* %21, i32 %24, i32 %25, i32 %28, i32 %30, %struct.usbhs_priv* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %47

40:                                               ; preds = %35
  %41 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %42 = call i32 @usbhs_mod_gadget_remove(%struct.usbhs_priv* %41)
  br label %43

43:                                               ; preds = %40, %19
  %44 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %45 = call i32 @usbhs_mod_host_remove(%struct.usbhs_priv* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %38, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_mod_host_probe(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_mod_gadget_probe(%struct.usbhs_priv*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.usbhs_priv*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @usbhs_mod_gadget_remove(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_mod_host_remove(%struct.usbhs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
