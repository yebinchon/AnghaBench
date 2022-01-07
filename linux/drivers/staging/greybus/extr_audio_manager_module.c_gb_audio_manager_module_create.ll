; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager_module.c_gb_audio_manager_module_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager_module.c_gb_audio_manager_module_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_audio_manager_module = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.kset* }
%struct.kset = type { i32 }
%struct.gb_audio_manager_module_descriptor = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_audio_module_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"failed initializing kobject for audio module #%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Created audio module #%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_manager_module_create(%struct.gb_audio_manager_module** %0, %struct.kset* %1, i32 %2, %struct.gb_audio_manager_module_descriptor* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_audio_manager_module**, align 8
  %7 = alloca %struct.kset*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gb_audio_manager_module_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gb_audio_manager_module*, align 8
  store %struct.gb_audio_manager_module** %0, %struct.gb_audio_manager_module*** %6, align 8
  store %struct.kset* %1, %struct.kset** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.gb_audio_manager_module_descriptor* %3, %struct.gb_audio_manager_module_descriptor** %9, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.gb_audio_manager_module* @kzalloc(i32 24, i32 %12)
  store %struct.gb_audio_manager_module* %13, %struct.gb_audio_manager_module** %11, align 8
  %14 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %15 = icmp ne %struct.gb_audio_manager_module* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %21 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %20, i32 0, i32 3
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %25 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %27 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %26, i32 0, i32 2
  %28 = load %struct.gb_audio_manager_module_descriptor*, %struct.gb_audio_manager_module_descriptor** %9, align 8
  %29 = call i32 @memcpy(i32* %27, %struct.gb_audio_manager_module_descriptor* %28, i32 4)
  %30 = load %struct.kset*, %struct.kset** %7, align 8
  %31 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %32 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.kset* %30, %struct.kset** %33, align 8
  %34 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %35 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %34, i32 0, i32 1
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @kobject_init_and_add(%struct.TYPE_3__* %35, i32* @gb_audio_module_type, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %19
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %44 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %43, i32 0, i32 1
  %45 = call i32 @kobject_put(%struct.TYPE_3__* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %54

47:                                               ; preds = %19
  %48 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %49 = call i32 @send_add_uevent(%struct.gb_audio_manager_module* %48)
  %50 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %11, align 8
  %51 = load %struct.gb_audio_manager_module**, %struct.gb_audio_manager_module*** %6, align 8
  store %struct.gb_audio_manager_module* %50, %struct.gb_audio_manager_module** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %40, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.gb_audio_manager_module* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.gb_audio_manager_module_descriptor*, i32) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_3__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.TYPE_3__*) #1

declare dso_local i32 @send_add_uevent(%struct.gb_audio_manager_module*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
