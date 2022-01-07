; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c___rpmh_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c___rpmh_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rpmh_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.rpmh_ctrlr = type { i32 }
%struct.cache_req = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RPMH_ACTIVE_ONLY_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.rpmh_request*)* @__rpmh_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rpmh_write(%struct.device* %0, i32 %1, %struct.rpmh_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmh_request*, align 8
  %8 = alloca %struct.rpmh_ctrlr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_req*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rpmh_request* %2, %struct.rpmh_request** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.rpmh_ctrlr* @get_rpmh_ctrlr(%struct.device* %12)
  store %struct.rpmh_ctrlr* %13, %struct.rpmh_ctrlr** %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.rpmh_request*, %struct.rpmh_request** %7, align 8
  %18 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %45, %3
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.rpmh_request*, %struct.rpmh_request** %7, align 8
  %23 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.rpmh_request*, %struct.rpmh_request** %7, align 8
  %31 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call %struct.cache_req* @cache_rpm_request(%struct.rpmh_ctrlr* %28, i32 %29, i32* %36)
  store %struct.cache_req* %37, %struct.cache_req** %10, align 8
  %38 = load %struct.cache_req*, %struct.cache_req** %10, align 8
  %39 = call i64 @IS_ERR(%struct.cache_req* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.cache_req*, %struct.cache_req** %10, align 8
  %43 = call i32 @PTR_ERR(%struct.cache_req* %42)
  store i32 %43, i32* %4, align 4
  br label %71

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %20

48:                                               ; preds = %20
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.rpmh_request*, %struct.rpmh_request** %7, align 8
  %51 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RPMH_ACTIVE_ONLY_STATE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = call i32 (...) @irqs_disabled()
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %8, align 8
  %60 = call i32 @ctrlr_to_drv(%struct.rpmh_ctrlr* %59)
  %61 = load %struct.rpmh_request*, %struct.rpmh_request** %7, align 8
  %62 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %61, i32 0, i32 0
  %63 = call i32 @rpmh_rsc_send_data(i32 %60, %struct.TYPE_3__* %62)
  store i32 %63, i32* %9, align 4
  br label %69

64:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  %65 = load %struct.rpmh_request*, %struct.rpmh_request** %7, align 8
  %66 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rpmh_tx_done(%struct.TYPE_3__* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %56
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %41
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.rpmh_ctrlr* @get_rpmh_ctrlr(%struct.device*) #1

declare dso_local %struct.cache_req* @cache_rpm_request(%struct.rpmh_ctrlr*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.cache_req*) #1

declare dso_local i32 @PTR_ERR(%struct.cache_req*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @rpmh_rsc_send_data(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ctrlr_to_drv(%struct.rpmh_ctrlr*) #1

declare dso_local i32 @rpmh_tx_done(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
