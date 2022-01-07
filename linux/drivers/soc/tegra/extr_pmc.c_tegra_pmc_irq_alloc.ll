; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_irq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_irq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.tegra_pmc* }
%struct.tegra_pmc = type { i32, %struct.TYPE_5__*, %struct.tegra_pmc_soc* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tegra_pmc_soc = type { i32, %struct.tegra_wake_event* }
%struct.tegra_wake_event = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.irq_fwspec = type { i32, i64*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GIC_SPI = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @tegra_pmc_irq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pmc_irq_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tegra_pmc*, align 8
  %11 = alloca %struct.tegra_pmc_soc*, align 8
  %12 = alloca %struct.irq_fwspec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tegra_wake_event*, align 8
  %16 = alloca %struct.irq_fwspec, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %18 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %17, i32 0, i32 0
  %19 = load %struct.tegra_pmc*, %struct.tegra_pmc** %18, align 8
  store %struct.tegra_pmc* %19, %struct.tegra_pmc** %10, align 8
  %20 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %21 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %20, i32 0, i32 2
  %22 = load %struct.tegra_pmc_soc*, %struct.tegra_pmc_soc** %21, align 8
  store %struct.tegra_pmc_soc* %22, %struct.tegra_pmc_soc** %11, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %24, %struct.irq_fwspec** %12, align 8
  store i32 0, i32* %14, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %164

33:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %145, %33
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.tegra_pmc_soc*, %struct.tegra_pmc_soc** %11, align 8
  %37 = getelementptr inbounds %struct.tegra_pmc_soc, %struct.tegra_pmc_soc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %148

40:                                               ; preds = %34
  %41 = load %struct.tegra_pmc_soc*, %struct.tegra_pmc_soc** %11, align 8
  %42 = getelementptr inbounds %struct.tegra_pmc_soc, %struct.tegra_pmc_soc* %41, i32 0, i32 1
  %43 = load %struct.tegra_wake_event*, %struct.tegra_wake_event** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.tegra_wake_event, %struct.tegra_wake_event* %43, i64 %45
  store %struct.tegra_wake_event* %46, %struct.tegra_wake_event** %15, align 8
  %47 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %48 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %106

51:                                               ; preds = %40
  %52 = load %struct.tegra_wake_event*, %struct.tegra_wake_event** %15, align 8
  %53 = getelementptr inbounds %struct.tegra_wake_event, %struct.tegra_wake_event* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %56 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %54, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %145

62:                                               ; preds = %51
  %63 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.tegra_wake_event*, %struct.tegra_wake_event** %15, align 8
  %66 = getelementptr inbounds %struct.tegra_wake_event, %struct.tegra_wake_event* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %69 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %68, i32 0, i32 0
  %70 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %71 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %63, i32 %64, i64 %67, i32* %69, %struct.tegra_pmc* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %148

75:                                               ; preds = %62
  %76 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %77 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 2
  store i32* %81, i32** %82, align 8
  %83 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 0
  store i32 3, i32* %83, align 8
  %84 = load i64, i64* @GIC_SPI, align 8
  %85 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.tegra_wake_event*, %struct.tegra_wake_event** %15, align 8
  %89 = getelementptr inbounds %struct.tegra_wake_event, %struct.tegra_wake_event* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  store i64 %90, i64* %93, align 8
  %94 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %95 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  store i64 %98, i64* %101, align 8
  %102 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %102, i32 %103, i32 %104, %struct.irq_fwspec* %16)
  store i32 %105, i32* %14, align 4
  br label %148

106:                                              ; preds = %40
  %107 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %108 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %111, label %144

111:                                              ; preds = %106
  %112 = load %struct.tegra_wake_event*, %struct.tegra_wake_event** %15, align 8
  %113 = getelementptr inbounds %struct.tegra_wake_event, %struct.tegra_wake_event* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %117 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %115, %120
  br i1 %121, label %133, label %122

122:                                              ; preds = %111
  %123 = load %struct.tegra_wake_event*, %struct.tegra_wake_event** %15, align 8
  %124 = getelementptr inbounds %struct.tegra_wake_event, %struct.tegra_wake_event* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %128 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %126, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %122, %111
  br label %145

134:                                              ; preds = %122
  %135 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.tegra_wake_event*, %struct.tegra_wake_event** %15, align 8
  %138 = getelementptr inbounds %struct.tegra_wake_event, %struct.tegra_wake_event* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %141 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %140, i32 0, i32 0
  %142 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %143 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %135, i32 %136, i64 %139, i32* %141, %struct.tegra_pmc* %142)
  store i32 %143, i32* %14, align 4
  br label %148

144:                                              ; preds = %106
  br label %145

145:                                              ; preds = %144, %133, %61
  %146 = load i32, i32* %13, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %34

148:                                              ; preds = %134, %75, %74, %34
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.tegra_pmc_soc*, %struct.tegra_pmc_soc** %11, align 8
  %151 = getelementptr inbounds %struct.tegra_pmc_soc, %struct.tegra_pmc_soc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i64, i64* @ULONG_MAX, align 8
  %158 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %159 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %158, i32 0, i32 0
  %160 = load %struct.tegra_pmc*, %struct.tegra_pmc** %10, align 8
  %161 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %155, i32 %156, i64 %157, i32* %159, %struct.tegra_pmc* %160)
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %154, %148
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %162, %30
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, %struct.tegra_pmc*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
