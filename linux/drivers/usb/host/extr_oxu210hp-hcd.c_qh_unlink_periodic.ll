; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_qh_unlink_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_qh_unlink_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i32 }
%struct.ehci_qh = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"unlink qh%d-%04x/%p start %d [%d/%d us]\0A\00", align 1
@QH_CMASK = common dso_local global i32 0, align 4
@QH_SMASK = common dso_local global i32 0, align 4
@QH_STATE_UNLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.ehci_qh*)* @qh_unlink_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qh_unlink_periodic(%struct.oxu_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %7 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %8 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %15 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %28, %13
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %27 = call i32 @periodic_unlink(%struct.oxu_hcd* %24, i32 %25, %struct.ehci_qh* %26)
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %34 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %39 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %42 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %46 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = udiv i32 %44, %47
  br label %54

49:                                               ; preds = %32
  %50 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %51 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 8
  br label %54

54:                                               ; preds = %49, %37
  %55 = phi i32 [ %48, %37 ], [ %53, %49 ]
  %56 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %57 = call %struct.TYPE_8__* @oxu_to_hcd(%struct.oxu_hcd* %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %63 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %62, i32 0, i32 7
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %67 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %70 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %69, i32 0, i32 6
  %71 = call i32 @le32_to_cpup(i32* %70)
  %72 = load i32, i32* @QH_CMASK, align 4
  %73 = load i32, i32* @QH_SMASK, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %77 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %78 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %81 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %84 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %75, %struct.ehci_qh* %76, i32 %79, i32 %82, i32 %85)
  %87 = load i32, i32* @QH_STATE_UNLINK, align 4
  %88 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %89 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %91 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %94 = call i32 @qh_put(%struct.ehci_qh* %93)
  %95 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %96 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %100 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %54
  %104 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %105 = call i32 @disable_periodic(%struct.oxu_hcd* %104)
  br label %106

106:                                              ; preds = %103, %54
  ret void
}

declare dso_local i32 @periodic_unlink(%struct.oxu_hcd*, i32, %struct.ehci_qh*) #1

declare dso_local %struct.TYPE_8__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, %struct.ehci_qh*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i32 @qh_put(%struct.ehci_qh*) #1

declare dso_local i32 @disable_periodic(%struct.oxu_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
