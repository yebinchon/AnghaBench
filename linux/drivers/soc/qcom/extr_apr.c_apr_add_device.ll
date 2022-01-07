; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.apr_device_id = type { i64, i32, i32, i32 }
%struct.apr = type { i32, i32 }
%struct.apr_device = type { %struct.TYPE_5__, i32, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32*, i32, %struct.device_node*, %struct.device*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APR_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"aprsvc:%s:%x:%x\00", align 1
@aprbus = common dso_local global i32 0, align 4
@apr_dev_release = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Adding APR dev: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"device_register failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.apr_device_id*)* @apr_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apr_add_device(%struct.device* %0, %struct.device_node* %1, %struct.apr_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.apr_device_id*, align 8
  %8 = alloca %struct.apr*, align 8
  %9 = alloca %struct.apr_device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.apr_device_id* %2, %struct.apr_device_id** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.apr* @dev_get_drvdata(%struct.device* %11)
  store %struct.apr* %12, %struct.apr** %8, align 8
  store %struct.apr_device* null, %struct.apr_device** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.apr_device* @kzalloc(i32 72, i32 %13)
  store %struct.apr_device* %14, %struct.apr_device** %9, align 8
  %15 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %16 = icmp ne %struct.apr_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %125

20:                                               ; preds = %3
  %21 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %22 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %21, i32 0, i32 5
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.apr_device_id*, %struct.apr_device_id** %7, align 8
  %25 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %28 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  %29 = load %struct.apr_device_id*, %struct.apr_device_id** %7, align 8
  %30 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %33 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.apr_device_id*, %struct.apr_device_id** %7, align 8
  %35 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %38 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = icmp ne %struct.device_node* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %20
  %42 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %43 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @APR_NAME_SIZE, align 4
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.device_node* %46)
  br label %57

48:                                               ; preds = %20
  %49 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %50 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.apr_device_id*, %struct.apr_device_id** %7, align 8
  %53 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @APR_NAME_SIZE, align 4
  %56 = call i32 @strscpy(i32 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %41
  %58 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %59 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %58, i32 0, i32 0
  %60 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %61 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.apr_device_id*, %struct.apr_device_id** %7, align 8
  %64 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.apr_device_id*, %struct.apr_device_id** %7, align 8
  %67 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_set_name(%struct.TYPE_5__* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65, i64 %68)
  %70 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %71 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i32* @aprbus, i32** %72, align 8
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %75 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store %struct.device* %73, %struct.device** %76, align 8
  %77 = load %struct.device_node*, %struct.device_node** %6, align 8
  %78 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %79 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store %struct.device_node* %77, %struct.device_node** %80, align 8
  %81 = load i32, i32* @apr_dev_release, align 4
  %82 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %83 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %86 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.apr*, %struct.apr** %8, align 8
  %89 = getelementptr inbounds %struct.apr, %struct.apr* %88, i32 0, i32 0
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.apr*, %struct.apr** %8, align 8
  %92 = getelementptr inbounds %struct.apr, %struct.apr* %91, i32 0, i32 1
  %93 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %94 = load %struct.apr_device_id*, %struct.apr_device_id** %7, align 8
  %95 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.apr_device_id*, %struct.apr_device_id** %7, align 8
  %98 = getelementptr inbounds %struct.apr_device_id, %struct.apr_device_id* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  %101 = load i32, i32* @GFP_ATOMIC, align 4
  %102 = call i32 @idr_alloc(i32* %92, %struct.apr_device* %93, i64 %96, i64 %100, i32 %101)
  %103 = load %struct.apr*, %struct.apr** %8, align 8
  %104 = getelementptr inbounds %struct.apr, %struct.apr* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %108 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %107, i32 0, i32 0
  %109 = call i32 @dev_name(%struct.TYPE_5__* %108)
  %110 = call i32 @dev_info(%struct.device* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %112 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %111, i32 0, i32 0
  %113 = call i32 @device_register(%struct.TYPE_5__* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %57
  %117 = load %struct.device*, %struct.device** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load %struct.apr_device*, %struct.apr_device** %9, align 8
  %121 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %120, i32 0, i32 0
  %122 = call i32 @put_device(%struct.TYPE_5__* %121)
  br label %123

123:                                              ; preds = %116, %57
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %17
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.apr* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.apr_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.device_node*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.apr_device*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
