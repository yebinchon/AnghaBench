; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i32, i64 }

@INTCSR_INBOX_INTR_STATUS = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @cb_pcidas_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_pcidas_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.cb_pcidas_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  store %struct.cb_pcidas_private* %6, %struct.cb_pcidas_private** %3, align 8
  %7 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %3, align 8
  %8 = icmp ne %struct.cb_pcidas_private* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %3, align 8
  %11 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i32, i32* @INTCSR_INBOX_INTR_STATUS, align 4
  %16 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %3, align 8
  %17 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outl(i32 %15, i64 %20)
  br label %22

22:                                               ; preds = %14, %9
  %23 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %3, align 8
  %24 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @kfree(i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = call i32 @comedi_pci_detach(%struct.comedi_device* %28)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @comedi_pci_detach(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
