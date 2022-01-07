; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_set_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_set_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.tcpci = type { i32 }

@TCPC_COMMAND = common dso_local global i32 0, align 4
@TCPC_CMD_DISABLE_SRC_VBUS = common dso_local global i32 0, align 4
@TCPC_CMD_DISABLE_SINK_VBUS = common dso_local global i32 0, align 4
@TCPC_CMD_SRC_VBUS_DEFAULT = common dso_local global i32 0, align 4
@TCPC_CMD_SINK_VBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*, i32, i32)* @tcpci_set_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpci_set_vbus(%struct.tcpc_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcpci*, align 8
  %9 = alloca i32, align 4
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %11 = call %struct.tcpci* @tcpc_to_tcpci(%struct.tcpc_dev* %10)
  store %struct.tcpci* %11, %struct.tcpci** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = load %struct.tcpci*, %struct.tcpci** %8, align 8
  %16 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TCPC_COMMAND, align 4
  %19 = load i32, i32* @TCPC_CMD_DISABLE_SRC_VBUS, align 4
  %20 = call i32 @regmap_write(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = load %struct.tcpci*, %struct.tcpci** %8, align 8
  %31 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TCPC_COMMAND, align 4
  %34 = load i32, i32* @TCPC_CMD_DISABLE_SINK_VBUS, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %72

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.tcpci*, %struct.tcpci** %8, align 8
  %46 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TCPC_COMMAND, align 4
  %49 = load i32, i32* @TCPC_CMD_SRC_VBUS_DEFAULT, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %72

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.tcpci*, %struct.tcpci** %8, align 8
  %61 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TCPC_COMMAND, align 4
  %64 = load i32, i32* @TCPC_CMD_SINK_VBUS, align 4
  %65 = call i32 @regmap_write(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %56
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %68, %53, %38, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.tcpci* @tcpc_to_tcpci(%struct.tcpc_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
