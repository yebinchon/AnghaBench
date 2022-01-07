; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.ed*, %struct.TYPE_2__ }
%struct.ed = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ohci_hcd = type { i64, i32 }

@OHCI_RH_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ED unlink timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"leak ed %p (#%02x) state %d%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" (has tds)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @ohci_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.ohci_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ed*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %9)
  store %struct.ohci_hcd* %10, %struct.ohci_hcd** %5, align 8
  %11 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %11, i32 0, i32 0
  %13 = load %struct.ed*, %struct.ed** %12, align 8
  store %struct.ed* %13, %struct.ed** %7, align 8
  store i32 1000, i32* %8, align 4
  %14 = load %struct.ed*, %struct.ed** %7, align 8
  %15 = icmp ne %struct.ed* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %95

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %45, %17
  %19 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %20 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %24 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OHCI_RH_RUNNING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %42, %28
  %30 = load %struct.ed*, %struct.ed** %7, align 8
  %31 = getelementptr inbounds %struct.ed, %struct.ed* %30, i32 0, i32 0
  store i32 129, i32* %31, align 4
  %32 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %33 = call i32 @ohci_work(%struct.ohci_hcd* %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %struct.ed*, %struct.ed** %7, align 8
  %36 = getelementptr inbounds %struct.ed, %struct.ed* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %66 [
    i32 128, label %38
    i32 129, label %51
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %44 = call i32 @ohci_warn(%struct.ohci_hcd* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %29

45:                                               ; preds = %38
  %46 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %47 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %46, i32 0, i32 1
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %18

51:                                               ; preds = %34
  %52 = load %struct.ed*, %struct.ed** %7, align 8
  %53 = getelementptr inbounds %struct.ed, %struct.ed* %52, i32 0, i32 2
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %58 = load %struct.ed*, %struct.ed** %7, align 8
  %59 = getelementptr inbounds %struct.ed, %struct.ed* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @td_free(%struct.ohci_hcd* %57, i32 %60)
  %62 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %63 = load %struct.ed*, %struct.ed** %7, align 8
  %64 = call i32 @ed_free(%struct.ohci_hcd* %62, %struct.ed* %63)
  br label %88

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %34, %65
  %67 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %68 = load %struct.ed*, %struct.ed** %7, align 8
  %69 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %70 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ed*, %struct.ed** %7, align 8
  %74 = getelementptr inbounds %struct.ed, %struct.ed* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ed*, %struct.ed** %7, align 8
  %77 = getelementptr inbounds %struct.ed, %struct.ed* %76, i32 0, i32 2
  %78 = call i32 @list_empty(i32* %77)
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %82 = call i32 @ohci_err(%struct.ohci_hcd* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.ed* %68, i32 %72, i32 %75, i8* %81)
  %83 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %84 = load %struct.ed*, %struct.ed** %7, align 8
  %85 = getelementptr inbounds %struct.ed, %struct.ed* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @td_free(%struct.ohci_hcd* %83, i32 %86)
  br label %88

88:                                               ; preds = %66, %56
  %89 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %90 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %89, i32 0, i32 0
  store %struct.ed* null, %struct.ed** %90, align 8
  %91 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %92 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %91, i32 0, i32 1
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %88, %16
  ret void
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ohci_work(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_warn(%struct.ohci_hcd*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @td_free(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @ed_free(%struct.ohci_hcd*, %struct.ed*) #1

declare dso_local i32 @ohci_err(%struct.ohci_hcd*, i8*, %struct.ed*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
