; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_4__*, i64, i64, %struct.lpfc_sli }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.lpfc_sli = type { i32, i32, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"0325 Reset HBA Data: x%x x%x\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@HC_INITFF = common dso_local global i32 0, align 4
@LPFC_WARM_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_brdreset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_sli*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 6
  store %struct.lpfc_sli* %9, %struct.lpfc_sli** %4, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = load i32, i32* @KERN_INFO, align 4
  %12 = load i32, i32* @LOG_SLI, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ 0, %23 ]
  %26 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %24
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %24
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PCI_COMMAND, align 4
  %52 = call i64 @pci_read_config_word(i32 %50, i32 %51, i32* %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %141

57:                                               ; preds = %47
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PCI_COMMAND, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %64 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %62, %66
  %68 = call i32 @pci_write_config_word(i32 %60, i32 %61, i32 %67)
  %69 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %70 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %74 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @HC_INITFF, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @writel(i32 %77, i32 %80)
  %82 = call i32 @mdelay(i32 1)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @readl(i32 %85)
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @writel(i32 0, i32 %89)
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @readl(i32 %93)
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PCI_COMMAND, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @pci_write_config_word(i32 %97, i32 %98, i32 %99)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %134, %57
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %104 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %101
  %108 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %109 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %108, i32 0, i32 2
  %110 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %110, i64 %112
  store %struct.lpfc_sli_ring* %113, %struct.lpfc_sli_ring** %5, align 8
  %114 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %115 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %117 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %121 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %125 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %129 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %133 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %107
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %101

137:                                              ; preds = %101
  %138 = load i32, i32* @LPFC_WARM_START, align 4
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %137, %54
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
