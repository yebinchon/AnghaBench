; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pctrl_parse_drive_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pctrl_parse_drive_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"drive-strength\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"allwinner,drive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @sunxi_pctrl_parse_drive_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pctrl_parse_drive_prop(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = call i64 @of_property_read_u32(%struct.device_node* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 40
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 40, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @rounddown(i32 %19, i32 10)
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %3, align 8
  %23 = call i64 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = mul nsw i32 %30, 10
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %25, %18, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @rounddown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
