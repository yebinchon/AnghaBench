; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_configure_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_configure_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, %struct.TYPE_3__, i64, %struct.nvme_queue*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_queue = type { i32, i32, i64, i32, i32 }

@NVME_REG_VS = common dso_local global i64 0, align 8
@NVME_REG_CSTS = common dso_local global i64 0, align 8
@NVME_CSTS_NSSRO = common dso_local global i32 0, align 4
@NVME_AQ_DEPTH = common dso_local global i32 0, align 4
@NVME_REG_AQA = common dso_local global i64 0, align 8
@NVME_REG_ASQ = common dso_local global i64 0, align 8
@NVME_REG_ACQ = common dso_local global i64 0, align 8
@NVMEQ_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_pci_configure_admin_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_pci_configure_admin_queue(%struct.nvme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_queue*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  %7 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %8 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %9 = call i32 @db_bar_size(%struct.nvme_dev* %8, i32 0)
  %10 = call i32 @nvme_remap_bar(%struct.nvme_dev* %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %139

15:                                               ; preds = %1
  %16 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NVME_REG_VS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = call i32 @NVME_VS(i32 1, i32 1, i32 0)
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @NVME_CAP_NSSRC(i32 %28)
  br label %31

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi i32 [ %29, %24 ], [ 0, %30 ]
  %33 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %34 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NVME_REG_CSTS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = load i32, i32* @NVME_CSTS_NSSRO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load i32, i32* @NVME_CSTS_NSSRO, align 4
  %51 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NVME_REG_CSTS, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %49, %39, %31
  %58 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %58, i32 0, i32 1
  %60 = call i32 @nvme_disable_ctrl(%struct.TYPE_3__* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %139

65:                                               ; preds = %57
  %66 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %67 = load i32, i32* @NVME_AQ_DEPTH, align 4
  %68 = call i32 @nvme_alloc_queue(%struct.nvme_dev* %66, i32 0, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %139

73:                                               ; preds = %65
  %74 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %74, i32 0, i32 3
  %76 = load %struct.nvme_queue*, %struct.nvme_queue** %75, align 8
  %77 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %76, i64 0
  store %struct.nvme_queue* %77, %struct.nvme_queue** %6, align 8
  %78 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %79 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %88 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NVME_REG_AQA, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %94 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %97 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NVME_REG_ASQ, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @lo_hi_writeq(i32 %95, i64 %100)
  %102 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %103 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %106 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NVME_REG_ACQ, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @lo_hi_writeq(i32 %104, i64 %109)
  %111 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %112 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %111, i32 0, i32 1
  %113 = call i32 @nvme_enable_ctrl(%struct.TYPE_3__* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %73
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %139

118:                                              ; preds = %73
  %119 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %120 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %122 = call i32 @nvme_init_queue(%struct.nvme_queue* %121, i32 0)
  %123 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %124 = call i32 @queue_request_irq(%struct.nvme_queue* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %129 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %139

133:                                              ; preds = %118
  %134 = load i32, i32* @NVMEQ_ENABLED, align 4
  %135 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %136 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %135, i32 0, i32 1
  %137 = call i32 @set_bit(i32 %134, i32* %136)
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %133, %127, %116, %71, %63, %13
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @nvme_remap_bar(%struct.nvme_dev*, i32) #1

declare dso_local i32 @db_bar_size(%struct.nvme_dev*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @NVME_VS(i32, i32, i32) #1

declare dso_local i32 @NVME_CAP_NSSRC(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @nvme_disable_ctrl(%struct.TYPE_3__*) #1

declare dso_local i32 @nvme_alloc_queue(%struct.nvme_dev*, i32, i32) #1

declare dso_local i32 @lo_hi_writeq(i32, i64) #1

declare dso_local i32 @nvme_enable_ctrl(%struct.TYPE_3__*) #1

declare dso_local i32 @nvme_init_queue(%struct.nvme_queue*, i32) #1

declare dso_local i32 @queue_request_irq(%struct.nvme_queue*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
