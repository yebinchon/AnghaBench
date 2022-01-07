; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_icp_multi.c_icp_multi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_icp_multi.c_icp_multi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@ICP_MULTI_INT_EN = common dso_local global i64 0, align 8
@ICP_MULTI_INT_MASK = common dso_local global i32 0, align 4
@ICP_MULTI_INT_STAT = common dso_local global i64 0, align 8
@ICP_MULTI_DAC_CSR = common dso_local global i64 0, align 8
@ICP_MULTI_AO = common dso_local global i64 0, align 8
@ICP_MULTI_DAC_CSR_ST = common dso_local global i32 0, align 4
@ICP_MULTI_DO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @icp_multi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_multi_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ICP_MULTI_INT_EN, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writew(i32 0, i64 %9)
  %11 = load i32, i32* @ICP_MULTI_INT_MASK, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ICP_MULTI_INT_STAT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writew(i32 %11, i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %47, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ICP_MULTI_DAC_CSR_CHAN(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ICP_MULTI_DAC_CSR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writew(i32 %24, i64 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICP_MULTI_AO, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writew(i32 0, i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ICP_MULTI_DAC_CSR_ST, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ICP_MULTI_DAC_CSR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writew(i32 %39, i64 %44)
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %21
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ICP_MULTI_DO, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writew(i32 0, i64 %55)
  ret i32 0
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @ICP_MULTI_DAC_CSR_CHAN(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
