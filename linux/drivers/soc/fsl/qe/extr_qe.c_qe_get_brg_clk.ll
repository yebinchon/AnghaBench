; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_get_brg_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_get_brg_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@brg_clk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"brg-frequency\00", align 1
@CLK_GRAN = common dso_local global i32 0, align 4
@CLK_GRAN_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qe_get_brg_clk() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @brg_clk, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @brg_clk, align 4
  store i32 %9, i32* %1, align 4
  br label %60

10:                                               ; preds = %0
  %11 = call %struct.device_node* (...) @qe_get_device_node()
  store %struct.device_node* %11, %struct.device_node** %2, align 8
  %12 = load %struct.device_node*, %struct.device_node** %2, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @brg_clk, align 4
  store i32 %15, i32* %1, align 4
  br label %60

16:                                               ; preds = %10
  %17 = load %struct.device_node*, %struct.device_node** %2, align 8
  %18 = call i32* @of_get_property(%struct.device_node* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %3)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @brg_clk, align 4
  br label %28

28:                                               ; preds = %25, %21, %16
  %29 = load %struct.device_node*, %struct.device_node** %2, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load i32, i32* @brg_clk, align 4
  %32 = load i32, i32* @CLK_GRAN, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @CLK_GRAN_LIMIT, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @brg_clk, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* @brg_clk, align 4
  br label %57

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CLK_GRAN, align 4
  %47 = load i32, i32* @CLK_GRAN_LIMIT, align 4
  %48 = sub i32 %46, %47
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @CLK_GRAN, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub i32 %51, %52
  %54 = load i32, i32* @brg_clk, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* @brg_clk, align 4
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i32, i32* @brg_clk, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %58, %14, %8
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local %struct.device_node* @qe_get_device_node(...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
