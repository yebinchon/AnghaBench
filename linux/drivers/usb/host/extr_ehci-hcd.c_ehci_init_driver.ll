; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_init_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_init_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i64, i64, i32 }
%struct.ehci_driver_overrides = type { i64, i64, i64 }

@ehci_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ehci_init_driver(%struct.hc_driver* %0, %struct.ehci_driver_overrides* %1) #0 {
  %3 = alloca %struct.hc_driver*, align 8
  %4 = alloca %struct.ehci_driver_overrides*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %3, align 8
  store %struct.ehci_driver_overrides* %1, %struct.ehci_driver_overrides** %4, align 8
  %5 = load %struct.hc_driver*, %struct.hc_driver** %3, align 8
  %6 = bitcast %struct.hc_driver* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.hc_driver* @ehci_hc_driver to i8*), i64 24, i1 false)
  %7 = load %struct.ehci_driver_overrides*, %struct.ehci_driver_overrides** %4, align 8
  %8 = icmp ne %struct.ehci_driver_overrides* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load %struct.ehci_driver_overrides*, %struct.ehci_driver_overrides** %4, align 8
  %11 = getelementptr inbounds %struct.ehci_driver_overrides, %struct.ehci_driver_overrides* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hc_driver*, %struct.hc_driver** %3, align 8
  %14 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 8
  %19 = load %struct.ehci_driver_overrides*, %struct.ehci_driver_overrides** %4, align 8
  %20 = getelementptr inbounds %struct.ehci_driver_overrides, %struct.ehci_driver_overrides* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %9
  %24 = load %struct.ehci_driver_overrides*, %struct.ehci_driver_overrides** %4, align 8
  %25 = getelementptr inbounds %struct.ehci_driver_overrides, %struct.ehci_driver_overrides* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hc_driver*, %struct.hc_driver** %3, align 8
  %28 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %9
  %30 = load %struct.ehci_driver_overrides*, %struct.ehci_driver_overrides** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_driver_overrides, %struct.ehci_driver_overrides* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.ehci_driver_overrides*, %struct.ehci_driver_overrides** %4, align 8
  %36 = getelementptr inbounds %struct.ehci_driver_overrides, %struct.ehci_driver_overrides* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.hc_driver*, %struct.hc_driver** %3, align 8
  %39 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
