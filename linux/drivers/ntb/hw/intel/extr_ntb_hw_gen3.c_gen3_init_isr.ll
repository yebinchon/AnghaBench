; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen3.c_gen3_init_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen3.c_gen3_init_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, i32 }

@GEN3_DB_MSIX_VECTOR_COUNT = common dso_local global i32 0, align 4
@GEN3_INTVEC_OFFSET = common dso_local global i32 0, align 4
@NTB_HWERR_MSIX_VECTOR32_BAD = common dso_local global i32 0, align 4
@GEN3_DB_MSIX_VECTOR_SHIFT = common dso_local global i32 0, align 4
@GEN3_DB_TOTAL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ntb_dev*)* @gen3_init_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen3_init_isr(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca %struct.intel_ntb_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @GEN3_DB_MSIX_VECTOR_COUNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %11 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GEN3_INTVEC_OFFSET, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i32 @iowrite8(i32 %9, i32 %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %23 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NTB_HWERR_MSIX_VECTOR32_BAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i32, i32* @GEN3_DB_MSIX_VECTOR_COUNT, align 4
  %30 = sub nsw i32 %29, 2
  %31 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %32 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GEN3_INTVEC_OFFSET, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @GEN3_DB_MSIX_VECTOR_COUNT, align 4
  %37 = sub nsw i32 %36, 1
  %38 = add nsw i32 %35, %37
  %39 = call i32 @iowrite8(i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %28, %21
  %41 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %42 = load i32, i32* @GEN3_DB_MSIX_VECTOR_COUNT, align 4
  %43 = load i32, i32* @GEN3_DB_MSIX_VECTOR_COUNT, align 4
  %44 = load i32, i32* @GEN3_DB_MSIX_VECTOR_SHIFT, align 4
  %45 = load i32, i32* @GEN3_DB_TOTAL_SHIFT, align 4
  %46 = call i32 @ndev_init_isr(%struct.intel_ntb_dev* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  ret i32 %46
}

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ndev_init_isr(%struct.intel_ntb_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
