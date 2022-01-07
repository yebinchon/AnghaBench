; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_start_unlink_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_start_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.TYPE_5__*, i64, %struct.ehci_qh*, %struct.ehci_qh*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ehci_qh = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.ehci_qh* }
%struct.TYPE_6__ = type { i64 }

@HC_STATE_HALT = common dso_local global i64 0, align 8
@CMD_ASE = common dso_local global i32 0, align 4
@TIMER_ASYNC_OFF = common dso_local global i32 0, align 4
@QH_STATE_UNLINK = common dso_local global i64 0, align 8
@CMD_IAAD = common dso_local global i32 0, align 4
@TIMER_IAA_WATCHDOG = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_STATE_UNLINK_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.ehci_qh*)* @start_unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_unlink_async(%struct.oxu_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_qh*, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %7 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i32 @readl(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %13 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %13, i32 0, i32 2
  %15 = load %struct.ehci_qh*, %struct.ehci_qh** %14, align 8
  %16 = icmp eq %struct.ehci_qh* %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %22 = call %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HC_STATE_HALT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %28, i32 0, i32 3
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %29, align 8
  %31 = icmp ne %struct.ehci_qh* %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CMD_ASE, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %38 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @writel(i32 %36, i32* %40)
  %42 = call i32 (...) @wmb()
  %43 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %44 = load i32, i32* @TIMER_ASYNC_OFF, align 4
  %45 = call i32 @timer_action_done(%struct.oxu_hcd* %43, i32 %44)
  br label %46

46:                                               ; preds = %32, %27, %20
  br label %115

47:                                               ; preds = %2
  %48 = load i64, i64* @QH_STATE_UNLINK, align 8
  %49 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %50 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %52 = call %struct.ehci_qh* @qh_get(%struct.ehci_qh* %51)
  store %struct.ehci_qh* %52, %struct.ehci_qh** %4, align 8
  %53 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %53, i32 0, i32 3
  store %struct.ehci_qh* %52, %struct.ehci_qh** %54, align 8
  %55 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %56 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %55, i32 0, i32 2
  %57 = load %struct.ehci_qh*, %struct.ehci_qh** %56, align 8
  store %struct.ehci_qh* %57, %struct.ehci_qh** %6, align 8
  br label %58

58:                                               ; preds = %65, %47
  %59 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %60 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.ehci_qh*, %struct.ehci_qh** %61, align 8
  %63 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %64 = icmp ne %struct.ehci_qh* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %67 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.ehci_qh*, %struct.ehci_qh** %68, align 8
  store %struct.ehci_qh* %69, %struct.ehci_qh** %6, align 8
  br label %58

70:                                               ; preds = %58
  %71 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %72 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %75 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %77 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %76, i32 0, i32 1
  %78 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %79 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %78, i32 0, i32 1
  %80 = bitcast %struct.TYPE_4__* %77 to i8*
  %81 = bitcast %struct.TYPE_4__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 8, i1 false)
  %82 = call i32 (...) @wmb()
  %83 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %84 = call %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @HC_STATE_HALT, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %70
  %93 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %94 = call i32 @end_unlink_async(%struct.oxu_hcd* %93)
  br label %115

95:                                               ; preds = %70
  %96 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %97 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @CMD_IAAD, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %103 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @writel(i32 %101, i32* %105)
  %107 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %108 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = call i32 @readl(i32* %110)
  %112 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %113 = load i32, i32* @TIMER_IAA_WATCHDOG, align 4
  %114 = call i32 @timer_action(%struct.oxu_hcd* %112, i32 %113)
  br label %115

115:                                              ; preds = %95, %92, %46
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @timer_action_done(%struct.oxu_hcd*, i32) #1

declare dso_local %struct.ehci_qh* @qh_get(%struct.ehci_qh*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @end_unlink_async(%struct.oxu_hcd*) #1

declare dso_local i32 @timer_action(%struct.oxu_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
