; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sched.c_find_tt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sched.c_find_tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_tt = type { i32, %struct.usb_tt*, i32, i32 }
%struct.usb_tt = type { %struct.ehci_tt**, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32, i32, %struct.usb_tt* }
%struct.ehci_hcd = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ehci_tt* (%struct.usb_device*)* @find_tt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ehci_tt* @find_tt(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.ehci_tt*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_tt*, align 8
  %5 = alloca %struct.ehci_tt*, align 8
  %6 = alloca %struct.ehci_tt**, align 8
  %7 = alloca %struct.ehci_tt**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehci_hcd*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 2
  %13 = load %struct.usb_tt*, %struct.usb_tt** %12, align 8
  store %struct.usb_tt* %13, %struct.usb_tt** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %15 = icmp ne %struct.usb_tt* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.ehci_tt* null, %struct.ehci_tt** %2, align 8
  br label %105

17:                                               ; preds = %1
  store %struct.ehci_tt** null, %struct.ehci_tt*** %6, align 8
  %18 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %19 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %17
  %23 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %24 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %23, i32 0, i32 0
  %25 = load %struct.ehci_tt**, %struct.ehci_tt*** %24, align 8
  store %struct.ehci_tt** %25, %struct.ehci_tt*** %6, align 8
  %26 = load %struct.ehci_tt**, %struct.ehci_tt*** %6, align 8
  %27 = icmp ne %struct.ehci_tt** %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %22
  %29 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %30 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.ehci_tt** @kcalloc(i32 %33, i32 8, i32 %34)
  store %struct.ehci_tt** %35, %struct.ehci_tt*** %6, align 8
  %36 = load %struct.ehci_tt**, %struct.ehci_tt*** %6, align 8
  %37 = icmp ne %struct.ehci_tt** %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.ehci_tt* @ERR_PTR(i32 %40)
  store %struct.ehci_tt* %41, %struct.ehci_tt** %2, align 8
  br label %105

42:                                               ; preds = %28
  %43 = load %struct.ehci_tt**, %struct.ehci_tt*** %6, align 8
  %44 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %45 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %44, i32 0, i32 0
  store %struct.ehci_tt** %43, %struct.ehci_tt*** %45, align 8
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %22
  %47 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load %struct.ehci_tt**, %struct.ehci_tt*** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ehci_tt*, %struct.ehci_tt** %51, i64 %53
  store %struct.ehci_tt** %54, %struct.ehci_tt*** %7, align 8
  br label %59

55:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %56 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %57 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %56, i32 0, i32 0
  %58 = bitcast %struct.ehci_tt*** %57 to %struct.ehci_tt**
  store %struct.ehci_tt** %58, %struct.ehci_tt*** %7, align 8
  br label %59

59:                                               ; preds = %55, %46
  %60 = load %struct.ehci_tt**, %struct.ehci_tt*** %7, align 8
  %61 = load %struct.ehci_tt*, %struct.ehci_tt** %60, align 8
  store %struct.ehci_tt* %61, %struct.ehci_tt** %5, align 8
  %62 = load %struct.ehci_tt*, %struct.ehci_tt** %5, align 8
  %63 = icmp ne %struct.ehci_tt* %62, null
  br i1 %63, label %103, label %64

64:                                               ; preds = %59
  %65 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bus_to_hcd(i32 %67)
  %69 = call %struct.ehci_hcd* @hcd_to_ehci(i32 %68)
  store %struct.ehci_hcd* %69, %struct.ehci_hcd** %10, align 8
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call %struct.ehci_tt* @kzalloc(i32 24, i32 %70)
  store %struct.ehci_tt* %71, %struct.ehci_tt** %5, align 8
  %72 = load %struct.ehci_tt*, %struct.ehci_tt** %5, align 8
  %73 = icmp ne %struct.ehci_tt* %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %79 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %78, i32 0, i32 0
  store %struct.ehci_tt** null, %struct.ehci_tt*** %79, align 8
  %80 = load %struct.ehci_tt**, %struct.ehci_tt*** %6, align 8
  %81 = call i32 @kfree(%struct.ehci_tt** %80)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.ehci_tt* @ERR_PTR(i32 %84)
  store %struct.ehci_tt* %85, %struct.ehci_tt** %2, align 8
  br label %105

86:                                               ; preds = %64
  %87 = load %struct.ehci_tt*, %struct.ehci_tt** %5, align 8
  %88 = getelementptr inbounds %struct.ehci_tt, %struct.ehci_tt* %87, i32 0, i32 3
  %89 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %90 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %89, i32 0, i32 0
  %91 = call i32 @list_add_tail(i32* %88, i32* %90)
  %92 = load %struct.ehci_tt*, %struct.ehci_tt** %5, align 8
  %93 = getelementptr inbounds %struct.ehci_tt, %struct.ehci_tt* %92, i32 0, i32 2
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %96 = load %struct.ehci_tt*, %struct.ehci_tt** %5, align 8
  %97 = getelementptr inbounds %struct.ehci_tt, %struct.ehci_tt* %96, i32 0, i32 1
  store %struct.usb_tt* %95, %struct.usb_tt** %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.ehci_tt*, %struct.ehci_tt** %5, align 8
  %100 = getelementptr inbounds %struct.ehci_tt, %struct.ehci_tt* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ehci_tt*, %struct.ehci_tt** %5, align 8
  %102 = load %struct.ehci_tt**, %struct.ehci_tt*** %7, align 8
  store %struct.ehci_tt* %101, %struct.ehci_tt** %102, align 8
  br label %103

103:                                              ; preds = %86, %59
  %104 = load %struct.ehci_tt*, %struct.ehci_tt** %5, align 8
  store %struct.ehci_tt* %104, %struct.ehci_tt** %2, align 8
  br label %105

105:                                              ; preds = %103, %82, %38, %16
  %106 = load %struct.ehci_tt*, %struct.ehci_tt** %2, align 8
  ret %struct.ehci_tt* %106
}

declare dso_local %struct.ehci_tt** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.ehci_tt* @ERR_PTR(i32) #1

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(i32) #1

declare dso_local i32 @bus_to_hcd(i32) #1

declare dso_local %struct.ehci_tt* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ehci_tt**) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
