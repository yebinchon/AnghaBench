; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpci = type { i32 }
%struct.tcpci_data = type { i32 }
%struct.rt1711h_chip = type { i32 }

@RT1711H_RTCTRL8 = common dso_local global i32 0, align 4
@RT1711H_RTCTRL11 = common dso_local global i32 0, align 4
@RT1711H_RTCTRL14 = common dso_local global i32 0, align 4
@RT1711H_RTCTRL15 = common dso_local global i32 0, align 4
@RT1711H_RTCTRL16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpci*, %struct.tcpci_data*)* @rt1711h_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1711h_init(%struct.tcpci* %0, %struct.tcpci_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpci*, align 8
  %5 = alloca %struct.tcpci_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt1711h_chip*, align 8
  store %struct.tcpci* %0, %struct.tcpci** %4, align 8
  store %struct.tcpci_data* %1, %struct.tcpci_data** %5, align 8
  %8 = load %struct.tcpci_data*, %struct.tcpci_data** %5, align 8
  %9 = call %struct.rt1711h_chip* @tdata_to_rt1711h(%struct.tcpci_data* %8)
  store %struct.rt1711h_chip* %9, %struct.rt1711h_chip** %7, align 8
  %10 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %11 = load i32, i32* @RT1711H_RTCTRL8, align 4
  %12 = call i32 @RT1711H_RTCTRL8_SET(i32 0, i32 1, i32 1, i32 2)
  %13 = call i32 @rt1711h_write8(%struct.rt1711h_chip* %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %20 = load i32, i32* @RT1711H_RTCTRL11, align 4
  %21 = call i32 @RT1711H_RTCTRL11_SET(i32 1, i32 15)
  %22 = call i32 @rt1711h_write8(%struct.rt1711h_chip* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %18
  %28 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %29 = load i32, i32* @RT1711H_RTCTRL14, align 4
  %30 = call i32 @rt1711h_write8(%struct.rt1711h_chip* %28, i32 %29, i32 15)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %27
  %36 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %37 = load i32, i32* @RT1711H_RTCTRL15, align 4
  %38 = call i32 @rt1711h_write8(%struct.rt1711h_chip* %36, i32 %37, i32 4)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %45 = load i32, i32* @RT1711H_RTCTRL16, align 4
  %46 = call i32 @rt1711h_write16(%struct.rt1711h_chip* %44, i32 %45, i32 330)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %41, %33, %25, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.rt1711h_chip* @tdata_to_rt1711h(%struct.tcpci_data*) #1

declare dso_local i32 @rt1711h_write8(%struct.rt1711h_chip*, i32, i32) #1

declare dso_local i32 @RT1711H_RTCTRL8_SET(i32, i32, i32, i32) #1

declare dso_local i32 @RT1711H_RTCTRL11_SET(i32, i32) #1

declare dso_local i32 @rt1711h_write16(%struct.rt1711h_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
