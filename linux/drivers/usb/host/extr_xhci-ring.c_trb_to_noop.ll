; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_trb_to_noop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_trb_to_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.xhci_trb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@TRB_CHAIN = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.xhci_trb*, i32)* @trb_to_noop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trb_to_noop(%union.xhci_trb* %0, i32 %1) #0 {
  %3 = alloca %union.xhci_trb*, align 8
  %4 = alloca i32, align 4
  store %union.xhci_trb* %0, %union.xhci_trb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %union.xhci_trb*, %union.xhci_trb** %3, align 8
  %6 = call i64 @trb_is_link(%union.xhci_trb* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* @TRB_CHAIN, align 4
  %10 = xor i32 %9, -1
  %11 = call i32 @cpu_to_le32(i32 %10)
  %12 = load %union.xhci_trb*, %union.xhci_trb** %3, align 8
  %13 = bitcast %union.xhci_trb* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %11
  store i32 %16, i32* %14, align 8
  br label %52

17:                                               ; preds = %2
  %18 = load %union.xhci_trb*, %union.xhci_trb** %3, align 8
  %19 = bitcast %union.xhci_trb* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 0, i32* %22, align 4
  %23 = load %union.xhci_trb*, %union.xhci_trb** %3, align 8
  %24 = bitcast %union.xhci_trb* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  %28 = load %union.xhci_trb*, %union.xhci_trb** %3, align 8
  %29 = bitcast %union.xhci_trb* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @TRB_CYCLE, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %union.xhci_trb*, %union.xhci_trb** %3, align 8
  %36 = bitcast %union.xhci_trb* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %34
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @TRB_TYPE(i32 %42)
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %union.xhci_trb*, %union.xhci_trb** %3, align 8
  %46 = bitcast %union.xhci_trb* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %44
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %17, %8
  ret void
}

declare dso_local i64 @trb_is_link(%union.xhci_trb*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
