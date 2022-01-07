; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager.c_gb_audio_manager_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager.c_gb_audio_manager_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_audio_manager_module_descriptor = type { i32 }
%struct.gb_audio_manager_module = type { i32, i32 }

@module_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@manager_kset = common dso_local global i32 0, align 4
@modules_rwsem = common dso_local global i32 0, align 4
@modules_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_manager_add(%struct.gb_audio_manager_module_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_audio_manager_module_descriptor*, align 8
  %4 = alloca %struct.gb_audio_manager_module*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_audio_manager_module_descriptor* %0, %struct.gb_audio_manager_module_descriptor** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @ida_simple_get(i32* @module_id, i32 0, i32 0, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @manager_kset, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.gb_audio_manager_module_descriptor*, %struct.gb_audio_manager_module_descriptor** %3, align 8
  %17 = call i32 @gb_audio_manager_module_create(%struct.gb_audio_manager_module** %4, i32 %14, i32 %15, %struct.gb_audio_manager_module_descriptor* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ida_simple_remove(i32* @module_id, i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %13
  %25 = call i32 @down_write(i32* @modules_rwsem)
  %26 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %4, align 8
  %27 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %27, i32* @modules_list)
  %29 = call i32 @up_write(i32* @modules_rwsem)
  %30 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %4, align 8
  %31 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %20, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @gb_audio_manager_module_create(%struct.gb_audio_manager_module**, i32, i32, %struct.gb_audio_manager_module_descriptor*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
