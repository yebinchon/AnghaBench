; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_dev_set_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_dev_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.vhost_dev = type { i32*, %struct.task_struct* }
%struct.task_struct = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@vhost_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vhost-%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vhost_dev_set_owner(%struct.vhost_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  %6 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %7 = call i64 @vhost_dev_has_owner(%struct.vhost_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %14 = call i32* @get_task_mm(%struct.TYPE_3__* %13)
  %15 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* @vhost_worker, align 4
  %18 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.task_struct* @kthread_create(i32 %17, %struct.vhost_dev* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.task_struct* %22, %struct.task_struct** %4, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = call i64 @IS_ERR(%struct.task_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.task_struct* %27)
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %12
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %32 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %31, i32 0, i32 1
  store %struct.task_struct* %30, %struct.task_struct** %32, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = call i32 @wake_up_process(%struct.task_struct* %33)
  %35 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %36 = call i32 @vhost_attach_cgroups(%struct.vhost_dev* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %47

40:                                               ; preds = %29
  %41 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %42 = call i32 @vhost_dev_alloc_iovecs(%struct.vhost_dev* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %47

46:                                               ; preds = %40
  store i64 0, i64* %2, align 8
  br label %68

47:                                               ; preds = %45, %39
  %48 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %49 = call i32 @kthread_stop(%struct.task_struct* %48)
  %50 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %51 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %50, i32 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %51, align 8
  br label %52

52:                                               ; preds = %47, %26
  %53 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %54 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %59 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @mmput(i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %64 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %62, %9
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %65, %46
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local i64 @vhost_dev_has_owner(%struct.vhost_dev*) #1

declare dso_local i32* @get_task_mm(%struct.TYPE_3__*) #1

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.vhost_dev*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @vhost_attach_cgroups(%struct.vhost_dev*) #1

declare dso_local i32 @vhost_dev_alloc_iovecs(%struct.vhost_dev*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i32 @mmput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
