; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_get_pin_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_get_pin_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pin = type { i32 }
%struct.sprd_pinctrl = type { %struct.sprd_pinctrl_soc_info* }
%struct.sprd_pinctrl_soc_info = type { i32, %struct.sprd_pin* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sprd_pin* (%struct.sprd_pinctrl*, i32)* @sprd_pinctrl_get_pin_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sprd_pin* @sprd_pinctrl_get_pin_by_id(%struct.sprd_pinctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.sprd_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_pinctrl_soc_info*, align 8
  %6 = alloca %struct.sprd_pin*, align 8
  %7 = alloca i32, align 4
  store %struct.sprd_pinctrl* %0, %struct.sprd_pinctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %3, align 8
  %9 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %8, i32 0, i32 0
  %10 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  store %struct.sprd_pinctrl_soc_info* %10, %struct.sprd_pinctrl_soc_info** %5, align 8
  store %struct.sprd_pin* null, %struct.sprd_pin** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %5, align 8
  %14 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %5, align 8
  %19 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %18, i32 0, i32 1
  %20 = load %struct.sprd_pin*, %struct.sprd_pin** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %20, i64 %22
  %24 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %5, align 8
  %30 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %29, i32 0, i32 1
  %31 = load %struct.sprd_pin*, %struct.sprd_pin** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %31, i64 %33
  store %struct.sprd_pin* %34, %struct.sprd_pin** %6, align 8
  br label %39

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %11

39:                                               ; preds = %28, %11
  %40 = load %struct.sprd_pin*, %struct.sprd_pin** %6, align 8
  ret %struct.sprd_pin* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
