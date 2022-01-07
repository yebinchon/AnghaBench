; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_start_drp_toggling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_start_drp_toggling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpci = type { i32 }
%struct.tcpci_data = type { i32 }
%struct.rt1711h_chip = type { i32 }

@TCPC_ROLE_CTRL_RP_VAL_DEF = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_RP_VAL_SHIFT = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_RP_VAL_1_5 = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_RP_VAL_3_0 = common dso_local global i32 0, align 4
@TYPEC_CC_RD = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC_RD = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC1_SHIFT = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC2_SHIFT = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC_RP = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpci*, %struct.tcpci_data*, i32)* @rt1711h_start_drp_toggling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1711h_start_drp_toggling(%struct.tcpci* %0, %struct.tcpci_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpci*, align 8
  %6 = alloca %struct.tcpci_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt1711h_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcpci* %0, %struct.tcpci** %5, align 8
  store %struct.tcpci_data* %1, %struct.tcpci_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tcpci_data*, %struct.tcpci_data** %6, align 8
  %12 = call %struct.rt1711h_chip* @tdata_to_rt1711h(%struct.tcpci_data* %11)
  store %struct.rt1711h_chip* %12, %struct.rt1711h_chip** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %14 [
    i32 128, label %15
    i32 130, label %21
    i32 129, label %27
  ]

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %3, %14
  %16 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_DEF, align 4
  %17 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %10, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %10, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_1_5, align 4
  %23 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_3_0, align 4
  %29 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %27, %21, %15
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TYPEC_CC_RD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* @TCPC_ROLE_CTRL_CC_RD, align 4
  %39 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @TCPC_ROLE_CTRL_CC_RD, align 4
  %42 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %57

47:                                               ; preds = %33
  %48 = load i32, i32* @TCPC_ROLE_CTRL_CC_RP, align 4
  %49 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* @TCPC_ROLE_CTRL_CC_RP, align 4
  %52 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %47, %37
  %58 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %8, align 8
  %59 = load i32, i32* @TCPC_ROLE_CTRL, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @rt1711h_write8(%struct.rt1711h_chip* %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %57
  %67 = call i32 @usleep_range(i32 500, i32 1000)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.rt1711h_chip* @tdata_to_rt1711h(%struct.tcpci_data*) #1

declare dso_local i32 @rt1711h_write8(%struct.rt1711h_chip*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
