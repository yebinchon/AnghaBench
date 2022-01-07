; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_qh_link_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_qh_link_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.TYPE_4__*, %struct.ehci_qh* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ehci_qh = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.ehci_qh* }
%struct.TYPE_6__ = type { i32 }

@TIMER_ASYNC_OFF = common dso_local global i32 0, align 4
@CMD_ASE = common dso_local global i32 0, align 4
@STS_ASS = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@QH_STATE_IDLE = common dso_local global i64 0, align 8
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.ehci_qh*)* @qh_link_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qh_link_async(%struct.oxu_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_qh*, align 8
  %7 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %8 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %9 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @QH_NEXT(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %12, i32 0, i32 1
  %14 = load %struct.ehci_qh*, %struct.ehci_qh** %13, align 8
  store %struct.ehci_qh* %14, %struct.ehci_qh** %6, align 8
  %15 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %16 = load i32, i32* @TIMER_ASYNC_OFF, align 4
  %17 = call i32 @timer_action_done(%struct.oxu_hcd* %15, i32 %16)
  %18 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %19 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.ehci_qh*, %struct.ehci_qh** %20, align 8
  %22 = icmp ne %struct.ehci_qh* %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %2
  %24 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %25 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @readl(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CMD_ASE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %23
  %34 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %35 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* @STS_ASS, align 4
  %40 = call i32 @handshake(%struct.oxu_hcd* %34, i32* %38, i32 %39, i32 0, i32 150)
  %41 = load i32, i32* @CMD_ASE, align 4
  %42 = load i32, i32* @CMD_RUN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %48 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @writel(i32 %46, i32* %50)
  %52 = load i32, i32* @HC_STATE_RUNNING, align 4
  %53 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %54 = call %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %33, %23
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %59 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @QH_STATE_IDLE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %66 = call i32 @qh_refresh(%struct.oxu_hcd* %64, %struct.ehci_qh* %65)
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %69 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %68, i32 0, i32 2
  %70 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %71 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %70, i32 0, i32 2
  %72 = bitcast %struct.TYPE_5__* %69 to i8*
  %73 = bitcast %struct.TYPE_5__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  %74 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %75 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %78 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = call i32 (...) @wmb()
  %80 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %81 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %82 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store %struct.ehci_qh* %80, %struct.ehci_qh** %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %86 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* @QH_STATE_LINKED, align 8
  %88 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %89 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  ret void
}

declare dso_local i32 @QH_NEXT(i32) #1

declare dso_local i32 @timer_action_done(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @handshake(%struct.oxu_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @qh_refresh(%struct.oxu_hcd*, %struct.ehci_qh*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
