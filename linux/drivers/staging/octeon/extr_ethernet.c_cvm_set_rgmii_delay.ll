; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_set_rgmii_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_set_rgmii_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_ethernet = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rx-delay\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tx-delay\00", align 1
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_ethernet*, i32, i32)* @cvm_set_rgmii_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_set_rgmii_delay(%struct.octeon_ethernet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.octeon_ethernet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_ethernet* %0, %struct.octeon_ethernet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %12 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CVMX_ASXX_RX_CLK_SETX(i32 %18, i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @cvmx_write_csr(i32 %20, i64 %21)
  %23 = load i64, i64* %8, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %8)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @CVMX_ASXX_TX_CLK_SETX(i32 %31, i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @cvmx_write_csr(i32 %33, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %30, %26
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_ID, align 4
  %47 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %48 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %69

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_RXID, align 4
  %54 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %55 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %68

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_TXID, align 4
  %61 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %62 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  %65 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %66 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %45
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_ASXX_RX_CLK_SETX(i32, i32) #1

declare dso_local i32 @CVMX_ASXX_TX_CLK_SETX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
