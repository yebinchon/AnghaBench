; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap2430_musb_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap2430_musb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.omap2430_glue = type { i32, i32 }
%struct.musb_hdrc_platform_data = type { %struct.omap_musb_board_data* }
%struct.omap_musb_board_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@USB_MODE_HOST = common dso_local global i32 0, align 4
@MUSB_INTERFACE_UTMI = common dso_local global i32 0, align 4
@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@MUSB_DEVCTL_BDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"configured as A device timeout\00", align 1
@USB_MODE_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*)* @omap2430_musb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2430_musb_enable(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.omap2430_glue*, align 8
  %7 = alloca %struct.musb_hdrc_platform_data*, align 8
  %8 = alloca %struct.omap_musb_board_data*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = call i64 @msecs_to_jiffies(i32 1000)
  %11 = add i64 %9, %10
  store i64 %11, i64* %4, align 8
  %12 = load %struct.musb*, %struct.musb** %2, align 8
  %13 = getelementptr inbounds %struct.musb, %struct.musb* %12, i32 0, i32 1
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.omap2430_glue* @dev_get_drvdata(i32 %17)
  store %struct.omap2430_glue* %18, %struct.omap2430_glue** %6, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.device* %19)
  store %struct.musb_hdrc_platform_data* %20, %struct.musb_hdrc_platform_data** %7, align 8
  %21 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %7, align 8
  %22 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %21, i32 0, i32 0
  %23 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %22, align 8
  store %struct.omap_musb_board_data* %23, %struct.omap_musb_board_data** %8, align 8
  %24 = load %struct.omap2430_glue*, %struct.omap2430_glue** %6, align 8
  %25 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %80 [
    i32 129, label %27
    i32 128, label %74
  ]

27:                                               ; preds = %1
  %28 = load %struct.omap2430_glue*, %struct.omap2430_glue** %6, align 8
  %29 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USB_MODE_HOST, align 4
  %32 = call i32 @omap_control_usb_set_mode(i32 %30, i32 %31)
  %33 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %8, align 8
  %34 = getelementptr inbounds %struct.omap_musb_board_data, %struct.omap_musb_board_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MUSB_INTERFACE_UTMI, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %81

39:                                               ; preds = %27
  %40 = load %struct.musb*, %struct.musb** %2, align 8
  %41 = getelementptr inbounds %struct.musb, %struct.musb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MUSB_DEVCTL, align 4
  %44 = call i32 @musb_readb(i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.musb*, %struct.musb** %2, align 8
  %49 = getelementptr inbounds %struct.musb, %struct.musb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MUSB_DEVCTL, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @musb_writeb(i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %72, %39
  %55 = load %struct.musb*, %struct.musb** %2, align 8
  %56 = getelementptr inbounds %struct.musb, %struct.musb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MUSB_DEVCTL, align 4
  %59 = call i32 @musb_readb(i32 %57, i32 %58)
  %60 = load i32, i32* @MUSB_DEVCTL_BDEVICE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = call i32 (...) @cpu_relax()
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @time_after(i64 %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %73

72:                                               ; preds = %63
  br label %54

73:                                               ; preds = %69, %54
  br label %81

74:                                               ; preds = %1
  %75 = load %struct.omap2430_glue*, %struct.omap2430_glue** %6, align 8
  %76 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @USB_MODE_DEVICE, align 4
  %79 = call i32 @omap_control_usb_set_mode(i32 %77, i32 %78)
  br label %81

80:                                               ; preds = %1
  br label %81

81:                                               ; preds = %80, %74, %73, %38
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.omap2430_glue* @dev_get_drvdata(i32) #1

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @omap_control_usb_set_mode(i32, i32) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
