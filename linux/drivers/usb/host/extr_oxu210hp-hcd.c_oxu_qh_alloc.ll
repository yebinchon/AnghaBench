; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_qh_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_qh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_qh = type { i32*, i32, i32, %struct.oxu_hcd*, i32 }
%struct.oxu_hcd = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@QHEAD_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"no dummy td\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ehci_qh* (%struct.oxu_hcd*)* @oxu_qh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ehci_qh* @oxu_qh_alloc(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehci_qh*, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  store %struct.ehci_qh* null, %struct.ehci_qh** %4, align 8
  %5 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @QHEAD_NUM, align 4
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
  %28 = load i32, i32* @QHEAD_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = bitcast i32* %38 to %struct.ehci_qh*
  store %struct.ehci_qh* %39, %struct.ehci_qh** %4, align 8
  %40 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %41 = call i32 @memset(%struct.ehci_qh* %40, i32 0, i32 32)
  %42 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %43 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %42, i32 0, i32 4
  %44 = call i32 @kref_init(i32* %43)
  %45 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %46 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %47 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %46, i32 0, i32 3
  store %struct.oxu_hcd* %45, %struct.oxu_hcd** %47, align 8
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %49 = call i32 @virt_to_phys(%struct.ehci_qh* %48)
  %50 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %51 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %53 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %52, i32 0, i32 1
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %56 = call i32* @ehci_qtd_alloc(%struct.oxu_hcd* %55)
  %57 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %58 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %60 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %30
  %64 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %65 = call i32 @oxu_dbg(%struct.oxu_hcd* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %67 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  store %struct.ehci_qh* null, %struct.ehci_qh** %4, align 8
  br label %80

72:                                               ; preds = %30
  %73 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %74 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %26
  br label %80

80:                                               ; preds = %79, %63
  %81 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %82 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  ret %struct.ehci_qh* %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.ehci_qh*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @virt_to_phys(%struct.ehci_qh*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @ehci_qtd_alloc(%struct.oxu_hcd*) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
