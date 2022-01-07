; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_map_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_map_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.sh_pfc_pin* }
%struct.sh_pfc_pin = type { i32, i32 }
%struct.sh_pfc_pinctrl = type { %struct.pinctrl_pin_desc*, i8* }
%struct.pinctrl_pin_desc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc*, %struct.sh_pfc_pinctrl*)* @sh_pfc_map_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_pfc_map_pins(%struct.sh_pfc* %0, %struct.sh_pfc_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_pfc*, align 8
  %5 = alloca %struct.sh_pfc_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_pfc_pin*, align 8
  %8 = alloca %struct.pinctrl_pin_desc*, align 8
  store %struct.sh_pfc* %0, %struct.sh_pfc** %4, align 8
  store %struct.sh_pfc_pinctrl* %1, %struct.sh_pfc_pinctrl** %5, align 8
  %9 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %10 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %13 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kcalloc(i32 %11, i32 %16, i32 8, i32 %17)
  %19 = bitcast i8* %18 to %struct.pinctrl_pin_desc*
  %20 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %20, i32 0, i32 0
  store %struct.pinctrl_pin_desc* %19, %struct.pinctrl_pin_desc** %21, align 8
  %22 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %5, align 8
  %23 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %22, i32 0, i32 0
  %24 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %23, align 8
  %25 = icmp ne %struct.pinctrl_pin_desc* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %104

33:                                               ; preds = %2
  %34 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %35 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %38 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @devm_kcalloc(i32 %36, i32 %41, i32 1, i32 %42)
  %44 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %5, align 8
  %45 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %5, align 8
  %47 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %104

57:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %100, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %61 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %59, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %58
  %67 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %68 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %71, i64 %73
  store %struct.sh_pfc_pin* %74, %struct.sh_pfc_pin** %7, align 8
  %75 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %5, align 8
  %76 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %75, i32 0, i32 0
  %77 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %77, i64 %79
  store %struct.pinctrl_pin_desc* %80, %struct.pinctrl_pin_desc** %8, align 8
  %81 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %7, align 8
  %82 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %89

85:                                               ; preds = %66
  %86 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %7, align 8
  %87 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  br label %91

89:                                               ; preds = %66
  %90 = load i32, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %88, %85 ], [ %90, %89 ]
  %93 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %94 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %7, align 8
  %96 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %99 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %58

103:                                              ; preds = %58
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %54, %30
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
