; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@NI6527_CLR_IRQS = common dso_local global i32 0, align 4
@NI6527_CLR_RESET_FILT = common dso_local global i32 0, align 4
@NI6527_CLR_REG = common dso_local global i64 0, align 8
@NI6527_CTRL_DISABLE_IRQS = common dso_local global i32 0, align 4
@NI6527_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni6527_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni6527_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = call i32 @ni6527_set_filter_enable(%struct.comedi_device* %3, i32 0)
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = call i32 @ni6527_set_edge_detection(%struct.comedi_device* %5, i32 -1, i32 0, i32 0)
  %7 = load i32, i32* @NI6527_CLR_IRQS, align 4
  %8 = load i32, i32* @NI6527_CLR_RESET_FILT, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NI6527_CLR_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writeb(i32 %9, i64 %14)
  %16 = load i32, i32* @NI6527_CTRL_DISABLE_IRQS, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NI6527_CTRL_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writeb(i32 %16, i64 %21)
  ret void
}

declare dso_local i32 @ni6527_set_filter_enable(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni6527_set_edge_detection(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
