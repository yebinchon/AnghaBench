; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_port_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_port_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sl811 = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32, i32)* }
%struct.usb_hcd = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@SL11H_INTMASK_INSRMV = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4
@SL11H_IRQ_ENABLE = common dso_local global i32 0, align 4
@SL11H_IRQ_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"power %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@SL11H_CTLREG1 = common dso_local global i32 0, align 4
@SL11H_CTL1MASK_SE0 = common dso_local global i32 0, align 4
@SL811HS_CTLREG2 = common dso_local global i32 0, align 4
@SL811HS_CTL2_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sl811*, i32)* @port_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_power(%struct.sl811* %0, i32 %1) #0 {
  %3 = alloca %struct.sl811*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.sl811* %0, %struct.sl811** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sl811*, %struct.sl811** %3, align 8
  %7 = call %struct.usb_hcd* @sl811_to_hcd(%struct.sl811* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.sl811*, %struct.sl811** %3, align 8
  %12 = getelementptr inbounds %struct.sl811, %struct.sl811* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %123

18:                                               ; preds = %10
  %19 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %20 = load %struct.sl811*, %struct.sl811** %3, align 8
  %21 = getelementptr inbounds %struct.sl811, %struct.sl811* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @SL11H_INTMASK_INSRMV, align 4
  %23 = load %struct.sl811*, %struct.sl811** %3, align 8
  %24 = getelementptr inbounds %struct.sl811, %struct.sl811* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.sl811*, %struct.sl811** %3, align 8
  %27 = getelementptr inbounds %struct.sl811, %struct.sl811* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.sl811*, %struct.sl811** %3, align 8
  %29 = getelementptr inbounds %struct.sl811, %struct.sl811* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @HC_STATE_HALT, align 4
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %18
  %34 = load %struct.sl811*, %struct.sl811** %3, align 8
  %35 = getelementptr inbounds %struct.sl811, %struct.sl811* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.sl811*, %struct.sl811** %3, align 8
  %37 = load i32, i32* @SL11H_IRQ_ENABLE, align 4
  %38 = call i32 @sl811_write(%struct.sl811* %36, i32 %37, i32 0)
  %39 = load %struct.sl811*, %struct.sl811** %3, align 8
  %40 = load i32, i32* @SL11H_IRQ_STATUS, align 4
  %41 = call i32 @sl811_write(%struct.sl811* %39, i32 %40, i32 -1)
  %42 = load %struct.sl811*, %struct.sl811** %3, align 8
  %43 = getelementptr inbounds %struct.sl811, %struct.sl811* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %74

46:                                               ; preds = %33
  %47 = load %struct.sl811*, %struct.sl811** %3, align 8
  %48 = getelementptr inbounds %struct.sl811, %struct.sl811* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = icmp ne i32 (i32, i32)* %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %55 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %62 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load %struct.sl811*, %struct.sl811** %3, align 8
  %64 = getelementptr inbounds %struct.sl811, %struct.sl811* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %69 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 %67(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %53, %46, %33
  %75 = load %struct.sl811*, %struct.sl811** %3, align 8
  %76 = getelementptr inbounds %struct.sl811, %struct.sl811* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.sl811*, %struct.sl811** %3, align 8
  %81 = getelementptr inbounds %struct.sl811, %struct.sl811* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (i32)*, i32 (i32)** %83, align 8
  %85 = icmp ne i32 (i32)* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.sl811*, %struct.sl811** %3, align 8
  %88 = getelementptr inbounds %struct.sl811, %struct.sl811* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %93 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 %91(i32 %95)
  br label %103

97:                                               ; preds = %79, %74
  %98 = load %struct.sl811*, %struct.sl811** %3, align 8
  %99 = load i32, i32* @SL11H_CTLREG1, align 4
  %100 = load i32, i32* @SL11H_CTL1MASK_SE0, align 4
  %101 = call i32 @sl811_write(%struct.sl811* %98, i32 %99, i32 %100)
  %102 = call i32 @mdelay(i32 20)
  br label %103

103:                                              ; preds = %97, %86
  %104 = load %struct.sl811*, %struct.sl811** %3, align 8
  %105 = load i32, i32* @SL11H_IRQ_ENABLE, align 4
  %106 = call i32 @sl811_write(%struct.sl811* %104, i32 %105, i32 0)
  %107 = load %struct.sl811*, %struct.sl811** %3, align 8
  %108 = load i32, i32* @SL11H_CTLREG1, align 4
  %109 = load %struct.sl811*, %struct.sl811** %3, align 8
  %110 = getelementptr inbounds %struct.sl811, %struct.sl811* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @sl811_write(%struct.sl811* %107, i32 %108, i32 %111)
  %113 = load %struct.sl811*, %struct.sl811** %3, align 8
  %114 = load i32, i32* @SL811HS_CTLREG2, align 4
  %115 = load i32, i32* @SL811HS_CTL2_INIT, align 4
  %116 = call i32 @sl811_write(%struct.sl811* %113, i32 %114, i32 %115)
  %117 = load %struct.sl811*, %struct.sl811** %3, align 8
  %118 = load i32, i32* @SL11H_IRQ_ENABLE, align 4
  %119 = load %struct.sl811*, %struct.sl811** %3, align 8
  %120 = getelementptr inbounds %struct.sl811, %struct.sl811* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sl811_write(%struct.sl811* %117, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %103, %17
  ret void
}

declare dso_local %struct.usb_hcd* @sl811_to_hcd(%struct.sl811*) #1

declare dso_local i32 @sl811_write(%struct.sl811*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
