; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_rate_policies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_rate_policies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_rate_policy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8*, i8*, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"acx rate policies\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RATE_MASK_UNSPECIFIED = common dso_local global i8* null, align 8
@ACX_RATE_RETRY_LIMIT = common dso_local global i8* null, align 8
@ACX_RATE_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Setting of rate policies failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_rate_policies(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.acx_rate_policy*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @DEBUG_ACX, align 4
  %7 = call i32 @wl1251_debug(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.acx_rate_policy* @kzalloc(i32 16, i32 %8)
  store %struct.acx_rate_policy* %9, %struct.acx_rate_policy** %4, align 8
  %10 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %11 = icmp ne %struct.acx_rate_policy* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %17 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %16, i32 0, i32 0
  store i32 2, i32* %17, align 8
  %18 = load i8*, i8** @ACX_RATE_MASK_UNSPECIFIED, align 8
  %19 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %20 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i8* %18, i8** %23, align 8
  %24 = load i8*, i8** @ACX_RATE_RETRY_LIMIT, align 8
  %25 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %26 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i8* %24, i8** %29, align 8
  %30 = load i8*, i8** @ACX_RATE_RETRY_LIMIT, align 8
  %31 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %32 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i8* %30, i8** %35, align 8
  %36 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %37 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** @ACX_RATE_MASK_UNSPECIFIED, align 8
  %42 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %43 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i8* %41, i8** %46, align 8
  %47 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %48 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i8* null, i8** %51, align 8
  %52 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %53 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i8* null, i8** %56, align 8
  %57 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %58 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %63 = load i32, i32* @ACX_RATE_POLICY, align 4
  %64 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %65 = call i32 @wl1251_cmd_configure(%struct.wl1251* %62, i32 %63, %struct.acx_rate_policy* %64, i32 16)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %15
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @wl1251_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %72

71:                                               ; preds = %15
  br label %72

72:                                               ; preds = %71, %68
  %73 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %4, align 8
  %74 = call i32 @kfree(%struct.acx_rate_policy* %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_rate_policy* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_rate_policy*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_rate_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
