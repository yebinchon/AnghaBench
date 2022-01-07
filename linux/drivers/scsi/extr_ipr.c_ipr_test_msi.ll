; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_test_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_test_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@IPR_PCII_IOA_TRANS_TO_OPER = common dso_local global i32 0, align 4
@IPR_PCII_IO_DEBUG_ACKNOWLEDGE = common dso_local global i32 0, align 4
@ipr_test_intr = common dso_local global i32 0, align 4
@IPR_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can not assign irq %d\0A\00", align 1
@ipr_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"IRQ assigned: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"MSI test failed.  Falling back to LSI.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"MSI test succeeded.\0A\00", align 1
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_ioa_cfg*, %struct.pci_dev*)* @ipr_test_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_test_msi(%struct.ipr_ioa_cfg* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = call i32 @pci_irq_vector(%struct.pci_dev* %10, i32 0)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @ENTER, align 4
  %13 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %20, i32 0, i32 2
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %26 = load i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %27 = xor i32 %26, -1
  %28 = call i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg* %25, i32 %27)
  %29 = load i32, i32* @IPR_PCII_IO_DEBUG_ACKNOWLEDGE, align 4
  %30 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel(i32 %29, i32 %33)
  %35 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @readl(i32 %38)
  store volatile i32 %39, i32* %7, align 4
  %40 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ipr_test_intr, align 4
  %49 = load i32, i32* @IPR_NAME, align 4
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %51 = call i32 @request_irq(i32 %47, i32 %48, i32 0, i32 %49, %struct.ipr_ioa_cfg* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %131

60:                                               ; preds = %2
  %61 = load i64, i64* @ipr_debug, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32*, i8*, ...) @dev_info(i32* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* @IPR_PCII_IO_DEBUG_ACKNOWLEDGE, align 4
  %71 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %72 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @writel(i32 %70, i32 %74)
  %76 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %77 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @readl(i32 %79)
  store volatile i32 %80, i32* %7, align 4
  %81 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %82 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %85 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @HZ, align 4
  %88 = call i32 @wait_event_timeout(i32 %83, i64 %86, i32 %87)
  %89 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %90 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @spin_lock_irqsave(i32 %93, i64 %94)
  %96 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %97 = load i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %98 = xor i32 %97, -1
  %99 = call i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg* %96, i32 %98)
  %100 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %101 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %69
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = call i32 (i32*, i8*, ...) @dev_info(i32* %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %118

110:                                              ; preds = %69
  %111 = load i64, i64* @ipr_debug, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = call i32 (i32*, i8*, ...) @dev_info(i32* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %110
  br label %118

118:                                              ; preds = %117, %104
  %119 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %120 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32 %123, i64 %124)
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %128 = call i32 @free_irq(i32 %126, %struct.ipr_ioa_cfg* %127)
  %129 = load i32, i32* @LEAVE, align 4
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %118, %54
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ipr_ioa_cfg*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ipr_ioa_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
