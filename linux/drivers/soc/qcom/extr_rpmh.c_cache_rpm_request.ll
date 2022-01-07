; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c_cache_rpm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c_cache_rpm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_req = type { i32, i32, i32, i32 }
%struct.rpmh_ctrlr = type { i32, i32, i32 }
%struct.tcs_cmd = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_req* (%struct.rpmh_ctrlr*, i32, %struct.tcs_cmd*)* @cache_rpm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_req* @cache_rpm_request(%struct.rpmh_ctrlr* %0, i32 %1, %struct.tcs_cmd* %2) #0 {
  %4 = alloca %struct.rpmh_ctrlr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcs_cmd*, align 8
  %7 = alloca %struct.cache_req*, align 8
  %8 = alloca i64, align 8
  store %struct.rpmh_ctrlr* %0, %struct.rpmh_ctrlr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tcs_cmd* %2, %struct.tcs_cmd** %6, align 8
  %9 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %4, align 8
  %10 = getelementptr inbounds %struct.rpmh_ctrlr, %struct.rpmh_ctrlr* %9, i32 0, i32 1
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %4, align 8
  %14 = load %struct.tcs_cmd*, %struct.tcs_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.cache_req* @__find_req(%struct.rpmh_ctrlr* %13, i32 %16)
  store %struct.cache_req* %17, %struct.cache_req** %7, align 8
  %18 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %19 = icmp ne %struct.cache_req* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %49

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.cache_req* @kzalloc(i32 16, i32 %22)
  store %struct.cache_req* %23, %struct.cache_req** %7, align 8
  %24 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %25 = icmp ne %struct.cache_req* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.cache_req* @ERR_PTR(i32 %28)
  store %struct.cache_req* %29, %struct.cache_req** %7, align 8
  br label %80

30:                                               ; preds = %21
  %31 = load %struct.tcs_cmd*, %struct.tcs_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %35 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @UINT_MAX, align 4
  %37 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %38 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %40 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %42 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %41, i32 0, i32 2
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %45 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %44, i32 0, i32 2
  %46 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %4, align 8
  %47 = getelementptr inbounds %struct.rpmh_ctrlr, %struct.rpmh_ctrlr* %46, i32 0, i32 2
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  br label %49

49:                                               ; preds = %30, %20
  %50 = load i32, i32* %5, align 4
  switch i32 %50, label %76 [
    i32 130, label %51
    i32 128, label %64
    i32 129, label %70
  ]

51:                                               ; preds = %49
  %52 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %53 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @UINT_MAX, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.tcs_cmd*, %struct.tcs_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %62 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %51
  br label %77

64:                                               ; preds = %49
  %65 = load %struct.tcs_cmd*, %struct.tcs_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %69 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %77

70:                                               ; preds = %49
  %71 = load %struct.tcs_cmd*, %struct.tcs_cmd** %6, align 8
  %72 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %75 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %77

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76, %70, %64, %63
  %78 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %4, align 8
  %79 = getelementptr inbounds %struct.rpmh_ctrlr, %struct.rpmh_ctrlr* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %26
  %81 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %4, align 8
  %82 = getelementptr inbounds %struct.rpmh_ctrlr, %struct.rpmh_ctrlr* %81, i32 0, i32 1
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  ret %struct.cache_req* %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.cache_req* @__find_req(%struct.rpmh_ctrlr*, i32) #1

declare dso_local %struct.cache_req* @kzalloc(i32, i32) #1

declare dso_local %struct.cache_req* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
