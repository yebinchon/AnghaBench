; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_udc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_udc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@UDCCR_UDE = common dso_local global i32 0, align 4
@UDCCR_SUSIR = common dso_local global i32 0, align 4
@UDCCR_RESIR = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@UDCCR = common dso_local global i32 0, align 4
@UDCCR_UDA = common dso_local global i32 0, align 4
@UDCCR_RSTIR = common dso_local global i32 0, align 4
@UDCCFR = common dso_local global i32 0, align 4
@UDCCFR_ACM = common dso_local global i32 0, align 4
@UDCCFR_MB1 = common dso_local global i32 0, align 4
@UDC_RES1 = common dso_local global i32 0, align 4
@UDC_RES2 = common dso_local global i32 0, align 4
@UDCCR_SRM = common dso_local global i32 0, align 4
@UDCCR_REM = common dso_local global i32 0, align 4
@UICR0 = common dso_local global i32 0, align 4
@UICR0_IM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa25x_udc*)* @udc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_enable(%struct.pxa25x_udc* %0) #0 {
  %2 = alloca %struct.pxa25x_udc*, align 8
  store %struct.pxa25x_udc* %0, %struct.pxa25x_udc** %2, align 8
  %3 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %4 = load i32, i32* @UDCCR_UDE, align 4
  %5 = call i32 @udc_clear_mask_UDCCR(%struct.pxa25x_udc* %3, i32 %4)
  %6 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %7 = load i32, i32* @UDCCR_SUSIR, align 4
  %8 = load i32, i32* @UDCCR_RESIR, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @udc_ack_int_UDCCR(%struct.pxa25x_udc* %6, i32 %9)
  %11 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %12 = call i32 @ep0_idle(%struct.pxa25x_udc* %11)
  %13 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %14 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %15 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %18 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %21 = load i32, i32* @UDCCR_UDE, align 4
  %22 = call i32 @udc_set_mask_UDCCR(%struct.pxa25x_udc* %20, i32 %21)
  %23 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %24 = load i32, i32* @UDCCR, align 4
  %25 = call i32 @udc_get_reg(%struct.pxa25x_udc* %23, i32 %24)
  %26 = load i32, i32* @UDCCR_UDA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %31 = load i32, i32* @UDCCR_RSTIR, align 4
  %32 = call i32 @udc_ack_int_UDCCR(%struct.pxa25x_udc* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %35 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %40 = load i32, i32* @UDCCFR, align 4
  %41 = load i32, i32* @UDCCFR_ACM, align 4
  %42 = load i32, i32* @UDCCFR_MB1, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @udc_set_reg(%struct.pxa25x_udc* %39, i32 %40, i32 %43)
  br label %52

45:                                               ; preds = %33
  %46 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %47 = load i32, i32* @UDC_RES1, align 4
  %48 = call i32 @udc_set_reg(%struct.pxa25x_udc* %46, i32 %47, i32 0)
  %49 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %50 = load i32, i32* @UDC_RES2, align 4
  %51 = call i32 @udc_set_reg(%struct.pxa25x_udc* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %54 = load i32, i32* @UDCCR_SRM, align 4
  %55 = load i32, i32* @UDCCR_REM, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @udc_clear_mask_UDCCR(%struct.pxa25x_udc* %53, i32 %56)
  %58 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %59 = load i32, i32* @UICR0, align 4
  %60 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %61 = load i32, i32* @UICR0, align 4
  %62 = call i32 @udc_get_reg(%struct.pxa25x_udc* %60, i32 %61)
  %63 = load i32, i32* @UICR0_IM0, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @udc_set_reg(%struct.pxa25x_udc* %58, i32 %59, i32 %65)
  %67 = call i32 (...) @pullup_on()
  ret void
}

declare dso_local i32 @udc_clear_mask_UDCCR(%struct.pxa25x_udc*, i32) #1

declare dso_local i32 @udc_ack_int_UDCCR(%struct.pxa25x_udc*, i32) #1

declare dso_local i32 @ep0_idle(%struct.pxa25x_udc*) #1

declare dso_local i32 @udc_set_mask_UDCCR(%struct.pxa25x_udc*, i32) #1

declare dso_local i32 @udc_get_reg(%struct.pxa25x_udc*, i32) #1

declare dso_local i32 @udc_set_reg(%struct.pxa25x_udc*, i32, i32) #1

declare dso_local i32 @pullup_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
