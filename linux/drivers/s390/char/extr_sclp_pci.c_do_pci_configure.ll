; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_pci.c_do_pci_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_pci.c_do_pci_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_cfg_sccb = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SCLP_HAS_PCI_RECONFIG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SCLP_ATYPE_PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"configure PCI I/O adapter failed: cmd=0x%08x  response=0x%04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_pci_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pci_configure(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_cfg_sccb*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @SCLP_HAS_PCI_RECONFIG, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @GFP_DMA, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @get_zeroed_page(i32 %16)
  %18 = inttoptr i64 %17 to %struct.pci_cfg_sccb*
  store %struct.pci_cfg_sccb* %18, %struct.pci_cfg_sccb** %6, align 8
  %19 = load %struct.pci_cfg_sccb*, %struct.pci_cfg_sccb** %6, align 8
  %20 = icmp ne %struct.pci_cfg_sccb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %62

24:                                               ; preds = %13
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load %struct.pci_cfg_sccb*, %struct.pci_cfg_sccb** %6, align 8
  %27 = getelementptr inbounds %struct.pci_cfg_sccb, %struct.pci_cfg_sccb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @SCLP_ATYPE_PCI, align 4
  %30 = load %struct.pci_cfg_sccb*, %struct.pci_cfg_sccb** %6, align 8
  %31 = getelementptr inbounds %struct.pci_cfg_sccb, %struct.pci_cfg_sccb* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.pci_cfg_sccb*, %struct.pci_cfg_sccb** %6, align 8
  %34 = getelementptr inbounds %struct.pci_cfg_sccb, %struct.pci_cfg_sccb* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.pci_cfg_sccb*, %struct.pci_cfg_sccb** %6, align 8
  %37 = call i32 @sclp_sync_request(i32 %35, %struct.pci_cfg_sccb* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %57

41:                                               ; preds = %24
  %42 = load %struct.pci_cfg_sccb*, %struct.pci_cfg_sccb** %6, align 8
  %43 = getelementptr inbounds %struct.pci_cfg_sccb, %struct.pci_cfg_sccb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %47 [
    i32 32, label %46
    i32 288, label %46
  ]

46:                                               ; preds = %41, %41
  br label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.pci_cfg_sccb*, %struct.pci_cfg_sccb** %6, align 8
  %50 = getelementptr inbounds %struct.pci_cfg_sccb, %struct.pci_cfg_sccb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %47, %46
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.pci_cfg_sccb*, %struct.pci_cfg_sccb** %6, align 8
  %59 = ptrtoint %struct.pci_cfg_sccb* %58 to i64
  %60 = call i32 @free_page(i64 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %21, %10
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @sclp_sync_request(i32, %struct.pci_cfg_sccb*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
