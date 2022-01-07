; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_msi_set_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_msi_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, i32*, i32)* @vfio_msi_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_msi_set_block(%struct.vfio_pci_device* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vfio_pci_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %7, align 8
  %18 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add i32 %22, %23
  %25 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %7, align 8
  %26 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21, %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %87

32:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %61, %32
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %44, label %66

44:                                               ; preds = %42
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ %52, %47 ], [ -1, %53 ]
  store i32 %55, i32* %15, align 4
  %56 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @vfio_msi_set_vector_signal(%struct.vfio_pci_device* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %34

66:                                               ; preds = %42
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %81, %69
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @vfio_msi_set_vector_signal(%struct.vfio_pci_device* %77, i32 %78, i32 -1, i32 %79)
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %13, align 4
  br label %72

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %29
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @vfio_msi_set_vector_signal(%struct.vfio_pci_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
