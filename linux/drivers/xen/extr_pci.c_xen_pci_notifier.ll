; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pci.c_xen_pci_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pci.c_xen_pci_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.device = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to %s - passthrough or MSI/MSI-X might fail!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @xen_pci_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pci_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.device*
  store %struct.device* %11, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  switch i64 %12, label %19 [
    i64 129, label %13
    i64 128, label %16
  ]

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = call i32 @xen_add_device(%struct.device* %14)
  store i32 %15, i32* %9, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = call i32 @xen_remove_device(%struct.device* %17)
  store i32 %18, i32* %9, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %26, 129
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %34

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 128
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %28 ], [ %33, %29 ]
  %36 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %21
  %38 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @xen_add_device(%struct.device*) #1

declare dso_local i32 @xen_remove_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
