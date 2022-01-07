; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_request_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_request_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32* }
%struct.pci_devres = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"BAR %d: can't reserve %pR\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i8*, i32)* @__pci_request_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_request_region(%struct.pci_dev* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devres*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @pci_resource_len(%struct.pci_dev* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %81

16:                                               ; preds = %4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pci_resource_flags(%struct.pci_dev* %17, i32 %18)
  %20 = load i32, i32* @IORESOURCE_IO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pci_resource_start(%struct.pci_dev* %24, i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @pci_resource_len(%struct.pci_dev* %27, i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @request_region(i32 %26, i64 %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %69

34:                                               ; preds = %23
  br label %56

35:                                               ; preds = %16
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @pci_resource_flags(%struct.pci_dev* %36, i32 %37)
  %39 = load i32, i32* @IORESOURCE_MEM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @pci_resource_start(%struct.pci_dev* %43, i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @pci_resource_len(%struct.pci_dev* %46, i32 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @__request_mem_region(i32 %45, i64 %48, i8* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %69

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %58 = call %struct.pci_devres* @find_pci_dr(%struct.pci_dev* %57)
  store %struct.pci_devres* %58, %struct.pci_devres** %10, align 8
  %59 = load %struct.pci_devres*, %struct.pci_devres** %10, align 8
  %60 = icmp ne %struct.pci_devres* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = shl i32 1, %62
  %64 = load %struct.pci_devres*, %struct.pci_devres** %10, align 8
  %65 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %56
  store i32 0, i32* %5, align 4
  br label %81

69:                                               ; preds = %53, %33
  %70 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @pci_warn(%struct.pci_dev* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %71, i32* %77)
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %69, %68, %15
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_region(i32, i64, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @__request_mem_region(i32, i64, i8*, i32) #1

declare dso_local %struct.pci_devres* @find_pci_dr(%struct.pci_dev*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
