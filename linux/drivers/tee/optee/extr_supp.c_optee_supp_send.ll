; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_optee_supp_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_optee_supp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { %struct.tee_device* }
%struct.tee_device = type { i32 }
%struct.tee_param = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.optee = type { %struct.optee_supp }
%struct.optee_supp = type { i32 }
%struct.optee_supp_req = type { i64, i32, i32, %struct.tee_param* }

@TEE_IOCTL_PARAM_ATTR_TYPE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_supp_send(%struct.tee_context* %0, i32 %1, i32 %2, %struct.tee_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tee_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tee_param*, align 8
  %10 = alloca %struct.tee_device*, align 8
  %11 = alloca %struct.optee*, align 8
  %12 = alloca %struct.optee_supp*, align 8
  %13 = alloca %struct.optee_supp_req*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.tee_param*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.tee_param* %3, %struct.tee_param** %9, align 8
  %17 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %18 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %17, i32 0, i32 0
  %19 = load %struct.tee_device*, %struct.tee_device** %18, align 8
  store %struct.tee_device* %19, %struct.tee_device** %10, align 8
  %20 = load %struct.tee_device*, %struct.tee_device** %10, align 8
  %21 = call %struct.optee* @tee_get_drvdata(%struct.tee_device* %20)
  store %struct.optee* %21, %struct.optee** %11, align 8
  %22 = load %struct.optee*, %struct.optee** %11, align 8
  %23 = getelementptr inbounds %struct.optee, %struct.optee* %22, i32 0, i32 0
  store %struct.optee_supp* %23, %struct.optee_supp** %12, align 8
  %24 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %25 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %30 = call %struct.optee_supp_req* @supp_pop_req(%struct.optee_supp* %27, i32 %28, %struct.tee_param* %29, i64* %15)
  store %struct.optee_supp_req* %30, %struct.optee_supp_req** %13, align 8
  %31 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %32 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %35 = call i64 @IS_ERR(%struct.optee_supp_req* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %39 = call i32 @PTR_ERR(%struct.optee_supp_req* %38)
  store i32 %39, i32* %5, align 4
  br label %124

40:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %41

41:                                               ; preds = %114, %40
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %44 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %41
  %48 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %49 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %48, i32 0, i32 3
  %50 = load %struct.tee_param*, %struct.tee_param** %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %50, i64 %51
  store %struct.tee_param* %52, %struct.tee_param** %16, align 8
  %53 = load %struct.tee_param*, %struct.tee_param** %16, align 8
  %54 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_TYPE_MASK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %112 [
    i32 128, label %58
    i32 129, label %58
    i32 130, label %98
    i32 131, label %98
  ]

58:                                               ; preds = %47, %47
  %59 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %60, %61
  %63 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %59, i64 %62
  %64 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tee_param*, %struct.tee_param** %16, align 8
  %69 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 4
  %72 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %73, %74
  %76 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %72, i64 %75
  %77 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tee_param*, %struct.tee_param** %16, align 8
  %82 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %86, %87
  %89 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %85, i64 %88
  %90 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tee_param*, %struct.tee_param** %16, align 8
  %95 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 4
  br label %113

98:                                               ; preds = %47, %47
  %99 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %15, align 8
  %102 = add i64 %100, %101
  %103 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %99, i64 %102
  %104 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.tee_param*, %struct.tee_param** %16, align 8
  %109 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  br label %113

112:                                              ; preds = %47
  br label %113

113:                                              ; preds = %112, %98, %58
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %14, align 8
  br label %41

117:                                              ; preds = %41
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %120 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %122 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %121, i32 0, i32 1
  %123 = call i32 @complete(i32* %122)
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %117, %37
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.optee* @tee_get_drvdata(%struct.tee_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.optee_supp_req* @supp_pop_req(%struct.optee_supp*, i32, %struct.tee_param*, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.optee_supp_req*) #1

declare dso_local i32 @PTR_ERR(%struct.optee_supp_req*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
