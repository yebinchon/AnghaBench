; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipe0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipe0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }

@USB3_P0_INT_STA = common dso_local global i32 0, align 4
@USB3_P0_INT_ENA = common dso_local global i32 0, align 4
@P0_INT_STSED = common dso_local global i32 0, align 4
@P0_INT_SETUP = common dso_local global i32 0, align 4
@P0_INT_BFRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_irq_epc_pipe0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_irq_epc_pipe0(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  %3 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %4 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %5 = load i32, i32* @USB3_P0_INT_STA, align 4
  %6 = call i32 @usb3_read(%struct.renesas_usb3* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %8 = load i32, i32* @USB3_P0_INT_ENA, align 4
  %9 = call i32 @usb3_read(%struct.renesas_usb3* %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @USB3_P0_INT_STA, align 4
  %15 = call i32 @usb3_write(%struct.renesas_usb3* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @P0_INT_STSED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %22 = call i32 @usb3_irq_epc_pipe0_status_end(%struct.renesas_usb3* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @P0_INT_SETUP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %30 = call i32 @usb3_irq_epc_pipe0_setup(%struct.renesas_usb3* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @P0_INT_BFRDY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %38 = call i32 @usb3_irq_epc_pipe0_bfrdy(%struct.renesas_usb3* %37)
  br label %39

39:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @usb3_read(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_irq_epc_pipe0_status_end(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_irq_epc_pipe0_setup(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_irq_epc_pipe0_bfrdy(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
