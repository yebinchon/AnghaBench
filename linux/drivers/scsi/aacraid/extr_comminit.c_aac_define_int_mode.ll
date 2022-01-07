; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_comminit.c_aac_define_int_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_comminit.c_aac_define_int_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, i32, i32, i64, %struct.TYPE_4__*, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@PMC_DEVICE_S6 = common dso_local global i64 0, align 8
@AAC_NUM_MGT_FIB = common dso_local global i32 0, align 4
@AAC_MAX_MSIX = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_AFFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MSIX not supported!! Will try INTX 0x%x.\0A\00", align 1
@AAC_COMM_MESSAGE_TYPE3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_define_int_mode(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %7 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %12 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %11, i32 0, i32 6
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PMC_DEVICE_S6, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %20 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18, %10, %1
  %24 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %25 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %27 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %32 = add nsw i32 %30, %31
  %33 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %34 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %138

35:                                               ; preds = %18
  %36 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %37 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 (...) @num_online_cpus()
  %40 = trunc i64 %39 to i32
  %41 = call i32 @min(i32 %38, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %44 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AAC_MAX_MSIX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @AAC_MAX_MSIX, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %35
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %86

53:                                               ; preds = %50
  %54 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %55 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %54, i32 0, i32 6
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %58 = call i64 @pci_find_capability(%struct.TYPE_5__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %53
  store i32 2, i32* %5, align 4
  %61 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %62 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %61, i32 0, i32 6
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %67 = load i32, i32* @PCI_IRQ_AFFINITY, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_5__* %63, i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %74 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* %3, align 4
  store i32 %75, i32* %4, align 4
  br label %85

76:                                               ; preds = %60
  %77 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %78 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %80 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %79, i32 0, i32 6
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %76, %72
  br label %86

86:                                               ; preds = %85, %53, %50
  %87 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %88 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  store i32 1, i32* %4, align 4
  %92 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %93 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %105

94:                                               ; preds = %86
  %95 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %96 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %103 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %91
  %106 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %107 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AAC_COMM_MESSAGE_TYPE3, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %113 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %118 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %117, i32 0, i32 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %123 = add nsw i32 %121, %122
  %124 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %125 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %138

126:                                              ; preds = %111, %105
  %127 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %128 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %127, i32 0, i32 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %4, align 4
  %135 = sdiv i32 %133, %134
  %136 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %137 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %23, %126, %116
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i64 @pci_find_capability(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
