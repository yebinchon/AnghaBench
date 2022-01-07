; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_master_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_master_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_master = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@siox_is_registered = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"siox-%d\00", align 1
@jiffies = common dso_local global i32 0, align 4
@siox_poll_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siox_master_register(%struct.siox_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siox_master*, align 8
  %4 = alloca i32, align 4
  store %struct.siox_master* %0, %struct.siox_master** %3, align 8
  %5 = load i32, i32* @siox_is_registered, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EPROBE_DEFER, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %12 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %10
  %19 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %20 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %19, i32 0, i32 1
  %21 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %22 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_set_name(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %26 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %25, i32 0, i32 6
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %29 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %28, i32 0, i32 5
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load i32, i32* @jiffies, align 4
  %32 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %33 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @siox_poll_thread, align 4
  %35 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %36 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %37 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kthread_run(i32 %34, %struct.siox_master* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %41 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %43 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %18
  %48 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %49 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %51 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %67

54:                                               ; preds = %18
  %55 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %56 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %55, i32 0, i32 1
  %57 = call i32 @device_add(i32* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %62 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @kthread_stop(i32 %63)
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %47, %15, %7
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.siox_master*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
