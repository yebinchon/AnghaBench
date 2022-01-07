; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_llcc_slice_getd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_llcc_slice_getd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.llcc_slice_config* }
%struct.llcc_slice_config = type { i64, i32, i32 }
%struct.llcc_slice_desc = type { i32, i32 }

@drv_data = common dso_local global %struct.TYPE_4__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.llcc_slice_desc* @llcc_slice_getd(i64 %0) #0 {
  %2 = alloca %struct.llcc_slice_desc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.llcc_slice_config*, align 8
  %5 = alloca %struct.llcc_slice_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %9 = call i64 @IS_ERR(%struct.TYPE_4__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %13 = call %struct.llcc_slice_desc* @ERR_CAST(%struct.TYPE_4__* %12)
  store %struct.llcc_slice_desc* %13, %struct.llcc_slice_desc** %2, align 8
  br label %75

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %16, align 8
  store %struct.llcc_slice_config* %17, %struct.llcc_slice_config** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_data, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %38, %14
  %22 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %4, align 8
  %23 = icmp ne %struct.llcc_slice_config* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %31 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %4, align 8
  %32 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %43

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %7, align 8
  %41 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %4, align 8
  %42 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %41, i32 1
  store %struct.llcc_slice_config* %42, %struct.llcc_slice_config** %4, align 8
  br label %21

43:                                               ; preds = %36, %28
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %4, align 8
  %49 = icmp ne %struct.llcc_slice_config* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.llcc_slice_desc* @ERR_PTR(i32 %52)
  store %struct.llcc_slice_desc* %53, %struct.llcc_slice_desc** %2, align 8
  br label %75

54:                                               ; preds = %47
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.llcc_slice_desc* @kzalloc(i32 8, i32 %55)
  store %struct.llcc_slice_desc* %56, %struct.llcc_slice_desc** %5, align 8
  %57 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %5, align 8
  %58 = icmp ne %struct.llcc_slice_desc* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.llcc_slice_desc* @ERR_PTR(i32 %61)
  store %struct.llcc_slice_desc* %62, %struct.llcc_slice_desc** %2, align 8
  br label %75

63:                                               ; preds = %54
  %64 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %4, align 8
  %65 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %5, align 8
  %68 = getelementptr inbounds %struct.llcc_slice_desc, %struct.llcc_slice_desc* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %4, align 8
  %70 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %5, align 8
  %73 = getelementptr inbounds %struct.llcc_slice_desc, %struct.llcc_slice_desc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %5, align 8
  store %struct.llcc_slice_desc* %74, %struct.llcc_slice_desc** %2, align 8
  br label %75

75:                                               ; preds = %63, %59, %50, %11
  %76 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %2, align 8
  ret %struct.llcc_slice_desc* %76
}

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local %struct.llcc_slice_desc* @ERR_CAST(%struct.TYPE_4__*) #1

declare dso_local %struct.llcc_slice_desc* @ERR_PTR(i32) #1

declare dso_local %struct.llcc_slice_desc* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
