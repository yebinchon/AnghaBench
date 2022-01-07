; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i64, i32, i64, i64, i32 }

@CSIO_IM_NONE = common dso_local global i64 0, align 8
@CSIO_HWF_HOST_INTR_ENABLED = common dso_local global i32 0, align 4
@csio_msi = common dso_local global i32 0, align 4
@CSIO_IM_MSIX = common dso_local global i64 0, align 8
@CSIO_HWF_USING_SOFT_PARAMS = common dso_local global i32 0, align 4
@CSIO_EXTRA_MSI_IQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Reducing sqsets to %d\0A\00", align 1
@CSIO_IM_MSI = common dso_local global i64 0, align 8
@CSIO_IM_INTX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Using %s interrupt mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MSIX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_intr_enable(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %4 = load i64, i64* @CSIO_IM_NONE, align 8
  %5 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %6 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %5, i32 0, i32 0
  store i64 %4, i64* %6, align 8
  %7 = load i32, i32* @CSIO_HWF_HOST_INTR_ENABLED, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %10 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* @csio_msi, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %17 = call i32 @csio_enable_msix(%struct.csio_hw* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @CSIO_IM_MSIX, align 8
  %21 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %22 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %84

23:                                               ; preds = %15, %1
  %24 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %25 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CSIO_HWF_USING_SOFT_PARAMS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %32 = call i32 @csio_is_hw_master(%struct.csio_hw* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* @CSIO_EXTRA_MSI_IQS, align 4
  store i32 %35, i32* %3, align 4
  %36 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %37 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %40 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = icmp slt i64 %38, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %34
  %47 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %48 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %49 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @csio_dbg(%struct.csio_hw* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %57 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %58 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %59, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @csio_reduce_sqsets(%struct.csio_hw* %56, i8* %63)
  br label %65

65:                                               ; preds = %46, %34
  br label %66

66:                                               ; preds = %65, %30
  %67 = load i32, i32* @csio_msi, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %71 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pci_enable_msi(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* @CSIO_IM_MSI, align 8
  %77 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %78 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %83

79:                                               ; preds = %69, %66
  %80 = load i64, i64* @CSIO_IM_INTX, align 8
  %81 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %82 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %19
  %85 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %86 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %87 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CSIO_IM_MSIX, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %100

92:                                               ; preds = %84
  %93 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %94 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CSIO_IM_MSI, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  br label %100

100:                                              ; preds = %92, %91
  %101 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %91 ], [ %99, %92 ]
  %102 = call i32 @csio_dbg(%struct.csio_hw* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  ret void
}

declare dso_local i32 @csio_enable_msix(%struct.csio_hw*) #1

declare dso_local i32 @csio_is_hw_master(%struct.csio_hw*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i8*) #1

declare dso_local i32 @csio_reduce_sqsets(%struct.csio_hw*, i8*) #1

declare dso_local i32 @pci_enable_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
