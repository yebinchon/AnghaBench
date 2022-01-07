; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_compose_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_compose_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_response = type { i32 }
%struct.compose_comp_ctxt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_create_int_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.pci_response*, i32)* @hv_pci_compose_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_pci_compose_compl(i8* %0, %struct.pci_response* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_response*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.compose_comp_ctxt*, align 8
  %8 = alloca %struct.pci_create_int_response*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pci_response* %1, %struct.pci_response** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.compose_comp_ctxt*
  store %struct.compose_comp_ctxt* %10, %struct.compose_comp_ctxt** %7, align 8
  %11 = load %struct.pci_response*, %struct.pci_response** %5, align 8
  %12 = bitcast %struct.pci_response* %11 to %struct.pci_create_int_response*
  store %struct.pci_create_int_response* %12, %struct.pci_create_int_response** %8, align 8
  %13 = load %struct.pci_response*, %struct.pci_response** %5, align 8
  %14 = getelementptr inbounds %struct.pci_response, %struct.pci_response* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.compose_comp_ctxt*, %struct.compose_comp_ctxt** %7, align 8
  %17 = getelementptr inbounds %struct.compose_comp_ctxt, %struct.compose_comp_ctxt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.pci_create_int_response*, %struct.pci_create_int_response** %8, align 8
  %20 = getelementptr inbounds %struct.pci_create_int_response, %struct.pci_create_int_response* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.compose_comp_ctxt*, %struct.compose_comp_ctxt** %7, align 8
  %23 = getelementptr inbounds %struct.compose_comp_ctxt, %struct.compose_comp_ctxt* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.compose_comp_ctxt*, %struct.compose_comp_ctxt** %7, align 8
  %25 = getelementptr inbounds %struct.compose_comp_ctxt, %struct.compose_comp_ctxt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @complete(i32* %26)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
