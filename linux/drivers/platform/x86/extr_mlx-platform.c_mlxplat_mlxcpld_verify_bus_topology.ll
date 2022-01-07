; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_mlx-platform.c_mlxplat_mlxcpld_verify_bus_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_mlx-platform.c_mlxplat_mlxcpld_verify_bus_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_adapter = type { i32 }

@MLXPLAT_CPLD_PHYS_ADAPTER_DEF_NR = common dso_local global i32 0, align 4
@MLXPLAT_CPLD_MAX_PHYS_ADAPTER_NUM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mlxplat_mux_data = common dso_local global %struct.TYPE_4__* null, align 8
@mlxplat_hotplug = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mlxplat_mlxcpld_verify_bus_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxplat_mlxcpld_verify_bus_topology(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @MLXPLAT_CPLD_PHYS_ADAPTER_DEF_NR, align 4
  %8 = load i32*, i32** %3, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @MLXPLAT_CPLD_PHYS_ADAPTER_DEF_NR, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MLXPLAT_CPLD_MAX_PHYS_ADAPTER_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.i2c_adapter* @i2c_get_adapter(i32 %15)
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %4, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %18 = icmp ne %struct.i2c_adapter* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %21 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %20)
  br label %28

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MLXPLAT_CPLD_PHYS_ADAPTER_DEF_NR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %82

27:                                               ; preds = %22
  br label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %10

31:                                               ; preds = %27, %10
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MLXPLAT_CPLD_MAX_PHYS_ADAPTER_NUM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %3, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %78, %38
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mlxplat_mux_data, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mlxplat_mux_data, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %48, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mlxplat_mux_data, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mlxplat_mux_data, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %63
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %46
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mlxplat_hotplug, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %46
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %41

81:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %35, %26
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
