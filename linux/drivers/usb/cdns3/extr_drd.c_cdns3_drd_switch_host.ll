; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_drd_switch_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_drd_switch_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OTGCMD_OTG_DIS = common dso_local global i32 0, align 4
@OTGCMD_HOST_BUS_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Waiting till Host mode is turned on\0A\00", align 1
@OTGSTS_XHCI_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"timeout waiting for xhci_ready\0A\00", align 1
@OTGCMD_HOST_BUS_DROP = common dso_local global i32 0, align 4
@OTGCMD_DEV_BUS_DROP = common dso_local global i32 0, align 4
@OTGCMD_DEV_POWER_OFF = common dso_local global i32 0, align 4
@OTGCMD_HOST_POWER_OFF = common dso_local global i32 0, align 4
@OTGSTATE_HOST_STATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_drd_switch_host(%struct.cdns3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @OTGCMD_OTG_DIS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i32, i32* @OTGCMD_HOST_BUS_REQ, align 4
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %17 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @writel(i32 %15, i32* %19)
  %21 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %22 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %26 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @OTGSTS_XHCI_READY, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @readl_poll_timeout_atomic(i32* %28, i32 %29, i32 %32, i32 1, i32 100000)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %12
  %37 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %38 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %12
  br label %68

43:                                               ; preds = %2
  %44 = load i32, i32* @OTGCMD_HOST_BUS_DROP, align 4
  %45 = load i32, i32* @OTGCMD_DEV_BUS_DROP, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @OTGCMD_DEV_POWER_OFF, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @OTGCMD_HOST_POWER_OFF, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %52 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @writel(i32 %50, i32* %54)
  %56 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %57 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @OTGSTATE_HOST_STATE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @readl_poll_timeout_atomic(i32* %59, i32 %60, i32 %66, i32 1, i32 2000000)
  br label %68

68:                                               ; preds = %43, %42
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @readl_poll_timeout_atomic(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
