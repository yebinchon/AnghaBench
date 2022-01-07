; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_cache_hwparams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_cache_hwparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, %struct.dwc3_hwparams }
%struct.dwc3_hwparams = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@DWC3_GHWPARAMS0 = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS1 = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS2 = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS3 = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS4 = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS5 = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS6 = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS7 = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_cache_hwparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_cache_hwparams(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.dwc3_hwparams*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 1
  store %struct.dwc3_hwparams* %5, %struct.dwc3_hwparams** %3, align 8
  %6 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %7 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DWC3_GHWPARAMS0, align 4
  %10 = call i8* @dwc3_readl(i32 %8, i32 %9)
  %11 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %11, i32 0, i32 8
  store i8* %10, i8** %12, align 8
  %13 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DWC3_GHWPARAMS1, align 4
  %17 = call i8* @dwc3_readl(i32 %15, i32 %16)
  %18 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %19 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %21 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DWC3_GHWPARAMS2, align 4
  %24 = call i8* @dwc3_readl(i32 %22, i32 %23)
  %25 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %26 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DWC3_GHWPARAMS3, align 4
  %31 = call i8* @dwc3_readl(i32 %29, i32 %30)
  %32 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DWC3_GHWPARAMS4, align 4
  %38 = call i8* @dwc3_readl(i32 %36, i32 %37)
  %39 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %40 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %42 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DWC3_GHWPARAMS5, align 4
  %45 = call i8* @dwc3_readl(i32 %43, i32 %44)
  %46 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %49 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DWC3_GHWPARAMS6, align 4
  %52 = call i8* @dwc3_readl(i32 %50, i32 %51)
  %53 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %54 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %56 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DWC3_GHWPARAMS7, align 4
  %59 = call i8* @dwc3_readl(i32 %57, i32 %58)
  %60 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %61 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DWC3_GHWPARAMS8, align 4
  %66 = call i8* @dwc3_readl(i32 %64, i32 %65)
  %67 = load %struct.dwc3_hwparams*, %struct.dwc3_hwparams** %3, align 8
  %68 = getelementptr inbounds %struct.dwc3_hwparams, %struct.dwc3_hwparams* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  ret void
}

declare dso_local i8* @dwc3_readl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
