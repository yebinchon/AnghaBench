; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_find_group_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_find_group_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_pinctrl_group = type { i32 }
%struct.sunxi_pinctrl = type { i32, %struct.sunxi_pinctrl_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sunxi_pinctrl_group* (%struct.sunxi_pinctrl*, i8*)* @sunxi_pinctrl_find_group_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sunxi_pinctrl_group* @sunxi_pinctrl_find_group_by_name(%struct.sunxi_pinctrl* %0, i8* %1) #0 {
  %3 = alloca %struct.sunxi_pinctrl_group*, align 8
  %4 = alloca %struct.sunxi_pinctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_pinctrl_group*, align 8
  store %struct.sunxi_pinctrl* %0, %struct.sunxi_pinctrl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %11 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %16 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %15, i32 0, i32 1
  %17 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %17, i64 %19
  store %struct.sunxi_pinctrl_group* %20, %struct.sunxi_pinctrl_group** %7, align 8
  %21 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %7, align 8
  %22 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i32 %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  %28 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %7, align 8
  store %struct.sunxi_pinctrl_group* %28, %struct.sunxi_pinctrl_group** %3, align 8
  br label %34

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %8

33:                                               ; preds = %8
  store %struct.sunxi_pinctrl_group* null, %struct.sunxi_pinctrl_group** %3, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %3, align 8
  ret %struct.sunxi_pinctrl_group* %35
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
