; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_upstream_bridge_distance_warn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_upstream_bridge_distance_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.seq_buf = type { i32, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"ACS redirect is set between the client and provider (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"to disable ACS redirect for this path, add the kernel parameter: pci=disable_acs_redir=%s\0A\00", align 1
@PCI_P2PDMA_MAP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [128 x i8] c"cannot be used for peer-to-peer DMA as the client and provider (%s) do not share an upstream bridge or whitelisted host bridge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_dev*, i32*)* @upstream_bridge_distance_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upstream_bridge_distance_warn(%struct.pci_dev* %0, %struct.pci_dev* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.seq_buf, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @kmalloc(i32 %11, i32 %12)
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i32 @seq_buf_init(%struct.seq_buf* %8, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %8, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @upstream_bridge_distance(%struct.pci_dev* %23, %struct.pci_dev* %24, i32* %25, i32* %9, %struct.seq_buf* %8)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i64* @pci_name(%struct.pci_dev* %31)
  %33 = call i32 @pci_warn(%struct.pci_dev* %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64* %32)
  %34 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %8, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %35, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %8, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = call i32 @pci_warn(%struct.pci_dev* %41, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i64* %43)
  br label %45

45:                                               ; preds = %29, %22
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PCI_P2PDMA_MAP_NOT_SUPPORTED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = call i64* @pci_name(%struct.pci_dev* %51)
  %53 = call i32 @pci_warn(%struct.pci_dev* %50, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.2, i64 0, i64 0), i64* %52)
  br label %54

54:                                               ; preds = %49, %45
  %55 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %8, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @kfree(i64* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @seq_buf_init(%struct.seq_buf*, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @upstream_bridge_distance(%struct.pci_dev*, %struct.pci_dev*, i32*, i32*, %struct.seq_buf*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i64*) #1

declare dso_local i64* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
