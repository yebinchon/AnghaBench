; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_optee_supp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_optee_supp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { %struct.tee_device* }
%struct.tee_device = type { i32 }
%struct.tee_param = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.optee = type { %struct.optee_supp }
%struct.optee_supp = type { i32, i32, i32 }
%struct.optee_supp_req = type { i64, i64, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT = common dso_local global i32 0, align 4
@TEE_IOCTL_PARAM_ATTR_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_supp_recv(%struct.tee_context* %0, i64* %1, i64* %2, %struct.tee_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tee_context*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.tee_param*, align 8
  %10 = alloca %struct.tee_device*, align 8
  %11 = alloca %struct.optee*, align 8
  %12 = alloca %struct.optee_supp*, align 8
  %13 = alloca %struct.optee_supp_req*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.tee_context* %0, %struct.tee_context** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
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
  store %struct.optee_supp_req* null, %struct.optee_supp_req** %13, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %27 = call i32 @supp_check_recv_params(i64 %25, %struct.tee_param* %26, i64* %15)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %5, align 4
  br label %120

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %64
  %34 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %35 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %15, align 8
  %41 = sub i64 %39, %40
  %42 = call %struct.optee_supp_req* @supp_pop_entry(%struct.optee_supp* %37, i64 %41, i32* %14)
  store %struct.optee_supp_req* %42, %struct.optee_supp_req** %13, align 8
  %43 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %44 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %47 = icmp ne %struct.optee_supp_req* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %50 = call i64 @IS_ERR(%struct.optee_supp_req* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %54 = call i32 @PTR_ERR(%struct.optee_supp_req* %53)
  store i32 %54, i32* %5, align 4
  br label %120

55:                                               ; preds = %48
  br label %65

56:                                               ; preds = %33
  %57 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %58 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %57, i32 0, i32 2
  %59 = call i64 @wait_for_completion_interruptible(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @ERESTARTSYS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %120

64:                                               ; preds = %56
  br label %33

65:                                               ; preds = %55
  %66 = load i64, i64* %15, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT, align 4
  %70 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_META, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %73 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %76 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %80 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %84 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %97

87:                                               ; preds = %65
  %88 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %89 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %88, i32 0, i32 1
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %93 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.optee_supp*, %struct.optee_supp** %12, align 8
  %95 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  br label %97

97:                                               ; preds = %87, %68
  %98 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %99 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %7, align 8
  store i64 %100, i64* %101, align 8
  %102 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %103 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = add i64 %104, %105
  %107 = load i64*, i64** %8, align 8
  store i64 %106, i64* %107, align 8
  %108 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %109 = load i64, i64* %15, align 8
  %110 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %108, i64 %109
  %111 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %112 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.optee_supp_req*, %struct.optee_supp_req** %13, align 8
  %115 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = mul i64 32, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memcpy(%struct.tee_param* %110, i32 %113, i32 %118)
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %97, %61, %52, %30
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.optee* @tee_get_drvdata(%struct.tee_device*) #1

declare dso_local i32 @supp_check_recv_params(i64, %struct.tee_param*, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.optee_supp_req* @supp_pop_entry(%struct.optee_supp*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.optee_supp_req*) #1

declare dso_local i32 @PTR_ERR(%struct.optee_supp_req*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @memcpy(%struct.tee_param*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
