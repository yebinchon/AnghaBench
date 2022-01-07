; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mmio.c_isst_if_mmio_rd_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mmio.c_isst_if_mmio_rd_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_if_device = type { i32, i64 }
%struct.isst_if_io_reg = type { i32, i32, i64, i32 }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @isst_if_mmio_rd_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isst_if_mmio_rd_wr(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isst_if_device*, align 8
  %9 = alloca %struct.isst_if_io_reg*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.isst_if_io_reg*
  store %struct.isst_if_io_reg* %12, %struct.isst_if_io_reg** %9, align 8
  %13 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %14 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %19 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 208
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %3
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %94

25:                                               ; preds = %17
  %26 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %27 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %32 = call i32 @capable(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @EPERM, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %4, align 8
  br label %94

37:                                               ; preds = %30, %25
  %38 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %39 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.pci_dev* @isst_if_get_pci_dev(i32 %40, i32 0, i32 0, i32 1)
  store %struct.pci_dev* %41, %struct.pci_dev** %10, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %43 = icmp ne %struct.pci_dev* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* @EINVAL, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %4, align 8
  br label %94

47:                                               ; preds = %37
  %48 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %49 = call %struct.isst_if_device* @pci_get_drvdata(%struct.pci_dev* %48)
  store %struct.isst_if_device* %49, %struct.isst_if_device** %8, align 8
  %50 = load %struct.isst_if_device*, %struct.isst_if_device** %8, align 8
  %51 = icmp ne %struct.isst_if_device* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub nsw i64 0, %53
  store i64 %54, i64* %4, align 8
  br label %94

55:                                               ; preds = %47
  %56 = load %struct.isst_if_device*, %struct.isst_if_device** %8, align 8
  %57 = getelementptr inbounds %struct.isst_if_device, %struct.isst_if_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %60 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %65 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.isst_if_device*, %struct.isst_if_device** %8, align 8
  %68 = getelementptr inbounds %struct.isst_if_device, %struct.isst_if_device* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %71 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = call i32 @writel(i32 %66, i64 %74)
  %76 = load i32*, i32** %6, align 8
  store i32 1, i32* %76, align 4
  br label %90

77:                                               ; preds = %55
  %78 = load %struct.isst_if_device*, %struct.isst_if_device** %8, align 8
  %79 = getelementptr inbounds %struct.isst_if_device, %struct.isst_if_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %82 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = call i32 @readl(i64 %85)
  %87 = load %struct.isst_if_io_reg*, %struct.isst_if_io_reg** %9, align 8
  %88 = getelementptr inbounds %struct.isst_if_io_reg, %struct.isst_if_io_reg* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %6, align 8
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %77, %63
  %91 = load %struct.isst_if_device*, %struct.isst_if_device** %8, align 8
  %92 = getelementptr inbounds %struct.isst_if_device, %struct.isst_if_device* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  store i64 0, i64* %4, align 8
  br label %94

94:                                               ; preds = %90, %52, %44, %34, %22
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.pci_dev* @isst_if_get_pci_dev(i32, i32, i32, i32) #1

declare dso_local %struct.isst_if_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
