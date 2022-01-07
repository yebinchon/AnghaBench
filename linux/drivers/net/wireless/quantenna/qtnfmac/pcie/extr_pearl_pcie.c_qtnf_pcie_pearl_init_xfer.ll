; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_init_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_init_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_pearl_state = type { %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i64, i64 }

@PEARL_TX_BD_SIZE_DEFAULT = common dso_local global i8* null, align 8
@PCIE_HHBM_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bad tx_bd_size value %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rx_bd_size_param %u is not power of two\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"rx_bd_size_param %u is too large\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to init h/w queues\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to allocate skb array\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to allocate bd table\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to allocate rx buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_pearl_state*, i32)* @qtnf_pcie_pearl_init_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_pcie_pearl_init_xfer(%struct.qtnf_pcie_pearl_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qtnf_pcie_pearl_state* %0, %struct.qtnf_pcie_pearl_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %4, align 8
  %10 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %9, i32 0, i32 0
  store %struct.qtnf_pcie_bus_priv* %10, %struct.qtnf_pcie_bus_priv** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** @PEARL_TX_BD_SIZE_DEFAULT, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @is_power_of_2(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PCIE_HHBM_MAX_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24, %16
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** @PEARL_TX_BD_SIZE_DEFAULT, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %34 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %38 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %41 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %43 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %45 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %50 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @is_power_of_2(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %48, %39
  %55 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %56 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %112

61:                                               ; preds = %48
  %62 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %63 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @PCIE_HHBM_MAX_SIZE, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %73 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %112

78:                                               ; preds = %61
  %79 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %4, align 8
  %80 = call i32 @pearl_hhbm_init(%struct.qtnf_pcie_pearl_state* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %112

86:                                               ; preds = %78
  %87 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %6, align 8
  %88 = call i32 @qtnf_pcie_alloc_skb_array(%struct.qtnf_pcie_bus_priv* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %112

94:                                               ; preds = %86
  %95 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %4, align 8
  %96 = call i32 @pearl_alloc_bd_table(%struct.qtnf_pcie_pearl_state* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %112

102:                                              ; preds = %94
  %103 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %4, align 8
  %104 = call i32 @pearl_alloc_rx_buffers(%struct.qtnf_pcie_pearl_state* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %107, %99, %91, %83, %71, %54
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pearl_hhbm_init(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @qtnf_pcie_alloc_skb_array(%struct.qtnf_pcie_bus_priv*) #1

declare dso_local i32 @pearl_alloc_bd_table(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @pearl_alloc_rx_buffers(%struct.qtnf_pcie_pearl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
