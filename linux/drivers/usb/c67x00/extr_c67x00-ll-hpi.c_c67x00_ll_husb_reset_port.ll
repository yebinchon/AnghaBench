; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_husb_reset_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_husb_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_sie = type { i32, i32 }

@HPI_IRQ_ROUTING_REG = common dso_local global i32 0, align 4
@SOF_EOP_IRQ_EN = common dso_local global i32 0, align 4
@DONE_IRQ_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c67x00_ll_husb_reset_port(%struct.c67x00_sie* %0, i32 %1) #0 {
  %3 = alloca %struct.c67x00_sie*, align 8
  %4 = alloca i32, align 4
  store %struct.c67x00_sie* %0, %struct.c67x00_sie** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.c67x00_sie*, %struct.c67x00_sie** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @PORT_CONNECT_CHANGE(i32 %6)
  %8 = call i32 @c67x00_ll_usb_clear_status(%struct.c67x00_sie* %5, i32 %7)
  %9 = load %struct.c67x00_sie*, %struct.c67x00_sie** %3, align 8
  %10 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HPI_IRQ_ROUTING_REG, align 4
  %13 = load %struct.c67x00_sie*, %struct.c67x00_sie** %3, align 8
  %14 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SOFEOP_TO_CPU_EN(i32 %15)
  %17 = call i32 @hpi_set_bits(i32 %11, i32 %12, i32 %16)
  %18 = load %struct.c67x00_sie*, %struct.c67x00_sie** %3, align 8
  %19 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.c67x00_sie*, %struct.c67x00_sie** %3, align 8
  %22 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @HOST_IRQ_EN_REG(i32 %23)
  %25 = load i32, i32* @SOF_EOP_IRQ_EN, align 4
  %26 = load i32, i32* @DONE_IRQ_EN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @hpi_set_bits(i32 %20, i32 %24, i32 %27)
  %29 = load %struct.c67x00_sie*, %struct.c67x00_sie** %3, align 8
  %30 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.c67x00_sie*, %struct.c67x00_sie** %3, align 8
  %33 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @USB_CTL_REG(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @PORT_RES_EN(i32 %36)
  %38 = call i32 @hpi_set_bits(i32 %31, i32 %35, i32 %37)
  ret void
}

declare dso_local i32 @c67x00_ll_usb_clear_status(%struct.c67x00_sie*, i32) #1

declare dso_local i32 @PORT_CONNECT_CHANGE(i32) #1

declare dso_local i32 @hpi_set_bits(i32, i32, i32) #1

declare dso_local i32 @SOFEOP_TO_CPU_EN(i32) #1

declare dso_local i32 @HOST_IRQ_EN_REG(i32) #1

declare dso_local i32 @USB_CTL_REG(i32) #1

declare dso_local i32 @PORT_RES_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
