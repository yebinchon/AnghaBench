; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmlogrdr_priv_t = type { %struct.device*, i32*, i32, i32 }
%struct.device = type { void (%struct.device*)*, i32, i32*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@iucv_bus = common dso_local global i32 0, align 4
@iucv_root = common dso_local global i32 0, align 4
@vmlogrdr_driver = common dso_local global i32 0, align 4
@vmlogrdr_attr_groups = common dso_local global i32 0, align 4
@kfree = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@vmlogrdr_class = common dso_local global i32 0, align 4
@vmlogrdr_major = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmlogrdr_priv_t*)* @vmlogrdr_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_register_device(%struct.vmlogrdr_priv_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmlogrdr_priv_t*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.vmlogrdr_priv_t* %0, %struct.vmlogrdr_priv_t** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.device* @kzalloc(i32 40, i32 %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %13 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_set_name(%struct.device* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 4
  store i32* @iucv_bus, i32** %17, align 8
  %18 = load i32, i32* @iucv_root, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 2
  store i32* @vmlogrdr_driver, i32** %22, align 8
  %23 = load i32, i32* @vmlogrdr_attr_groups, align 4
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %28 = call i32 @dev_set_drvdata(%struct.device* %26, %struct.vmlogrdr_priv_t* %27)
  %29 = load i64, i64* @kfree, align 8
  %30 = inttoptr i64 %29 to void (%struct.device*)*
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  store void (%struct.device*)* %30, void (%struct.device*)** %32, align 8
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %10
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @device_register(%struct.device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @put_device(%struct.device* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %78

45:                                               ; preds = %36
  %46 = load i32, i32* @vmlogrdr_class, align 4
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* @vmlogrdr_major, align 4
  %49 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %50 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MKDEV(i32 %48, i32 %51)
  %53 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_name(%struct.device* %54)
  %56 = call i32* @device_create(i32 %46, %struct.device* %47, i32 %52, %struct.vmlogrdr_priv_t* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %58 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %60 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %45
  %65 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %66 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @PTR_ERR(i32* %67)
  store i32 %68, i32* %5, align 4
  %69 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %70 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @device_unregister(%struct.device* %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %45
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %77 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %76, i32 0, i32 0
  store %struct.device* %75, %struct.device** %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %64, %41, %33
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vmlogrdr_priv_t*) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32* @device_create(i32, %struct.device*, i32, %struct.vmlogrdr_priv_t*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
