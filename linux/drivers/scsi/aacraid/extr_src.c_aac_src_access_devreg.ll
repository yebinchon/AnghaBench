; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_access_devreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_access_devreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.aac_dev = type { i32, i32 }

@MUnit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AAC_INT_ENABLE_TYPE1_MSIX = common dso_local global i32 0, align 4
@AAC_INT_ENABLE_TYPE1_INTX = common dso_local global i32 0, align 4
@AAC_INT_DISABLE_ALL = common dso_local global i32 0, align 4
@PMC_ALL_INTERRUPT_BITS = common dso_local global i32 0, align 4
@PMC_GLOBAL_INT_BIT2 = common dso_local global i32 0, align 4
@PMC_GLOBAL_INT_BIT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_src_access_devreg(%struct.aac_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %130 [
    i32 130, label %7
    i32 132, label %23
    i32 128, label %30
    i32 131, label %60
    i32 134, label %73
    i32 133, label %86
    i32 129, label %99
  ]

7:                                                ; preds = %2
  %8 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %10 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %11 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @AAC_INT_ENABLE_TYPE1_MSIX, align 4
  br label %18

16:                                               ; preds = %7
  %17 = load i32, i32* @AAC_INT_ENABLE_TYPE1_INTX, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %21 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call i32 @src_writel(%struct.aac_dev* %8, i32 %9, i32 %19)
  br label %131

23:                                               ; preds = %2
  %24 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %26 = load i32, i32* @AAC_INT_DISABLE_ALL, align 4
  %27 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %28 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = call i32 @src_writel(%struct.aac_dev* %24, i32 %25, i32 %26)
  br label %131

30:                                               ; preds = %2
  %31 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %33 = call i32 @src_readl(%struct.aac_dev* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, 64
  store i32 %35, i32* %5, align 4
  %36 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @src_writel(%struct.aac_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %42 = call i32 @src_readl(%struct.aac_dev* %40, i32 %41)
  %43 = load i32, i32* @PMC_ALL_INTERRUPT_BITS, align 4
  store i32 %43, i32* %5, align 4
  %44 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 1), align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @src_writel(%struct.aac_dev* %44, i32 %45, i32 %46)
  %48 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %50 = call i32 @src_readl(%struct.aac_dev* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PMC_GLOBAL_INT_BIT2, align 4
  %55 = load i32, i32* @PMC_GLOBAL_INT_BIT0, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  %59 = call i32 @src_writel(%struct.aac_dev* %51, i32 %52, i32 %58)
  br label %131

60:                                               ; preds = %2
  %61 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %63 = call i32 @src_readl(%struct.aac_dev* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, -65
  store i32 %65, i32* %5, align 4
  %66 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @src_writel(%struct.aac_dev* %66, i32 %67, i32 %68)
  %70 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %72 = call i32 @src_readl(%struct.aac_dev* %70, i32 %71)
  br label %131

73:                                               ; preds = %2
  %74 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %76 = call i32 @src_readl(%struct.aac_dev* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, 32
  store i32 %78, i32* %5, align 4
  %79 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @src_writel(%struct.aac_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %85 = call i32 @src_readl(%struct.aac_dev* %83, i32 %84)
  br label %131

86:                                               ; preds = %2
  %87 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %89 = call i32 @src_readl(%struct.aac_dev* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, 16
  store i32 %91, i32* %5, align 4
  %92 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @src_writel(%struct.aac_dev* %92, i32 %93, i32 %94)
  %96 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %98 = call i32 @src_readl(%struct.aac_dev* %96, i32 %97)
  br label %131

99:                                               ; preds = %2
  %100 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %102 = call i32 @src_readl(%struct.aac_dev* %100, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, 128
  store i32 %104, i32* %5, align 4
  %105 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @src_writel(%struct.aac_dev* %105, i32 %106, i32 %107)
  %109 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 2), align 4
  %111 = call i32 @src_readl(%struct.aac_dev* %109, i32 %110)
  %112 = load i32, i32* @PMC_ALL_INTERRUPT_BITS, align 4
  store i32 %112, i32* %5, align 4
  %113 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 1), align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @src_writel(%struct.aac_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 1), align 4
  %119 = call i32 @src_readl(%struct.aac_dev* %117, i32 %118)
  %120 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %122 = call i32 @src_readl(%struct.aac_dev* %120, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @PMC_GLOBAL_INT_BIT2, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = call i32 @src_writel(%struct.aac_dev* %123, i32 %124, i32 %128)
  br label %131

130:                                              ; preds = %2
  br label %131

131:                                              ; preds = %130, %99, %86, %73, %60, %30, %23, %18
  ret void
}

declare dso_local i32 @src_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @src_readl(%struct.aac_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
