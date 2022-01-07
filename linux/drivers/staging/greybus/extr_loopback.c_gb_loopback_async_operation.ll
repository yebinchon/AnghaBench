; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i32, i32, i32 }
%struct.gb_loopback_async_operation = type { i32, i8*, %struct.gb_operation*, %struct.gb_loopback* }
%struct.gb_operation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_loopback_async_operation_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_loopback*, i32, i8*, i32, i32, i8*)* @gb_loopback_async_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_async_operation(%struct.gb_loopback* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_loopback*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gb_loopback_async_operation*, align 8
  %15 = alloca %struct.gb_operation*, align 8
  %16 = alloca i32, align 4
  store %struct.gb_loopback* %0, %struct.gb_loopback** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gb_loopback_async_operation* @kzalloc(i32 32, i32 %17)
  store %struct.gb_loopback_async_operation* %18, %struct.gb_loopback_async_operation** %14, align 8
  %19 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %14, align 8
  %20 = icmp ne %struct.gb_loopback_async_operation* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %91

24:                                               ; preds = %6
  %25 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %26 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.gb_operation* @gb_operation_create(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store %struct.gb_operation* %32, %struct.gb_operation** %15, align 8
  %33 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %34 = icmp ne %struct.gb_operation* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %14, align 8
  %37 = call i32 @kfree(%struct.gb_loopback_async_operation* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %91

40:                                               ; preds = %24
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %45 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @memcpy(i32 %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %40
  %53 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %54 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %14, align 8
  %55 = call i32 @gb_operation_set_data(%struct.gb_operation* %53, %struct.gb_loopback_async_operation* %54)
  %56 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %57 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %14, align 8
  %58 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %57, i32 0, i32 3
  store %struct.gb_loopback* %56, %struct.gb_loopback** %58, align 8
  %59 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %60 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %14, align 8
  %61 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %60, i32 0, i32 2
  store %struct.gb_operation* %59, %struct.gb_operation** %61, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %14, align 8
  %64 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = call i32 (...) @ktime_get()
  %66 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %14, align 8
  %67 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %69 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %68, i32 0, i32 0
  %70 = call i32 @atomic_inc(i32* %69)
  %71 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %72 = load i32, i32* @gb_loopback_async_operation_callback, align 4
  %73 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %74 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @jiffies_to_msecs(i32 %75)
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i32 @gb_operation_request_send(%struct.gb_operation* %71, i32 %72, i32 %76, i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %52
  %82 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %83 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %82, i32 0, i32 0
  %84 = call i32 @atomic_dec(i32* %83)
  %85 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %86 = call i32 @gb_operation_put(%struct.gb_operation* %85)
  %87 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %14, align 8
  %88 = call i32 @kfree(%struct.gb_loopback_async_operation* %87)
  br label %89

89:                                               ; preds = %81, %52
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %35, %21
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.gb_loopback_async_operation* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_operation* @gb_operation_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.gb_loopback_async_operation*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @gb_operation_set_data(%struct.gb_operation*, %struct.gb_loopback_async_operation*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @gb_operation_request_send(%struct.gb_operation*, i32, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
