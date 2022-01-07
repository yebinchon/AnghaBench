; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c_rpmh_write_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c_rpmh_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tcs_cmd = type { i32 }
%struct.rpmh_request = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpmh_write_async(%struct.device* %0, i32 %1, %struct.tcs_cmd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcs_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpmh_request*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.tcs_cmd* %2, %struct.tcs_cmd** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.rpmh_request* @kzalloc(i32 4, i32 %12)
  store %struct.rpmh_request* %13, %struct.rpmh_request** %10, align 8
  %14 = load %struct.rpmh_request*, %struct.rpmh_request** %10, align 8
  %15 = icmp ne %struct.rpmh_request* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.rpmh_request*, %struct.rpmh_request** %10, align 8
  %21 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.rpmh_request*, %struct.rpmh_request** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.tcs_cmd*, %struct.tcs_cmd** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @__fill_rpmh_msg(%struct.rpmh_request* %22, i32 %23, %struct.tcs_cmd* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.rpmh_request*, %struct.rpmh_request** %10, align 8
  %31 = call i32 @kfree(%struct.rpmh_request* %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %19
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.rpmh_request*, %struct.rpmh_request** %10, align 8
  %37 = call i32 @__rpmh_write(%struct.device* %34, i32 %35, %struct.rpmh_request* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %29, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.rpmh_request* @kzalloc(i32, i32) #1

declare dso_local i32 @__fill_rpmh_msg(%struct.rpmh_request*, i32, %struct.tcs_cmd*, i32) #1

declare dso_local i32 @kfree(%struct.rpmh_request*) #1

declare dso_local i32 @__rpmh_write(%struct.device*, i32, %struct.rpmh_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
