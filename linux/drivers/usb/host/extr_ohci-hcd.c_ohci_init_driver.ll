; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_init_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_init_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i64, i32, i32 }
%struct.ohci_driver_overrides = type { i64, i64, i32 }

@ohci_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ohci_init_driver(%struct.hc_driver* %0, %struct.ohci_driver_overrides* %1) #0 {
  %3 = alloca %struct.hc_driver*, align 8
  %4 = alloca %struct.ohci_driver_overrides*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %3, align 8
  store %struct.ohci_driver_overrides* %1, %struct.ohci_driver_overrides** %4, align 8
  %5 = load %struct.hc_driver*, %struct.hc_driver** %3, align 8
  %6 = bitcast %struct.hc_driver* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.hc_driver* @ohci_hc_driver to i8*), i64 16, i1 false)
  %7 = load %struct.ohci_driver_overrides*, %struct.ohci_driver_overrides** %4, align 8
  %8 = icmp ne %struct.ohci_driver_overrides* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.ohci_driver_overrides*, %struct.ohci_driver_overrides** %4, align 8
  %11 = getelementptr inbounds %struct.ohci_driver_overrides, %struct.ohci_driver_overrides* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hc_driver*, %struct.hc_driver** %3, align 8
  %14 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ohci_driver_overrides*, %struct.ohci_driver_overrides** %4, align 8
  %16 = getelementptr inbounds %struct.ohci_driver_overrides, %struct.ohci_driver_overrides* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hc_driver*, %struct.hc_driver** %3, align 8
  %19 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 8
  %24 = load %struct.ohci_driver_overrides*, %struct.ohci_driver_overrides** %4, align 8
  %25 = getelementptr inbounds %struct.ohci_driver_overrides, %struct.ohci_driver_overrides* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %9
  %29 = load %struct.ohci_driver_overrides*, %struct.ohci_driver_overrides** %4, align 8
  %30 = getelementptr inbounds %struct.ohci_driver_overrides, %struct.ohci_driver_overrides* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.hc_driver*, %struct.hc_driver** %3, align 8
  %33 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %9
  br label %35

35:                                               ; preds = %34, %2
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
