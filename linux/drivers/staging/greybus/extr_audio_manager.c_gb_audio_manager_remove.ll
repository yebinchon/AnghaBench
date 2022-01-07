; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager.c_gb_audio_manager_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager.c_gb_audio_manager_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_audio_manager_module = type { i32, i32 }

@modules_rwsem = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@module_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_manager_remove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_audio_manager_module*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @down_write(i32* @modules_rwsem)
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.gb_audio_manager_module* @gb_audio_manager_get_locked(i32 %6)
  store %struct.gb_audio_manager_module* %7, %struct.gb_audio_manager_module** %4, align 8
  %8 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %4, align 8
  %9 = icmp ne %struct.gb_audio_manager_module* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @up_write(i32* @modules_rwsem)
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %4, align 8
  %16 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %15, i32 0, i32 1
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %4, align 8
  %19 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %18, i32 0, i32 0
  %20 = call i32 @kobject_put(i32* %19)
  %21 = call i32 @up_write(i32* @modules_rwsem)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ida_simple_remove(i32* @module_id, i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.gb_audio_manager_module* @gb_audio_manager_get_locked(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
