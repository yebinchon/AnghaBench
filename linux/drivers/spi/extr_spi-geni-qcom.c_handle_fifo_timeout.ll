; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_handle_fifo_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_handle_fifo_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_geni_master = type { i32, i32, i32, i32, %struct.geni_se }
%struct.geni_se = type { i64 }

@CMD_CANCEL = common dso_local global i32 0, align 4
@SE_GENI_TX_WATERMARK_REG = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to cancel/abort m_cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.spi_message*)* @handle_fifo_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_fifo_timeout(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.spi_geni_master*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.geni_se*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %10 = call %struct.spi_geni_master* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.spi_geni_master* %10, %struct.spi_geni_master** %5, align 8
  %11 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %12 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %11, i32 0, i32 4
  store %struct.geni_se* %12, %struct.geni_se** %8, align 8
  %13 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %14 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %13, i32 0, i32 2
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %18 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %17, i32 0, i32 1
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load i32, i32* @CMD_CANCEL, align 4
  %21 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %22 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.geni_se*, %struct.geni_se** %8, align 8
  %24 = call i32 @geni_se_cancel_m_cmd(%struct.geni_se* %23)
  %25 = load %struct.geni_se*, %struct.geni_se** %8, align 8
  %26 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SE_GENI_TX_WATERMARK_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 0, i64 %29)
  %31 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %32 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %31, i32 0, i32 2
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %36 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %35, i32 0, i32 1
  %37 = load i32, i32* @HZ, align 4
  %38 = call i64 @wait_for_completion_timeout(i32* %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %67

42:                                               ; preds = %2
  %43 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %44 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %43, i32 0, i32 2
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %48 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %47, i32 0, i32 1
  %49 = call i32 @reinit_completion(i32* %48)
  %50 = load %struct.geni_se*, %struct.geni_se** %8, align 8
  %51 = call i32 @geni_se_abort_m_cmd(%struct.geni_se* %50)
  %52 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %53 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %52, i32 0, i32 2
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %57 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %56, i32 0, i32 1
  %58 = load i32, i32* @HZ, align 4
  %59 = call i64 @wait_for_completion_timeout(i32* %57, i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %42
  %63 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %64 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %41, %62, %42
  ret void
}

declare dso_local %struct.spi_geni_master* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @geni_se_cancel_m_cmd(%struct.geni_se*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @geni_se_abort_m_cmd(%struct.geni_se*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
