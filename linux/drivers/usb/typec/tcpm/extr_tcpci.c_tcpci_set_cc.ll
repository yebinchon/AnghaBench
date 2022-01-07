; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_set_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_set_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.tcpci = type { i32 }

@TCPC_ROLE_CTRL_CC_RA = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC1_SHIFT = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC2_SHIFT = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC_RD = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC_RP = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_RP_VAL_DEF = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_RP_VAL_SHIFT = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_RP_VAL_1_5 = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_RP_VAL_3_0 = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC_OPEN = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*, i32)* @tcpci_set_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpci_set_cc(%struct.tcpc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tcpc_dev*, %struct.tcpc_dev** %4, align 8
  %10 = call %struct.tcpci* @tcpc_to_tcpci(%struct.tcpc_dev* %9)
  store %struct.tcpci* %10, %struct.tcpci** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %65 [
    i32 132, label %12
    i32 131, label %20
    i32 128, label %28
    i32 130, label %40
    i32 129, label %52
    i32 133, label %64
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @TCPC_ROLE_CTRL_CC_RA, align 4
  %14 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @TCPC_ROLE_CTRL_CC_RA, align 4
  %17 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  store i32 %19, i32* %7, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load i32, i32* @TCPC_ROLE_CTRL_CC_RD, align 4
  %22 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @TCPC_ROLE_CTRL_CC_RD, align 4
  %25 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %7, align 4
  br label %73

28:                                               ; preds = %2
  %29 = load i32, i32* @TCPC_ROLE_CTRL_CC_RP, align 4
  %30 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @TCPC_ROLE_CTRL_CC_RP, align 4
  %33 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_DEF, align 4
  %37 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  store i32 %39, i32* %7, align 4
  br label %73

40:                                               ; preds = %2
  %41 = load i32, i32* @TCPC_ROLE_CTRL_CC_RP, align 4
  %42 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @TCPC_ROLE_CTRL_CC_RP, align 4
  %45 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_1_5, align 4
  %49 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  store i32 %51, i32* %7, align 4
  br label %73

52:                                               ; preds = %2
  %53 = load i32, i32* @TCPC_ROLE_CTRL_CC_RP, align 4
  %54 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* @TCPC_ROLE_CTRL_CC_RP, align 4
  %57 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_3_0, align 4
  %61 = load i32, i32* @TCPC_ROLE_CTRL_RP_VAL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  store i32 %63, i32* %7, align 4
  br label %73

64:                                               ; preds = %2
  br label %65

65:                                               ; preds = %2, %64
  %66 = load i32, i32* @TCPC_ROLE_CTRL_CC_OPEN, align 4
  %67 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @TCPC_ROLE_CTRL_CC_OPEN, align 4
  %70 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %68, %71
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %65, %52, %40, %28, %20, %12
  %74 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %75 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TCPC_ROLE_CTRL, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @regmap_write(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %82
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.tcpci* @tcpc_to_tcpci(%struct.tcpc_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
