; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_kill_domain_by_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_kill_domain_by_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcistub_device = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.xenbus_transaction = type { i32 }

@PCI_NODENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"/local/domain/0/backend/pci/%d/0\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"error %d when start xenbus transaction\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"aerState\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"aerfail\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"error %d when end xenbus transaction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcistub_device*)* @kill_domain_by_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_domain_by_device(%struct.pcistub_device* %0) #0 {
  %2 = alloca %struct.pcistub_device*, align 8
  %3 = alloca %struct.xenbus_transaction, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pcistub_device* %0, %struct.pcistub_device** %2, align 8
  %8 = load i32, i32* @PCI_NODENAME_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.pcistub_device*, %struct.pcistub_device** %2, align 8
  %13 = icmp ne %struct.pcistub_device* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @PCI_NODENAME_MAX, align 4
  %18 = load %struct.pcistub_device*, %struct.pcistub_device** %2, align 8
  %19 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snprintf(i8* %11, i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %51, %1
  %27 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %3)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.pcistub_device*, %struct.pcistub_device** %2, align 8
  %32 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 1, i32* %7, align 4
  br label %60

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @xenbus_printf(i32 %39, i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xenbus_transaction_end(i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %26

52:                                               ; preds = %46
  %53 = load %struct.pcistub_device*, %struct.pcistub_device** %2, align 8
  %54 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  store i32 1, i32* %7, align 4
  br label %60

59:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %52, %30
  %61 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %7, align 4
  switch i32 %62, label %64 [
    i32 0, label %63
    i32 1, label %63
  ]

63:                                               ; preds = %60, %60
  ret void

64:                                               ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*) #2

declare dso_local i32 @xenbus_transaction_end(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
