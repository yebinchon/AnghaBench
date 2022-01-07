; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_dellink_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_dellink_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethsw_core = type { %struct.ethsw_port_priv**, %struct.TYPE_2__, i64*, i32, i32, i32 }
%struct.ethsw_port_priv = type { i64* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dpsw_vlan_remove err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethsw_core*, i64)* @ethsw_dellink_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_dellink_switch(%struct.ethsw_core* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethsw_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ethsw_port_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ethsw_core* %0, %struct.ethsw_core** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ethsw_port_priv* null, %struct.ethsw_port_priv** %6, align 8
  %9 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %10 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %21 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %24 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @dpsw_vlan_remove(i32 %22, i32 0, i32 %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %32 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %67

37:                                               ; preds = %19
  %38 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %39 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %63, %37
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %46 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %52 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %51, i32 0, i32 0
  %53 = load %struct.ethsw_port_priv**, %struct.ethsw_port_priv*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %53, i64 %55
  %57 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %56, align 8
  store %struct.ethsw_port_priv* %57, %struct.ethsw_port_priv** %6, align 8
  %58 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %59 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %43

66:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %30, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @dpsw_vlan_remove(i32, i32, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
