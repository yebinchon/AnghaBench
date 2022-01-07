; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_msi = type { i32, i32, i32, i64, i64, i64 }

@EQ_MEM_REGION_SIZE = common dso_local global i32 0, align 4
@IPROC_MSI_EQ_PAGE = common dso_local global i32 0, align 4
@IPROC_MSI_EQ_PAGE_UPPER = common dso_local global i32 0, align 4
@MSI_MEM_REGION_SIZE = common dso_local global i32 0, align 4
@IPROC_MSI_PAGE = common dso_local global i32 0, align 4
@IPROC_MSI_PAGE_UPPER = common dso_local global i32 0, align 4
@IPROC_MSI_INTR_EN = common dso_local global i32 0, align 4
@IPROC_MSI_INT_N_EVENT = common dso_local global i32 0, align 4
@IPROC_MSI_EQ_EN = common dso_local global i32 0, align 4
@IPROC_MSI_CTRL = common dso_local global i32 0, align 4
@IPROC_MSI_INTS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_msi*)* @iproc_msi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_msi_enable(%struct.iproc_msi* %0) #0 {
  %2 = alloca %struct.iproc_msi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.iproc_msi* %0, %struct.iproc_msi** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %11 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %16 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @EQ_MEM_REGION_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %6, align 8
  %23 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %24 = load i32, i32* @IPROC_MSI_EQ_PAGE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @lower_32_bits(i64 %26)
  %28 = call i32 @iproc_msi_write_reg(%struct.iproc_msi* %23, i32 %24, i32 %25, i32 %27)
  %29 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %30 = load i32, i32* @IPROC_MSI_EQ_PAGE_UPPER, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @upper_32_bits(i64 %32)
  %34 = call i32 @iproc_msi_write_reg(%struct.iproc_msi* %29, i32 %30, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %14
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %8

38:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %42 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %39
  %46 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %47 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @MSI_MEM_REGION_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  store i64 %53, i64* %7, align 8
  %54 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %55 = load i32, i32* @IPROC_MSI_PAGE, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @lower_32_bits(i64 %57)
  %59 = call i32 @iproc_msi_write_reg(%struct.iproc_msi* %54, i32 %55, i32 %56, i32 %58)
  %60 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %61 = load i32, i32* @IPROC_MSI_PAGE_UPPER, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @upper_32_bits(i64 %63)
  %65 = call i32 @iproc_msi_write_reg(%struct.iproc_msi* %60, i32 %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %45
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %39

69:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %106, %69
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %73 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %70
  %77 = load i32, i32* @IPROC_MSI_INTR_EN, align 4
  %78 = load i32, i32* @IPROC_MSI_INT_N_EVENT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IPROC_MSI_EQ_EN, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %5, align 4
  %82 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %83 = load i32, i32* @IPROC_MSI_CTRL, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @iproc_msi_write_reg(%struct.iproc_msi* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %88 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %76
  %92 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %93 = load i32, i32* @IPROC_MSI_INTS_EN, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @iproc_msi_read_reg(%struct.iproc_msi* %92, i32 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @BIT(i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.iproc_msi*, %struct.iproc_msi** %2, align 8
  %101 = load i32, i32* @IPROC_MSI_INTS_EN, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @iproc_msi_write_reg(%struct.iproc_msi* %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %91, %76
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %70

109:                                              ; preds = %70
  ret void
}

declare dso_local i32 @iproc_msi_write_reg(%struct.iproc_msi*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @iproc_msi_read_reg(%struct.iproc_msi*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
