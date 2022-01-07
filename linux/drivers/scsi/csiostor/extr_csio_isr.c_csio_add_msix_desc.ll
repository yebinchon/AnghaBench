; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_add_msix_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_add_msix_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, %struct.csio_msix_entries* }
%struct.csio_msix_entries = type { i32 }

@CSIO_EXTRA_VECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"csio-%02x:%02x:%x-nondata\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"csio-%02x:%02x:%x-fwevt\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"csio-%02x:%02x:%x-scsi%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_add_msix_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_add_msix_desc(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_msix_entries*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %8 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %9 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %8, i32 0, i32 1
  %10 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %9, align 8
  %11 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %10, i64 0
  store %struct.csio_msix_entries* %11, %struct.csio_msix_entries** %4, align 8
  %12 = load i32, i32* @CSIO_EXTRA_VECS, align 4
  store i32 %12, i32* %5, align 4
  store i32 3, i32* %6, align 4
  %13 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %14 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %19 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @memset(i32 %20, i32 0, i32 %22)
  %24 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %25 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %29 = call i32 @CSIO_PCI_BUS(%struct.csio_hw* %28)
  %30 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %31 = call i32 @CSIO_PCI_DEV(%struct.csio_hw* %30)
  %32 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %33 = call i32 @CSIO_PCI_FUNC(%struct.csio_hw* %32)
  %34 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %26, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %33)
  %35 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %36 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %35, i32 1
  store %struct.csio_msix_entries* %36, %struct.csio_msix_entries** %4, align 8
  %37 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %38 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @memset(i32 %39, i32 0, i32 %41)
  %43 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %44 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %48 = call i32 @CSIO_PCI_BUS(%struct.csio_hw* %47)
  %49 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %50 = call i32 @CSIO_PCI_DEV(%struct.csio_hw* %49)
  %51 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %52 = call i32 @CSIO_PCI_FUNC(%struct.csio_hw* %51)
  %53 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %45, i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50, i32 %52)
  %54 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %55 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %54, i32 1
  store %struct.csio_msix_entries* %55, %struct.csio_msix_entries** %4, align 8
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %82, %1
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %63 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @memset(i32 %64, i32 0, i32 %66)
  %68 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %69 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %73 = call i32 @CSIO_PCI_BUS(%struct.csio_hw* %72)
  %74 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %75 = call i32 @CSIO_PCI_DEV(%struct.csio_hw* %74)
  %76 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %77 = call i32 @CSIO_PCI_FUNC(%struct.csio_hw* %76)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @CSIO_EXTRA_VECS, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %70, i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %75, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %61
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  %85 = load %struct.csio_msix_entries*, %struct.csio_msix_entries** %4, align 8
  %86 = getelementptr inbounds %struct.csio_msix_entries, %struct.csio_msix_entries* %85, i32 1
  store %struct.csio_msix_entries* %86, %struct.csio_msix_entries** %4, align 8
  br label %57

87:                                               ; preds = %57
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @CSIO_PCI_BUS(%struct.csio_hw*) #1

declare dso_local i32 @CSIO_PCI_DEV(%struct.csio_hw*) #1

declare dso_local i32 @CSIO_PCI_FUNC(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
