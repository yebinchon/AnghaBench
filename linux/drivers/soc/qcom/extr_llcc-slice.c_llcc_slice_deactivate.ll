; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_llcc_slice_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_llcc_slice_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.llcc_slice_desc = type { i32 }

@drv_data = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ACT_CTRL_OPCODE_DEACTIVATE = common dso_local global i32 0, align 4
@ACT_CTRL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@ACTIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llcc_slice_deactivate(%struct.llcc_slice_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.llcc_slice_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.llcc_slice_desc* %0, %struct.llcc_slice_desc** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %7 = call i64 @IS_ERR(%struct.TYPE_4__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %11 = call i32 @PTR_ERR(%struct.TYPE_4__* %10)
  store i32 %11, i32* %2, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %3, align 8
  %14 = call i64 @IS_ERR_OR_NULL(%struct.llcc_slice_desc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %3, align 8
  %24 = getelementptr inbounds %struct.llcc_slice_desc, %struct.llcc_slice_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @test_bit(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %19
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %2, align 4
  br label %64

35:                                               ; preds = %19
  %36 = load i32, i32* @ACT_CTRL_OPCODE_DEACTIVATE, align 4
  %37 = load i32, i32* @ACT_CTRL_OPCODE_SHIFT, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %3, align 8
  %40 = getelementptr inbounds %struct.llcc_slice_desc, %struct.llcc_slice_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ACTIVATE, align 4
  %44 = call i32 @llcc_update_act_ctrl(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %64

52:                                               ; preds = %35
  %53 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %3, align 8
  %54 = getelementptr inbounds %struct.llcc_slice_desc, %struct.llcc_slice_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__clear_bit(i32 %55, i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %52, %47, %31, %16, %9
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.llcc_slice_desc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @llcc_update_act_ctrl(i32, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
