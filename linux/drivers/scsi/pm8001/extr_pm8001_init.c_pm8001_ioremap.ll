; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_ioremap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.pci_dev = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PCI: bar %d, logicalBar %d \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"base addr %llx virt_addr=%llx len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_ioremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_ioremap(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %7 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %130, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %133

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  br label %130

19:                                               ; preds = %15
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_resource_flags(%struct.pci_dev* %20, i32 %21)
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %105

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @pci_resource_start(%struct.pci_dev* %27, i32 %28)
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %31 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 %29, i64* %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @pci_resource_len(%struct.pci_dev* %37, i32 %38)
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %41 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %39, i64* %46, align 8
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %56 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @ioremap(i64 %54, i64 %62)
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %65 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 %63, i64* %70, align 8
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (i8*, i32, i32, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  %75 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %71, i32 %74)
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %77 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %78 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %87 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %96 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, i32, i32, ...) @pm8001_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %94, i64 %102)
  %104 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %76, i32 %103)
  br label %127

105:                                              ; preds = %19
  %106 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %107 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %114 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %121 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %105, %26
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %18
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %9

133:                                              ; preds = %9
  ret i32 0
}

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @ioremap(i64, i64) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
