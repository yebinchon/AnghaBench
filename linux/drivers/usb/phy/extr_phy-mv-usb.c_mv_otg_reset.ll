; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_otg = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@USBCMD_RUN_STOP = common dso_local global i32 0, align 4
@USBCMD_CTRL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Wait for RESET completed TIMEOUT\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_otg*)* @mv_otg_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_otg_reset(%struct.mv_otg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv_otg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv_otg* %0, %struct.mv_otg** %3, align 8
  %6 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %7 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = call i32 @readl(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @USBCMD_RUN_STOP, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %17 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = call i32 @writel(i32 %15, i32* %19)
  %21 = load i32, i32* @USBCMD_CTRL_RESET, align 4
  %22 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %23 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = call i32 @writel(i32 %21, i32* %25)
  store i32 500, i32* %4, align 4
  br label %27

27:                                               ; preds = %47, %1
  %28 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %29 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = call i32 @readl(i32* %31)
  %33 = load i32, i32* @USBCMD_CTRL_RESET, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %41 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %68

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %4, align 4
  %50 = call i32 @udelay(i32 20)
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %53 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @writel(i32 0, i32* %55)
  %57 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %58 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @readl(i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %64 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @writel(i32 %62, i32* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %51, %39
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
