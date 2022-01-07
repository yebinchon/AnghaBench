; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_davinci.c_davinci_musb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_davinci.c_davinci_musb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, i32 }

@DM355_DEEPSLEEP = common dso_local global i32 0, align 4
@DRVVBUS_FORCE = common dso_local global i32 0, align 4
@DRVVBUS_OVERRIDE = common dso_local global i32 0, align 4
@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_VBUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"VBUS %d\0A\00", align 1
@MUSB_DEVCTL_VBUS_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"VBUS off timeout (devctl %02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @davinci_musb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_musb_exit(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %2, align 8
  store i32 30, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.musb*, %struct.musb** %2, align 8
  %8 = getelementptr inbounds %struct.musb, %struct.musb* %7, i32 0, i32 3
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = call i64 (...) @cpu_is_davinci_dm355()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @DM355_DEEPSLEEP, align 4
  %14 = call i32 @__raw_readl(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @DRVVBUS_FORCE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @DRVVBUS_OVERRIDE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DM355_DEEPSLEEP, align 4
  %24 = call i32 @__raw_writel(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %12, %1
  %26 = load %struct.musb*, %struct.musb** %2, align 8
  %27 = call i32 @davinci_musb_source_power(%struct.musb* %26, i32 0, i32 1)
  br label %28

28:                                               ; preds = %60, %25
  %29 = load %struct.musb*, %struct.musb** %2, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MUSB_DEVCTL, align 4
  %33 = call i32 @musb_readb(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %63

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load %struct.musb*, %struct.musb** %2, align 8
  %50 = getelementptr inbounds %struct.musb, %struct.musb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MUSB_DEVCTL_VBUS_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %45, %39
  %57 = call i32 @msleep(i32 1000)
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %28, label %63

63:                                               ; preds = %60, %38
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.musb*, %struct.musb** %2, align 8
  %70 = getelementptr inbounds %struct.musb, %struct.musb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = call i32 (...) @phy_off()
  %76 = load %struct.musb*, %struct.musb** %2, align 8
  %77 = getelementptr inbounds %struct.musb, %struct.musb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usb_put_phy(i32 %78)
  ret i32 0
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @cpu_is_davinci_dm355(...) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @davinci_musb_source_power(%struct.musb*, i32, i32) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @phy_off(...) #1

declare dso_local i32 @usb_put_phy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
