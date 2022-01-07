; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_qtd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_qtd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_qtd = type { i32, i32, i8*, i8*, i32 }
%struct.oxu_hcd = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@QTD_NUM = common dso_local global i32 0, align 4
@QTD_STS_HALT = common dso_local global i32 0, align 4
@EHCI_LIST_END = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ehci_qtd* (%struct.oxu_hcd*)* @ehci_qtd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ehci_qtd* @ehci_qtd_alloc(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehci_qtd*, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  store %struct.ehci_qtd* null, %struct.ehci_qtd** %4, align 8
  %5 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @QTD_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %26

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %21, %8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @QTD_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = bitcast i32* %38 to %struct.ehci_qtd*
  store %struct.ehci_qtd* %39, %struct.ehci_qtd** %4, align 8
  %40 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %41 = call i32 @memset(%struct.ehci_qtd* %40, i32 0, i32 32)
  %42 = load i32, i32* @QTD_STS_HALT, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %45 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** @EHCI_LIST_END, align 8
  %47 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %48 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @EHCI_LIST_END, align 8
  %50 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %51 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %53 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %52, i32 0, i32 1
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %56 = call i32 @virt_to_phys(%struct.ehci_qtd* %55)
  %57 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %58 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %60 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %30, %26
  %66 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %67 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  ret %struct.ehci_qtd* %69
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.ehci_qtd*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @virt_to_phys(%struct.ehci_qtd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
