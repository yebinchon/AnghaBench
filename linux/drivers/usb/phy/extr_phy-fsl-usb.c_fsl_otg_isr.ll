; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.otg_fsm = type { i32, i64, i64 }
%struct.usb_otg = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fsl_otg = type { i32, %struct.TYPE_5__, %struct.otg_fsm }
%struct.TYPE_5__ = type { %struct.usb_otg* }

@usb_dr_regs = common dso_local global %struct.TYPE_8__* null, align 8
@OTGSC_INTSTS_MASK = common dso_local global i32 0, align 4
@OTGSC_STS_USB_ID = common dso_local global i32 0, align 4
@OTGSC_INTSTS_USB_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ID int (ID is %d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_otg_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.otg_fsm*, align 8
  %7 = alloca %struct.usb_otg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.fsl_otg*
  %12 = getelementptr inbounds %struct.fsl_otg, %struct.fsl_otg* %11, i32 0, i32 2
  store %struct.otg_fsm* %12, %struct.otg_fsm** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.fsl_otg*
  %15 = getelementptr inbounds %struct.fsl_otg, %struct.fsl_otg* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.usb_otg*, %struct.usb_otg** %16, align 8
  store %struct.usb_otg* %17, %struct.usb_otg** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_dr_regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @fsl_readl(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @OTGSC_INTSTS_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %23, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_dr_regs, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @fsl_writel(i32 %27, i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @OTGSC_STS_USB_ID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %38 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %40 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %45 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %136

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @OTGSC_INTSTS_USB_ID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %135

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @OTGSC_STS_USB_ID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %61 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %63 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %68 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %70 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %53
  %74 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %75 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  br label %79

76:                                               ; preds = %53
  %77 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %78 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %81 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = icmp ne %struct.TYPE_6__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %86 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %89 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %79
  %93 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %94 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = icmp ne %struct.TYPE_7__* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %99 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %105 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %97, %92
  %109 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %110 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @VDBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %114 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load i8*, i8** %5, align 8
  %119 = bitcast i8* %118 to %struct.fsl_otg*
  %120 = getelementptr inbounds %struct.fsl_otg, %struct.fsl_otg* %119, i32 0, i32 0
  %121 = call i32 @schedule_delayed_work(i32* %120, i32 100)
  br label %133

122:                                              ; preds = %108
  %123 = load i8*, i8** %5, align 8
  %124 = bitcast i8* %123 to %struct.fsl_otg*
  %125 = getelementptr inbounds %struct.fsl_otg, %struct.fsl_otg* %124, i32 0, i32 0
  %126 = call i32 @cancel_delayed_work(i32* %125)
  %127 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %128 = call i32 @fsl_otg_start_gadget(%struct.otg_fsm* %127, i32 0)
  %129 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %130 = call i32 @otg_drv_vbus(%struct.otg_fsm* %129, i32 1)
  %131 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %132 = call i32 @fsl_otg_start_host(%struct.otg_fsm* %131, i32 1)
  br label %133

133:                                              ; preds = %122, %117
  %134 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %134, i32* %3, align 4
  br label %138

135:                                              ; preds = %48
  br label %136

136:                                              ; preds = %135, %2
  %137 = load i32, i32* @IRQ_NONE, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @fsl_readl(i32*) #1

declare dso_local i32 @fsl_writel(i32, i32*) #1

declare dso_local i32 @VDBG(i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @fsl_otg_start_gadget(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_drv_vbus(%struct.otg_fsm*, i32) #1

declare dso_local i32 @fsl_otg_start_host(%struct.otg_fsm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
