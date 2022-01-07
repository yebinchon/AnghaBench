; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.tcpci = type { i32 }

@TCPC_ROLE_CTRL = common dso_local global i32 0, align 4
@TYPEC_POLARITY_CC2 = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC_OPEN = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC1_SHIFT = common dso_local global i32 0, align 4
@TCPC_ROLE_CTRL_CC2_SHIFT = common dso_local global i32 0, align 4
@TCPC_TCPC_CTRL = common dso_local global i32 0, align 4
@TCPC_TCPC_CTRL_ORIENTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*, i32)* @tcpci_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpci_set_polarity(%struct.tcpc_dev* %0, i32 %1) #0 {
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
  %11 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %12 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TCPC_ROLE_CTRL, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @TCPC_ROLE_CTRL_CC_OPEN, align 4
  %26 = load i32, i32* @TCPC_ROLE_CTRL_CC1_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %36

30:                                               ; preds = %20
  %31 = load i32, i32* @TCPC_ROLE_CTRL_CC_OPEN, align 4
  %32 = load i32, i32* @TCPC_ROLE_CTRL_CC2_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %38 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TCPC_ROLE_CTRL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @regmap_write(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %36
  %48 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %49 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TCPC_TCPC_CTRL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @TCPC_TCPC_CTRL_ORIENTATION, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = call i32 @regmap_write(i32 %50, i32 %51, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %45, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.tcpci* @tcpc_to_tcpci(%struct.tcpc_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
