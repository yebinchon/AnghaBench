; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_check_pio_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_check_pio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advk_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@PIO_STAT = common dso_local global i32 0, align 4
@PIO_COMPLETION_STATUS_MASK = common dso_local global i32 0, align 4
@PIO_COMPLETION_STATUS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"UR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CRS\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@PIO_NON_POSTED_REQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Non-posted\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Posted\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s PIO Response Status: %s, %#x @ %#x\0A\00", align 1
@PIO_ADDR_LS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.advk_pcie*)* @advk_pcie_check_pio_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advk_pcie_check_pio_status(%struct.advk_pcie* %0) #0 {
  %2 = alloca %struct.advk_pcie*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.advk_pcie* %0, %struct.advk_pcie** %2, align 8
  %8 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %9 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %13 = load i32, i32* @PIO_STAT, align 4
  %14 = call i32 @advk_readl(%struct.advk_pcie* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PIO_COMPLETION_STATUS_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @PIO_COMPLETION_STATUS_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %45

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %28 [
    i32 128, label %25
    i32 129, label %26
    i32 130, label %27
  ]

25:                                               ; preds = %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %29

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %29

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %29

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %29

29:                                               ; preds = %28, %27, %26, %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PIO_NON_POSTED_REQ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %42 = load i32, i32* @PIO_ADDR_LS, align 4
  %43 = call i32 @advk_readl(%struct.advk_pcie* %41, i32 %42)
  %44 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %38, i8* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %22
  ret void
}

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
