; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mem.c_ehci_qtd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mem.c_ehci_qtd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_qtd = type { i32, i8*, i8*, i32, i32 }

@QTD_STS_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qtd*, i32)* @ehci_qtd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_qtd_init(%struct.ehci_hcd* %0, %struct.ehci_qtd* %1, i32 %2) #0 {
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca %struct.ehci_qtd*, align 8
  %6 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store %struct.ehci_qtd* %1, %struct.ehci_qtd** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ehci_qtd*, %struct.ehci_qtd** %5, align 8
  %8 = call i32 @memset(%struct.ehci_qtd* %7, i32 0, i32 32)
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ehci_qtd*, %struct.ehci_qtd** %5, align 8
  %11 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %13 = load i32, i32* @QTD_STS_HALT, align 4
  %14 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %12, i32 %13)
  %15 = load %struct.ehci_qtd*, %struct.ehci_qtd** %5, align 8
  %16 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %18 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %17)
  %19 = load %struct.ehci_qtd*, %struct.ehci_qtd** %5, align 8
  %20 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %22 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %21)
  %23 = load %struct.ehci_qtd*, %struct.ehci_qtd** %5, align 8
  %24 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ehci_qtd*, %struct.ehci_qtd** %5, align 8
  %26 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  ret void
}

declare dso_local i32 @memset(%struct.ehci_qtd*, i32, i32) #1

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i8* @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
