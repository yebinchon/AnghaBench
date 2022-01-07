; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_lookup_pci_internal_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_lookup_pci_internal_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_internal_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@g_mutex = common dso_local global i32 0, align 4
@GASKET_FRAMEWORK_DESC_MAX = common dso_local global i32 0, align 4
@g_descs = common dso_local global %struct.gasket_internal_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gasket_internal_desc* (%struct.pci_dev*)* @lookup_pci_internal_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gasket_internal_desc* @lookup_pci_internal_desc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.gasket_internal_desc*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = call i32 @__must_hold(i32* @g_mutex)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GASKET_FRAMEWORK_DESC_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %6
  %11 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %11, i64 %13
  %15 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %10
  %19 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %19, i64 %21
  %23 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %18
  %29 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %29, i64 %31
  %33 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = call i64 @pci_match_id(i64 %36, %struct.pci_dev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %41, i64 %43
  store %struct.gasket_internal_desc* %44, %struct.gasket_internal_desc** %2, align 8
  br label %50

45:                                               ; preds = %28, %18, %10
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %6

49:                                               ; preds = %6
  store %struct.gasket_internal_desc* null, %struct.gasket_internal_desc** %2, align 8
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %2, align 8
  ret %struct.gasket_internal_desc* %51
}

declare dso_local i32 @__must_hold(i32*) #1

declare dso_local i64 @pci_match_id(i64, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
