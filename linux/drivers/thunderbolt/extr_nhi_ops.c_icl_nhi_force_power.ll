; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_force_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_force_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { i32 }

@VS_CAP_22 = common dso_local global i32 0, align 4
@VS_CAP_22_DMA_DELAY_MASK = common dso_local global i32 0, align 4
@VS_CAP_22_DMA_DELAY_SHIFT = common dso_local global i32 0, align 4
@VS_CAP_22_FORCE_POWER = common dso_local global i32 0, align 4
@VS_CAP_9 = common dso_local global i32 0, align 4
@VS_CAP_9_FW_READY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_nhi*, i32)* @icl_nhi_force_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_nhi_force_power(%struct.tb_nhi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_nhi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %10 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VS_CAP_22, align 4
  %13 = call i32 @pci_read_config_dword(i32 %11, i32 %12, i32* %6)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @VS_CAP_22_DMA_DELAY_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @VS_CAP_22_DMA_DELAY_SHIFT, align 4
  %22 = shl i32 34, %21
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @VS_CAP_22_FORCE_POWER, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @VS_CAP_22_FORCE_POWER, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %16
  %34 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %35 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VS_CAP_22, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @pci_write_config_dword(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %33
  store i32 10, i32* %7, align 4
  br label %43

43:                                               ; preds = %56, %42
  %44 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %45 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VS_CAP_9, align 4
  %48 = call i32 @pci_read_config_dword(i32 %46, i32 %47, i32* %8)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @VS_CAP_9_FW_READY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %64

54:                                               ; preds = %43
  %55 = call i32 @msleep(i32 250)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %43, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %53
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
