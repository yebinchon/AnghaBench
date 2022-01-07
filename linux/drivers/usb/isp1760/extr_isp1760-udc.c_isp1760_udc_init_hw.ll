; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_udc = type { i32, i64 }

@DC_INTCONF = common dso_local global i32 0, align 4
@DC_CDBGMOD_ACK = common dso_local global i32 0, align 4
@DC_DDBGMODIN_ACK = common dso_local global i32 0, align 4
@DC_DDBGMODOUT_ACK_NYET = common dso_local global i32 0, align 4
@DC_INTENABLE = common dso_local global i32 0, align 4
@DC_IEP0SETUP = common dso_local global i32 0, align 4
@DC_IEVBUS = common dso_local global i32 0, align 4
@DC_IERESM = common dso_local global i32 0, align 4
@DC_IESUSP = common dso_local global i32 0, align 4
@DC_IEHS_STA = common dso_local global i32 0, align 4
@DC_IEBRST = common dso_local global i32 0, align 4
@DC_ADDRESS = common dso_local global i32 0, align 4
@DC_DEVEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_udc*)* @isp1760_udc_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_udc_init_hw(%struct.isp1760_udc* %0) #0 {
  %2 = alloca %struct.isp1760_udc*, align 8
  store %struct.isp1760_udc* %0, %struct.isp1760_udc** %2, align 8
  %3 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %4 = load i32, i32* @DC_INTCONF, align 4
  %5 = load i32, i32* @DC_CDBGMOD_ACK, align 4
  %6 = load i32, i32* @DC_DDBGMODIN_ACK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @DC_DDBGMODOUT_ACK_NYET, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %3, i32 %4, i32 %9)
  %11 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %12 = load i32, i32* @DC_INTENABLE, align 4
  %13 = call i32 @DC_IEPRXTX(i32 7)
  %14 = call i32 @DC_IEPRXTX(i32 6)
  %15 = or i32 %13, %14
  %16 = call i32 @DC_IEPRXTX(i32 5)
  %17 = or i32 %15, %16
  %18 = call i32 @DC_IEPRXTX(i32 4)
  %19 = or i32 %17, %18
  %20 = call i32 @DC_IEPRXTX(i32 3)
  %21 = or i32 %19, %20
  %22 = call i32 @DC_IEPRXTX(i32 2)
  %23 = or i32 %21, %22
  %24 = call i32 @DC_IEPRXTX(i32 1)
  %25 = or i32 %23, %24
  %26 = call i32 @DC_IEPRXTX(i32 0)
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DC_IEP0SETUP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DC_IEVBUS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DC_IERESM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DC_IESUSP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DC_IEHS_STA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DC_IEBRST, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %11, i32 %12, i32 %39)
  %41 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %42 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %47 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @isp1760_set_pullup(i32 %48, i32 1)
  br label %50

50:                                               ; preds = %45, %1
  %51 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %52 = load i32, i32* @DC_ADDRESS, align 4
  %53 = load i32, i32* @DC_DEVEN, align 4
  %54 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @isp1760_udc_write(%struct.isp1760_udc*, i32, i32) #1

declare dso_local i32 @DC_IEPRXTX(i32) #1

declare dso_local i32 @isp1760_set_pullup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
