; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_drd_switch_gadget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_drd_switch_gadget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OTGCMD_OTG_DIS = common dso_local global i32 0, align 4
@OTGCMD_DEV_BUS_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Waiting till Device mode is turned on\0A\00", align 1
@OTGSTS_DEV_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"timeout waiting for dev_ready\0A\00", align 1
@OTGCMD_HOST_BUS_DROP = common dso_local global i32 0, align 4
@OTGCMD_DEV_BUS_DROP = common dso_local global i32 0, align 4
@OTGCMD_DEV_POWER_OFF = common dso_local global i32 0, align 4
@OTGCMD_HOST_POWER_OFF = common dso_local global i32 0, align 4
@OTGSTATE_DEV_STATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_drd_switch_gadget(%struct.cdns3* %0, i32 %1) #0 {
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
  %13 = load i32, i32* @OTGCMD_DEV_BUS_REQ, align 4
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
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %26 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @OTGSTS_DEV_READY, align 4
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
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %70

42:                                               ; preds = %12
  br label %69

43:                                               ; preds = %2
  %44 = call i32 @usleep_range(i32 20, i32 30)
  %45 = load i32, i32* @OTGCMD_HOST_BUS_DROP, align 4
  %46 = load i32, i32* @OTGCMD_DEV_BUS_DROP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @OTGCMD_DEV_POWER_OFF, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @OTGCMD_HOST_POWER_OFF, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %53 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @writel(i32 %51, i32* %55)
  %57 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %58 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @OTGSTATE_DEV_STATE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @readl_poll_timeout_atomic(i32* %60, i32 %61, i32 %67, i32 1, i32 2000000)
  br label %69

69:                                               ; preds = %43, %42
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %36
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @readl_poll_timeout_atomic(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
