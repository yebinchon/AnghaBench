; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_qdss_clk_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_qdss_clk_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_init_data = type { i8*, i32* }
%struct.qmp = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.clk_init_data* }
%struct.TYPE_7__ = type { i32 }

@qmp_qdss_clk_add.qdss_init = internal constant %struct.clk_init_data { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32* @qmp_qdss_clk_ops }, align 8
@.str = private unnamed_addr constant [5 x i8] c"qdss\00", align 1
@qmp_qdss_clk_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register qdss clock\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"unable to register of clk hw provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmp*)* @qmp_qdss_clk_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmp_qdss_clk_add(%struct.qmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qmp*, align 8
  %4 = alloca i32, align 4
  store %struct.qmp* %0, %struct.qmp** %3, align 8
  %5 = load %struct.qmp*, %struct.qmp** %3, align 8
  %6 = getelementptr inbounds %struct.qmp, %struct.qmp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store %struct.clk_init_data* @qmp_qdss_clk_add.qdss_init, %struct.clk_init_data** %7, align 8
  %8 = load %struct.qmp*, %struct.qmp** %3, align 8
  %9 = getelementptr inbounds %struct.qmp, %struct.qmp* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = load %struct.qmp*, %struct.qmp** %3, align 8
  %12 = getelementptr inbounds %struct.qmp, %struct.qmp* %11, i32 0, i32 0
  %13 = call i32 @clk_hw_register(%struct.TYPE_7__* %10, %struct.TYPE_6__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.qmp*, %struct.qmp** %3, align 8
  %18 = getelementptr inbounds %struct.qmp, %struct.qmp* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @dev_err(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.qmp*, %struct.qmp** %3, align 8
  %24 = getelementptr inbounds %struct.qmp, %struct.qmp* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @of_clk_hw_simple_get, align 4
  %29 = load %struct.qmp*, %struct.qmp** %3, align 8
  %30 = getelementptr inbounds %struct.qmp, %struct.qmp* %29, i32 0, i32 0
  %31 = call i32 @of_clk_add_hw_provider(i32 %27, i32 %28, %struct.TYPE_6__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.qmp*, %struct.qmp** %3, align 8
  %36 = getelementptr inbounds %struct.qmp, %struct.qmp* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @dev_err(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.qmp*, %struct.qmp** %3, align 8
  %40 = getelementptr inbounds %struct.qmp, %struct.qmp* %39, i32 0, i32 0
  %41 = call i32 @clk_hw_unregister(%struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %34, %22
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @clk_hw_register(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @of_clk_add_hw_provider(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @clk_hw_unregister(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
