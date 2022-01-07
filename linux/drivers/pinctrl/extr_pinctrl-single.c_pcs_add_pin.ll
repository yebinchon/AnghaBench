; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcs_device = type { i32 (i32)*, i32, %struct.TYPE_6__, i32 (i32, i32)*, %struct.TYPE_5__*, i32, %struct.TYPE_4__, %struct.pcs_soc_data }
%struct.TYPE_6__ = type { i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.pcs_soc_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"too many pins, max %i\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"irq enabled at boot for pin at %lx (%x), clearing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcs_device*, i32, i32)* @pcs_add_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_add_pin(%struct.pcs_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcs_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcs_soc_data*, align 8
  %9 = alloca %struct.pinctrl_pin_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcs_device* %0, %struct.pcs_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %13 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %12, i32 0, i32 7
  store %struct.pcs_soc_data* %13, %struct.pcs_soc_data** %8, align 8
  %14 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %15 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %20 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %18, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %26 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %29 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %105

35:                                               ; preds = %3
  %36 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %8, align 8
  %37 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %35
  %41 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %42 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %41, i32 0, i32 0
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %45 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %46, %47
  %49 = call i32 %43(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %8, align 8
  %52 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %40
  %57 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %58 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %61 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %60, i32 0, i32 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %8, align 8
  %72 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %78 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %77, i32 0, i32 3
  %79 = load i32 (i32, i32)*, i32 (i32, i32)** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %82 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %83, %84
  %86 = call i32 %79(i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %56, %40
  br label %88

88:                                               ; preds = %87, %35
  %89 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %90 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %92, i64 %94
  store %struct.pinctrl_pin_desc* %95, %struct.pinctrl_pin_desc** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %98 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.pcs_device*, %struct.pcs_device** %5, align 8
  %100 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %88, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
