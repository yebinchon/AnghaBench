; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s5m8767.c_s5m8767_convert_voltage_to_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s5m8767.c_s5m8767_convert_voltage_to_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_voltage_desc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_voltage_desc*, i32)* @s5m8767_convert_voltage_to_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5m8767_convert_voltage_to_sel(%struct.sec_voltage_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sec_voltage_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sec_voltage_desc* %0, %struct.sec_voltage_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %8 = icmp eq %struct.sec_voltage_desc* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %15 = getelementptr inbounds %struct.sec_voltage_desc, %struct.sec_voltage_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %24 = getelementptr inbounds %struct.sec_voltage_desc, %struct.sec_voltage_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %29 = getelementptr inbounds %struct.sec_voltage_desc, %struct.sec_voltage_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %34 = getelementptr inbounds %struct.sec_voltage_desc, %struct.sec_voltage_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %38 = getelementptr inbounds %struct.sec_voltage_desc, %struct.sec_voltage_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DIV_ROUND_UP(i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %42 = getelementptr inbounds %struct.sec_voltage_desc, %struct.sec_voltage_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %45 = getelementptr inbounds %struct.sec_voltage_desc, %struct.sec_voltage_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %43, %48
  %50 = load %struct.sec_voltage_desc*, %struct.sec_voltage_desc** %4, align 8
  %51 = getelementptr inbounds %struct.sec_voltage_desc, %struct.sec_voltage_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %31
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %31
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %54, %18, %9
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
