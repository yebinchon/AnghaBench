; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-mem.c_ohci_mem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-mem.c_ohci_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ohci_td\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ohci_ed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ohci_hcd*)* @ohci_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_mem_init(%struct.ohci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ohci_hcd*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  %4 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %5 = call %struct.TYPE_4__* @ohci_to_hcd(%struct.ohci_hcd* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %12 = call %struct.TYPE_4__* @ohci_to_hcd(%struct.ohci_hcd* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15, i32 4, i32 32, i32 0)
  %17 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %47

26:                                               ; preds = %10
  %27 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %28 = call %struct.TYPE_4__* @ohci_to_hcd(%struct.ohci_hcd* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 4, i32 16, i32 0)
  %33 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %26
  %40 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @dma_pool_destroy(i8* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %39, %23, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_4__* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local i8* @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_pool_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
