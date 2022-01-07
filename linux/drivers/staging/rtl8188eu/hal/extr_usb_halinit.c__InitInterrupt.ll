; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__InitInterrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__InitInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@REG_HISR_88E = common dso_local global i32 0, align 4
@IMR_PSTIMEOUT_88E = common dso_local global i32 0, align 4
@IMR_TBDER_88E = common dso_local global i32 0, align 4
@IMR_CPWM_88E = common dso_local global i32 0, align 4
@IMR_CPWM2_88E = common dso_local global i32 0, align 4
@REG_HIMR_88E = common dso_local global i32 0, align 4
@IMR_TXERR_88E = common dso_local global i32 0, align 4
@IMR_RXERR_88E = common dso_local global i32 0, align 4
@IMR_TXFOVW_88E = common dso_local global i32 0, align 4
@IMR_RXFOVW_88E = common dso_local global i32 0, align 4
@REG_HIMRE_88E = common dso_local global i32 0, align 4
@REG_USB_SPECIAL_OPTION = common dso_local global i32 0, align 4
@INT_BULK_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitInterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitInterrupt(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = load i32, i32* @REG_HISR_88E, align 4
  %8 = call i32 @usb_write32(%struct.adapter* %6, i32 %7, i32 -1)
  %9 = load i32, i32* @IMR_PSTIMEOUT_88E, align 4
  %10 = load i32, i32* @IMR_TBDER_88E, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IMR_CPWM_88E, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IMR_CPWM2_88E, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* @REG_HIMR_88E, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @usb_write32(%struct.adapter* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %20, i32* %26, align 4
  %27 = load i32, i32* @IMR_TXERR_88E, align 4
  %28 = load i32, i32* @IMR_RXERR_88E, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IMR_TXFOVW_88E, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IMR_RXFOVW_88E, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i32, i32* @REG_HIMRE_88E, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @usb_write32(%struct.adapter* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %38, i32* %44, align 4
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = load i32, i32* @REG_USB_SPECIAL_OPTION, align 4
  %47 = call i32 @usb_read8(%struct.adapter* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = call %struct.TYPE_4__* @adapter_to_dvobj(%struct.adapter* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %1
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @INT_BULK_SEL, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %5, align 4
  br label %62

58:                                               ; preds = %1
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @INT_BULK_SEL, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = load i32, i32* @REG_USB_SPECIAL_OPTION, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @usb_write8(%struct.adapter* %63, i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @usb_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local %struct.TYPE_4__* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
