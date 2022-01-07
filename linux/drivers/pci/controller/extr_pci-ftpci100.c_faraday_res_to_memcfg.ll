; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_res_to_memcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_res_to_memcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FARADAY_PCI_MEMSIZE_1MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_2MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_4MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_8MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_16MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_32MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_64MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_128MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_256MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_512MB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_1GB = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_2GB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMSIZE_SHIFT = common dso_local global i32 0, align 4
@FARADAY_PCI_MEMBASE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"truncated PCI memory base\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Translated pci base @%pap, size %pap to config %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @faraday_res_to_memcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @faraday_res_to_memcfg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %34 [
    i32 136, label %10
    i32 133, label %12
    i32 131, label %14
    i32 128, label %16
    i32 138, label %18
    i32 132, label %20
    i32 129, label %22
    i32 139, label %24
    i32 135, label %26
    i32 130, label %28
    i32 137, label %30
    i32 134, label %32
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @FARADAY_PCI_MEMSIZE_1MB, align 4
  store i32 %11, i32* %8, align 4
  br label %37

12:                                               ; preds = %3
  %13 = load i32, i32* @FARADAY_PCI_MEMSIZE_2MB, align 4
  store i32 %13, i32* %8, align 4
  br label %37

14:                                               ; preds = %3
  %15 = load i32, i32* @FARADAY_PCI_MEMSIZE_4MB, align 4
  store i32 %15, i32* %8, align 4
  br label %37

16:                                               ; preds = %3
  %17 = load i32, i32* @FARADAY_PCI_MEMSIZE_8MB, align 4
  store i32 %17, i32* %8, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load i32, i32* @FARADAY_PCI_MEMSIZE_16MB, align 4
  store i32 %19, i32* %8, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* @FARADAY_PCI_MEMSIZE_32MB, align 4
  store i32 %21, i32* %8, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load i32, i32* @FARADAY_PCI_MEMSIZE_64MB, align 4
  store i32 %23, i32* %8, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load i32, i32* @FARADAY_PCI_MEMSIZE_128MB, align 4
  store i32 %25, i32* %8, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load i32, i32* @FARADAY_PCI_MEMSIZE_256MB, align 4
  store i32 %27, i32* %8, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @FARADAY_PCI_MEMSIZE_512MB, align 4
  store i32 %29, i32* %8, align 4
  br label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @FARADAY_PCI_MEMSIZE_1GB, align 4
  store i32 %31, i32* %8, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @FARADAY_PCI_MEMSIZE_2GB, align 4
  store i32 %33, i32* %8, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %38 = load i32, i32* @FARADAY_PCI_MEMSIZE_SHIFT, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FARADAY_PCI_MEMBASE_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %37
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @FARADAY_PCI_MEMBASE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %48, %34
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
