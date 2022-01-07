; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap2430_musb_set_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap2430_musb_set_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.usb_otg* }
%struct.usb_otg = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@MUSB_DEVCTL = common dso_local global i32 0, align 4
@OTG_STATE_A_IDLE = common dso_local global i64 0, align 8
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@MUSB_DEVCTL_BDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"configured as A device timeout\00", align 1
@OTG_STATE_A_WAIT_VRISE = common dso_local global i64 0, align 8
@OTG_STATE_B_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"VBUS %s, devctl %02x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32)* @omap2430_musb_set_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2430_musb_set_vbus(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_otg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.musb*, %struct.musb** %3, align 8
  %10 = getelementptr inbounds %struct.musb, %struct.musb* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.usb_otg*, %struct.usb_otg** %12, align 8
  store %struct.usb_otg* %13, %struct.usb_otg** %5, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = call i64 @msecs_to_jiffies(i32 1000)
  %16 = add i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.musb*, %struct.musb** %3, align 8
  %18 = getelementptr inbounds %struct.musb, %struct.musb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MUSB_DEVCTL, align 4
  %21 = call i32 @musb_readb(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %2
  %25 = load %struct.musb*, %struct.musb** %3, align 8
  %26 = getelementptr inbounds %struct.musb, %struct.musb* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.usb_otg*, %struct.usb_otg** %28, align 8
  %30 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OTG_STATE_A_IDLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %24
  store i32 100, i32* %8, align 4
  %35 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.musb*, %struct.musb** %3, align 8
  %39 = getelementptr inbounds %struct.musb, %struct.musb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MUSB_DEVCTL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @musb_writeb(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %69, %34
  %45 = load %struct.musb*, %struct.musb** %3, align 8
  %46 = getelementptr inbounds %struct.musb, %struct.musb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MUSB_DEVCTL, align 4
  %49 = call i32 @musb_readb(i32 %47, i32 %48)
  %50 = load i32, i32* @MUSB_DEVCTL_BDEVICE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = call i32 @mdelay(i32 5)
  %55 = call i32 (...) @cpu_relax()
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @time_after(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  %63 = icmp sle i32 %61, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %53
  %65 = load %struct.musb*, %struct.musb** %3, align 8
  %66 = getelementptr inbounds %struct.musb, %struct.musb* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %70

69:                                               ; preds = %60
  br label %44

70:                                               ; preds = %64, %44
  %71 = load %struct.usb_otg*, %struct.usb_otg** %5, align 8
  %72 = call i32 @otg_set_vbus(%struct.usb_otg* %71, i32 1)
  br label %88

73:                                               ; preds = %24
  %74 = load %struct.musb*, %struct.musb** %3, align 8
  %75 = getelementptr inbounds %struct.musb, %struct.musb* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i64, i64* @OTG_STATE_A_WAIT_VRISE, align 8
  %77 = load %struct.musb*, %struct.musb** %3, align 8
  %78 = getelementptr inbounds %struct.musb, %struct.musb* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.usb_otg*, %struct.usb_otg** %80, align 8
  %82 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %81, i32 0, i32 0
  store i64 %76, i64* %82, align 8
  %83 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load %struct.musb*, %struct.musb** %3, align 8
  %87 = call i32 @MUSB_HST_MODE(%struct.musb* %86)
  br label %88

88:                                               ; preds = %73, %70
  br label %105

89:                                               ; preds = %2
  %90 = load %struct.musb*, %struct.musb** %3, align 8
  %91 = getelementptr inbounds %struct.musb, %struct.musb* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load i64, i64* @OTG_STATE_B_IDLE, align 8
  %93 = load %struct.musb*, %struct.musb** %3, align 8
  %94 = getelementptr inbounds %struct.musb, %struct.musb* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.usb_otg*, %struct.usb_otg** %96, align 8
  %98 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %97, i32 0, i32 0
  store i64 %92, i64* %98, align 8
  %99 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.musb*, %struct.musb** %3, align 8
  %104 = call i32 @MUSB_DEV_MODE(%struct.musb* %103)
  br label %105

105:                                              ; preds = %89, %88
  %106 = load %struct.musb*, %struct.musb** %3, align 8
  %107 = getelementptr inbounds %struct.musb, %struct.musb* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MUSB_DEVCTL, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @musb_writeb(i32 %108, i32 %109, i32 %110)
  %112 = load %struct.musb*, %struct.musb** %3, align 8
  %113 = getelementptr inbounds %struct.musb, %struct.musb* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.musb*, %struct.musb** %3, align 8
  %116 = getelementptr inbounds %struct.musb, %struct.musb* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load %struct.usb_otg*, %struct.usb_otg** %118, align 8
  %120 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @usb_otg_state_string(i64 %121)
  %123 = load %struct.musb*, %struct.musb** %3, align 8
  %124 = getelementptr inbounds %struct.musb, %struct.musb* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MUSB_DEVCTL, align 4
  %127 = call i32 @musb_readb(i32 %125, i32 %126)
  %128 = call i32 @dev_dbg(i32 %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %127)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @otg_set_vbus(%struct.usb_otg*, i32) #1

declare dso_local i32 @MUSB_HST_MODE(%struct.musb*) #1

declare dso_local i32 @MUSB_DEV_MODE(%struct.musb*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @usb_otg_state_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
