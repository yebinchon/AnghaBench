; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.c_xhci_dbc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.c_xhci_dbc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@dev_attr_dbc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_dbc_init(%struct.xhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %7 = call %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %12 = call i32 @xhci_do_dbc_init(%struct.xhci_hcd* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %18 = call i32 @xhci_dbc_tty_register_driver(%struct.xhci_hcd* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %31

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @device_create_file(%struct.device* %23, i32* @dev_attr_dbc)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %36

29:                                               ; preds = %27
  %30 = call i32 (...) @xhci_dbc_tty_unregister_driver()
  br label %31

31:                                               ; preds = %29, %21
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %33 = call i32 @xhci_do_dbc_exit(%struct.xhci_hcd* %32)
  br label %34

34:                                               ; preds = %31, %15
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_do_dbc_init(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbc_tty_register_driver(%struct.xhci_hcd*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @xhci_dbc_tty_unregister_driver(...) #1

declare dso_local i32 @xhci_do_dbc_exit(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
