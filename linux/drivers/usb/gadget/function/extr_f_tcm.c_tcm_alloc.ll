; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.usb_function_instance* }
%struct.usb_function_instance = type { i32 }
%struct.usb_function = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.f_uas = type { %struct.usb_function, i32 }

@tpg_instances_lock = common dso_local global i32 0, align 4
@TPG_INSTANCES = common dso_local global i32 0, align 4
@tpg_instances = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Target Function\00", align 1
@tcm_bind = common dso_local global i32 0, align 4
@tcm_unbind = common dso_local global i32 0, align 4
@tcm_set_alt = common dso_local global i32 0, align 4
@tcm_setup = common dso_local global i32 0, align 4
@tcm_disable = common dso_local global i32 0, align 4
@tcm_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function* (%struct.usb_function_instance*)* @tcm_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function* @tcm_alloc(%struct.usb_function_instance* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.usb_function_instance*, align 8
  %4 = alloca %struct.f_uas*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_function_instance* %0, %struct.usb_function_instance** %3, align 8
  %6 = call i32 @mutex_lock(i32* @tpg_instances_lock)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TPG_INSTANCES, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tpg_instances, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.usb_function_instance*, %struct.usb_function_instance** %16, align 8
  %18 = load %struct.usb_function_instance*, %struct.usb_function_instance** %3, align 8
  %19 = icmp eq %struct.usb_function_instance* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %25

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %7

25:                                               ; preds = %20, %7
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TPG_INSTANCES, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = call i32 @mutex_unlock(i32* @tpg_instances_lock)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.usb_function* @ERR_PTR(i32 %32)
  store %struct.usb_function* %33, %struct.usb_function** %2, align 8
  br label %83

34:                                               ; preds = %25
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.f_uas* @kzalloc(i32 40, i32 %35)
  store %struct.f_uas* %36, %struct.f_uas** %4, align 8
  %37 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %38 = icmp ne %struct.f_uas* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = call i32 @mutex_unlock(i32* @tpg_instances_lock)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.usb_function* @ERR_PTR(i32 %42)
  store %struct.usb_function* %43, %struct.usb_function** %2, align 8
  br label %83

44:                                               ; preds = %34
  %45 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %46 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @tcm_bind, align 4
  %49 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %50 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @tcm_unbind, align 4
  %53 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %54 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @tcm_set_alt, align 4
  %57 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %58 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @tcm_setup, align 4
  %61 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %62 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @tcm_disable, align 4
  %65 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %66 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @tcm_free, align 4
  %69 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %70 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tpg_instances, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %79 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = call i32 @mutex_unlock(i32* @tpg_instances_lock)
  %81 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %82 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %81, i32 0, i32 0
  store %struct.usb_function* %82, %struct.usb_function** %2, align 8
  br label %83

83:                                               ; preds = %44, %39, %29
  %84 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  ret %struct.usb_function* %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.usb_function* @ERR_PTR(i32) #1

declare dso_local %struct.f_uas* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
