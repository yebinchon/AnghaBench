; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_add_one_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_add_one_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_menlow_attribute = type { i32, %struct.TYPE_4__, i32, %struct.device* }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_menlow_attr_lock = common dso_local global i32 0, align 4
@intel_menlow_attr_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, %struct.device*, i32)* @intel_menlow_add_one_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_menlow_add_one_attribute(i8* %0, i32 %1, i8* %2, i8* %3, %struct.device* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_menlow_attribute*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.device* %4, %struct.device** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.intel_menlow_attribute* @kzalloc(i32 56, i32 %16)
  store %struct.intel_menlow_attribute* %17, %struct.intel_menlow_attribute** %14, align 8
  %18 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %19 = icmp ne %struct.intel_menlow_attribute* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %68

23:                                               ; preds = %6
  %24 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %25 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @sysfs_attr_init(%struct.TYPE_3__* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %30 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %35 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %40 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %44 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.device*, %struct.device** %12, align 8
  %47 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %48 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %47, i32 0, i32 3
  store %struct.device* %46, %struct.device** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %51 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.device*, %struct.device** %12, align 8
  %53 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %54 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %53, i32 0, i32 1
  %55 = call i32 @device_create_file(%struct.device* %52, %struct.TYPE_4__* %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %23
  %59 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %60 = call i32 @kfree(%struct.intel_menlow_attribute* %59)
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %7, align 4
  br label %68

62:                                               ; preds = %23
  %63 = call i32 @mutex_lock(i32* @intel_menlow_attr_lock)
  %64 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %65 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %64, i32 0, i32 0
  %66 = call i32 @list_add_tail(i32* %65, i32* @intel_menlow_attr_list)
  %67 = call i32 @mutex_unlock(i32* @intel_menlow_attr_lock)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %62, %58, %20
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.intel_menlow_attribute* @kzalloc(i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_3__*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.intel_menlow_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
