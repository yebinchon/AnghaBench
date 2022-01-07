; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_pm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_pm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCI_CAP_ID_PM = common dso_local global i32 0, align 4
@PCI_PM_PMC = common dso_local global i64 0, align 8
@PCI_PM_CAP_VER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unsupported PM cap regs version (%u)\0A\00", align 1
@PCI_PM_D3_WAIT = common dso_local global i32 0, align 4
@PCI_PM_D3COLD_WAIT = common dso_local global i32 0, align 4
@PCI_PM_CAP_D1 = common dso_local global i32 0, align 4
@PCI_PM_CAP_D2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"supports%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" D1\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" D2\00", align 1
@PCI_PM_CAP_PME_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"PME# supported from%s%s%s%s%s\0A\00", align 1
@PCI_PM_CAP_PME_D0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" D0\00", align 1
@PCI_PM_CAP_PME_D1 = common dso_local global i32 0, align 4
@PCI_PM_CAP_PME_D2 = common dso_local global i32 0, align 4
@PCI_PM_CAP_PME_D3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" D3hot\00", align 1
@PCI_PM_CAP_PME_D3cold = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c" D3cold\00", align 1
@PCI_PM_CAP_PME_SHIFT = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i64 0, align 8
@PCI_STATUS_IMM_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_pm_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 8
  %8 = call i32 @pm_runtime_forbid(i32* %7)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 8
  %11 = call i32 @pm_runtime_set_active(i32* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 8
  %14 = call i32 @pm_runtime_enable(i32* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 8
  %17 = call i32 @device_enable_async_suspend(i32* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* @PCI_CAP_ID_PM, align 4
  %26 = call i32 @pci_find_capability(%struct.pci_dev* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %174

30:                                               ; preds = %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @PCI_PM_PMC, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @pci_read_config_word(%struct.pci_dev* %31, i64 %35, i32* %5)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PCI_PM_CAP_VER_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PCI_PM_CAP_VER_MASK, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @pci_err(%struct.pci_dev* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %174

47:                                               ; preds = %30
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @PCI_PM_D3_WAIT, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 11
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @PCI_PM_D3COLD_WAIT, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = call i32 @pci_bridge_d3_possible(%struct.pci_dev* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 4
  store i32 0, i32* %64, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 5
  store i32 0, i32* %66, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %68 = call i32 @pci_no_d1d2(%struct.pci_dev* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %112, label %70

70:                                               ; preds = %47
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PCI_PM_CAP_D1, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 4
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @PCI_PM_CAP_D2, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 5
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91, %86
  %97 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %110 = call i32 (%struct.pci_dev*, i8*, i8*, i8*, ...) @pci_info(%struct.pci_dev* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %103, i8* %109)
  br label %111

111:                                              ; preds = %96, %91
  br label %112

112:                                              ; preds = %111, %47
  %113 = load i32, i32* @PCI_PM_CAP_PME_MASK, align 4
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %163

118:                                              ; preds = %112
  %119 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @PCI_PM_CAP_PME_D0, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @PCI_PM_CAP_PME_D1, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @PCI_PM_CAP_PME_D2, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @PCI_PM_CAP_PME_D3, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @PCI_PM_CAP_PME_D3cold, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %150 = call i32 (%struct.pci_dev*, i8*, i8*, i8*, ...) @pci_info(%struct.pci_dev* %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %125, i8* %131, i8* %137, i8* %143, i8* %149)
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @PCI_PM_CAP_PME_SHIFT, align 4
  %153 = ashr i32 %151, %152
  %154 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %155 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 6
  store i32 1, i32* %157, align 4
  %158 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 8
  %160 = call i32 @device_set_wakeup_capable(i32* %159, i32 1)
  %161 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %162 = call i32 @pci_pme_active(%struct.pci_dev* %161, i32 0)
  br label %163

163:                                              ; preds = %118, %112
  %164 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %165 = load i64, i64* @PCI_STATUS, align 8
  %166 = call i32 @pci_read_config_word(%struct.pci_dev* %164, i64 %165, i32* %4)
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @PCI_STATUS_IMM_READY, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 7
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %29, %41, %171, %163
  ret void
}

declare dso_local i32 @pm_runtime_forbid(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @device_enable_async_suspend(i32*) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pci_bridge_d3_possible(%struct.pci_dev*) #1

declare dso_local i32 @pci_no_d1d2(%struct.pci_dev*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @pci_pme_active(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
