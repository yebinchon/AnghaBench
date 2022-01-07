; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sched.c_bandwidth_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sched.c_bandwidth_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_per_sched = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"ep %02x: %s %s @ %u+%u (%u.%u+%u) [%u/%u us] mask %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, i32, i8*, %struct.ehci_per_sched*)* @bandwidth_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bandwidth_dbg(%struct.ehci_hcd* %0, i32 %1, i8* %2, %struct.ehci_per_sched* %3) #0 {
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ehci_per_sched*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.ehci_per_sched* %3, %struct.ehci_per_sched** %8, align 8
  %9 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %10 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %9, i32 0, i32 9
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %14 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %13, i32 0, i32 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %25 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %30 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %34 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %37 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %40 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %43 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %46 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %49 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ehci_per_sched*, %struct.ehci_per_sched** %8, align 8
  %52 = getelementptr inbounds %struct.ehci_per_sched, %struct.ehci_per_sched* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %22, i8* %23, i64 %32, i32 %35, i32 %38, i64 %41, i32 %44, i32 %47, i32 %50, i32 %53)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*, i8*, i64, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
