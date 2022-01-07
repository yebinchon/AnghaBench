; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_qtd_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_qtd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ehci_qtd* }
%struct.ehci_qtd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.ehci_qtd*)* @oxu_qtd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxu_qtd_free(%struct.oxu_hcd* %0, %struct.ehci_qtd* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qtd*, align 8
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qtd* %1, %struct.ehci_qtd** %4, align 8
  %6 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %7 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %12 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %13 = call i32 @oxu_buf_free(%struct.oxu_hcd* %11, %struct.ehci_qtd* %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %19 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ehci_qtd*, %struct.ehci_qtd** %22, align 8
  %24 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %23, i64 0
  %25 = ptrtoint %struct.ehci_qtd* %18 to i64
  %26 = ptrtoint %struct.ehci_qtd* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  ret void
}

declare dso_local i32 @oxu_buf_free(%struct.oxu_hcd*, %struct.ehci_qtd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
