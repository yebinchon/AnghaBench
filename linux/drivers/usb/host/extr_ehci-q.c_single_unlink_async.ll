; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_single_unlink_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_single_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.ehci_qh*, %struct.ehci_qh*, i32 }
%struct.ehci_qh = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.ehci_qh* }
%struct.TYPE_3__ = type { i32 }

@QH_STATE_UNLINK_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qh*)* @single_unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_unlink_async(%struct.ehci_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca %struct.ehci_qh*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %6 = load i32, i32* @QH_STATE_UNLINK_WAIT, align 4
  %7 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %8 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %10 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %9, i32 0, i32 2
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %11, i32 0, i32 2
  %13 = call i32 @list_add_tail(i32* %10, i32* %12)
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 1
  %16 = load %struct.ehci_qh*, %struct.ehci_qh** %15, align 8
  store %struct.ehci_qh* %16, %struct.ehci_qh** %5, align 8
  br label %17

17:                                               ; preds = %24, %2
  %18 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %19 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ehci_qh*, %struct.ehci_qh** %20, align 8
  %22 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %23 = icmp ne %struct.ehci_qh* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %26 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.ehci_qh*, %struct.ehci_qh** %27, align 8
  store %struct.ehci_qh* %28, %struct.ehci_qh** %5, align 8
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %36 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %40 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %39, i32 0, i32 0
  %41 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %42 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %41, i32 0, i32 0
  %43 = bitcast %struct.TYPE_4__* %40 to i8*
  %44 = bitcast %struct.TYPE_4__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  %45 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %45, i32 0, i32 0
  %47 = load %struct.ehci_qh*, %struct.ehci_qh** %46, align 8
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %49 = icmp eq %struct.ehci_qh* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %29
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %52 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.ehci_qh*, %struct.ehci_qh** %53, align 8
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %55, i32 0, i32 0
  store %struct.ehci_qh* %54, %struct.ehci_qh** %56, align 8
  br label %57

57:                                               ; preds = %50, %29
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
