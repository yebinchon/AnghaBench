; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-st-ssc4.c_spi_st_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-st-ssc4.c_spi_st_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.spi_st = type { i32, i32, i64, i32, i32, i32 }

@SSC_CTL = common dso_local global i64 0, align 8
@SSC_RBUF = common dso_local global i64 0, align 8
@SSC_IEN_TEEN = common dso_local global i32 0, align 4
@SSC_IEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @spi_st_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_st_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.spi_st*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.spi_st* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.spi_st* %10, %struct.spi_st** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %15 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %20 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 8
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %27 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %26, i32 0, i32 0
  store i32 2, i32* %27, align 8
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  %32 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %33 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %83

34:                                               ; preds = %3
  %35 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %39
  %46 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %47 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %46, i32 0, i32 0
  store i32 2, i32* %47, align 8
  %48 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 2
  %52 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %53 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %55 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SSC_CTL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl_relaxed(i64 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, 15
  %62 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %63 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SSC_CTL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i32 %61, i64 %66)
  %68 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %69 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SSC_RBUF, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl_relaxed(i64 %72)
  br label %82

74:                                               ; preds = %39, %34
  %75 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %76 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %81 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %45
  br label %83

83:                                               ; preds = %82, %25
  %84 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %85 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %84, i32 0, i32 3
  %86 = call i32 @reinit_completion(i32* %85)
  %87 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %88 = call i32 @ssc_write_tx_fifo(%struct.spi_st* %87)
  %89 = load i32, i32* @SSC_IEN_TEEN, align 4
  %90 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %91 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SSC_IEN, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel_relaxed(i32 %89, i64 %94)
  %96 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %97 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %96, i32 0, i32 3
  %98 = call i32 @wait_for_completion(i32* %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %83
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.spi_st*, %struct.spi_st** %7, align 8
  %104 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SSC_CTL, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel_relaxed(i32 %102, i64 %107)
  br label %109

109:                                              ; preds = %101, %83
  %110 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %111 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @spi_finalize_current_transfer(i32 %112)
  %114 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %115 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  ret i32 %116
}

declare dso_local %struct.spi_st* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ssc_write_tx_fifo(%struct.spi_st*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @spi_finalize_current_transfer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
