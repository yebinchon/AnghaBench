; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_to_msg_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_to_msg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee_msg_param = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.tee_param = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@OPTEE_MSG_ATTR_TYPE_VALUE_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_to_msg_param(%struct.optee_msg_param* %0, i64 %1, %struct.tee_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.optee_msg_param*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tee_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tee_param*, align 8
  %11 = alloca %struct.optee_msg_param*, align 8
  store %struct.optee_msg_param* %0, %struct.optee_msg_param** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tee_param* %2, %struct.tee_param** %7, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %94, %3
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %97

16:                                               ; preds = %12
  %17 = load %struct.tee_param*, %struct.tee_param** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %17, i64 %18
  store %struct.tee_param* %19, %struct.tee_param** %10, align 8
  %20 = load %struct.optee_msg_param*, %struct.optee_msg_param** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %20, i64 %21
  store %struct.optee_msg_param* %22, %struct.optee_msg_param** %11, align 8
  %23 = load %struct.tee_param*, %struct.tee_param** %10, align 8
  %24 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %90 [
    i32 131, label %26
    i32 129, label %32
    i32 128, label %32
    i32 130, label %32
    i32 133, label %68
    i32 132, label %68
    i32 134, label %68
  ]

26:                                               ; preds = %16
  %27 = load %struct.optee_msg_param*, %struct.optee_msg_param** %11, align 8
  %28 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %27, i32 0, i32 0
  store i32 131, i32* %28, align 4
  %29 = load %struct.optee_msg_param*, %struct.optee_msg_param** %11, align 8
  %30 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %29, i32 0, i32 1
  %31 = call i32 @memset(%struct.TYPE_10__* %30, i32 0, i32 12)
  br label %93

32:                                               ; preds = %16, %16, %16
  %33 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_VALUE_INPUT, align 4
  %34 = load %struct.tee_param*, %struct.tee_param** %10, align 8
  %35 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = sub nsw i32 %37, 129
  %39 = load %struct.optee_msg_param*, %struct.optee_msg_param** %11, align 8
  %40 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tee_param*, %struct.tee_param** %10, align 8
  %42 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.optee_msg_param*, %struct.optee_msg_param** %11, align 8
  %47 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 4
  %50 = load %struct.tee_param*, %struct.tee_param** %10, align 8
  %51 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.optee_msg_param*, %struct.optee_msg_param** %11, align 8
  %56 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load %struct.tee_param*, %struct.tee_param** %10, align 8
  %60 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.optee_msg_param*, %struct.optee_msg_param** %11, align 8
  %65 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  br label %93

68:                                               ; preds = %16, %16, %16
  %69 = load %struct.tee_param*, %struct.tee_param** %10, align 8
  %70 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @tee_shm_is_registered(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.optee_msg_param*, %struct.optee_msg_param** %11, align 8
  %78 = load %struct.tee_param*, %struct.tee_param** %10, align 8
  %79 = call i32 @to_msg_param_reg_mem(%struct.optee_msg_param* %77, %struct.tee_param* %78)
  store i32 %79, i32* %8, align 4
  br label %84

80:                                               ; preds = %68
  %81 = load %struct.optee_msg_param*, %struct.optee_msg_param** %11, align 8
  %82 = load %struct.tee_param*, %struct.tee_param** %10, align 8
  %83 = call i32 @to_msg_param_tmp_mem(%struct.optee_msg_param* %81, %struct.tee_param* %82)
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %98

89:                                               ; preds = %84
  br label %93

90:                                               ; preds = %16
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %98

93:                                               ; preds = %89, %32, %26
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %12

97:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %90, %87
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @tee_shm_is_registered(i32) #1

declare dso_local i32 @to_msg_param_reg_mem(%struct.optee_msg_param*, %struct.tee_param*) #1

declare dso_local i32 @to_msg_param_tmp_mem(%struct.optee_msg_param*, %struct.tee_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
