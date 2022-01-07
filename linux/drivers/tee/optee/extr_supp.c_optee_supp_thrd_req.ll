; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_optee_supp_thrd_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_optee_supp_thrd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { i64, i32 }
%struct.tee_param = type { i32 }
%struct.optee = type { %struct.optee_supp }
%struct.optee_supp = type { i32, i32, i32, i32 }
%struct.optee_supp_req = type { i64, i32, i8*, i32, i32, %struct.tee_param*, i8* }

@TEEC_ERROR_COMMUNICATION = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@TEEC_ERROR_OUT_OF_MEMORY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @optee_supp_thrd_req(%struct.tee_context* %0, i8* %1, i64 %2, %struct.tee_param* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tee_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tee_param*, align 8
  %10 = alloca %struct.optee*, align 8
  %11 = alloca %struct.optee_supp*, align 8
  %12 = alloca %struct.optee_supp_req*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.tee_param* %3, %struct.tee_param** %9, align 8
  %15 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %16 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.optee* @tee_get_drvdata(i32 %17)
  store %struct.optee* %18, %struct.optee** %10, align 8
  %19 = load %struct.optee*, %struct.optee** %10, align 8
  %20 = getelementptr inbounds %struct.optee, %struct.optee* %19, i32 0, i32 0
  store %struct.optee_supp* %20, %struct.optee_supp** %11, align 8
  %21 = load %struct.optee_supp*, %struct.optee_supp** %11, align 8
  %22 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %27 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i8*, i8** @TEEC_ERROR_COMMUNICATION, align 8
  store i8* %31, i8** %5, align 8
  br label %115

32:                                               ; preds = %25, %4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.optee_supp_req* @kzalloc(i32 48, i32 %33)
  store %struct.optee_supp_req* %34, %struct.optee_supp_req** %12, align 8
  %35 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %36 = icmp ne %struct.optee_supp_req* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** @TEEC_ERROR_OUT_OF_MEMORY, align 8
  store i8* %38, i8** %5, align 8
  br label %115

39:                                               ; preds = %32
  %40 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %41 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %40, i32 0, i32 4
  %42 = call i32 @init_completion(i32* %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %45 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %48 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.tee_param*, %struct.tee_param** %9, align 8
  %50 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %51 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %50, i32 0, i32 5
  store %struct.tee_param* %49, %struct.tee_param** %51, align 8
  %52 = load %struct.optee_supp*, %struct.optee_supp** %11, align 8
  %53 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %56 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %55, i32 0, i32 3
  %57 = load %struct.optee_supp*, %struct.optee_supp** %11, align 8
  %58 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %57, i32 0, i32 3
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %61 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load %struct.optee_supp*, %struct.optee_supp** %11, align 8
  %63 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.optee_supp*, %struct.optee_supp** %11, align 8
  %66 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %65, i32 0, i32 2
  %67 = call i32 @complete(i32* %66)
  br label %68

68:                                               ; preds = %107, %39
  %69 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %70 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %69, i32 0, i32 4
  %71 = call i64 @wait_for_completion_interruptible(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %68
  %74 = load %struct.optee_supp*, %struct.optee_supp** %11, align 8
  %75 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.optee_supp*, %struct.optee_supp** %11, align 8
  %78 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %73
  %86 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %87 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %92 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %91, i32 0, i32 3
  %93 = call i32 @list_del(i32* %92)
  %94 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %95 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %94, i32 0, i32 1
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %85
  br label %97

97:                                               ; preds = %96, %73
  %98 = load %struct.optee_supp*, %struct.optee_supp** %11, align 8
  %99 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i8*, i8** @TEEC_ERROR_COMMUNICATION, align 8
  %105 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %106 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  br label %108

107:                                              ; preds = %97
  br label %68

108:                                              ; preds = %103, %68
  %109 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %110 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %14, align 8
  %112 = load %struct.optee_supp_req*, %struct.optee_supp_req** %12, align 8
  %113 = call i32 @kfree(%struct.optee_supp_req* %112)
  %114 = load i8*, i8** %14, align 8
  store i8* %114, i8** %5, align 8
  br label %115

115:                                              ; preds = %108, %37, %30
  %116 = load i8*, i8** %5, align 8
  ret i8* %116
}

declare dso_local %struct.optee* @tee_get_drvdata(i32) #1

declare dso_local %struct.optee_supp_req* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.optee_supp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
