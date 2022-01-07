; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }

@USB3_PN_INT_STA = common dso_local global i32 0, align 4
@USB3_PN_INT_ENA = common dso_local global i32 0, align 4
@PN_INT_LSTTR = common dso_local global i32 0, align 4
@PN_INT_BFRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*, i32)* @usb3_irq_epc_pipen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_irq_epc_pipen(%struct.renesas_usb3* %0, i32 %1) #0 {
  %3 = alloca %struct.renesas_usb3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %7 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @usb3_pn_change(%struct.renesas_usb3* %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %15 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %19 = load i32, i32* @USB3_PN_INT_STA, align 4
  %20 = call i32 @usb3_read(%struct.renesas_usb3* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %22 = load i32, i32* @USB3_PN_INT_ENA, align 4
  %23 = call i32 @usb3_read(%struct.renesas_usb3* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @USB3_PN_INT_STA, align 4
  %29 = call i32 @usb3_write(%struct.renesas_usb3* %26, i32 %27, i32 %28)
  %30 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %31 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PN_INT_LSTTR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %17
  %38 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @usb3_irq_epc_pipen_lsttr(%struct.renesas_usb3* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %17
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PN_INT_BFRDY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @usb3_irq_epc_pipen_bfrdy(%struct.renesas_usb3* %47, i32 %48)
  br label %50

50:                                               ; preds = %13, %46, %41
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @usb3_pn_change(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb3_read(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_irq_epc_pipen_lsttr(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_irq_epc_pipen_bfrdy(%struct.renesas_usb3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
