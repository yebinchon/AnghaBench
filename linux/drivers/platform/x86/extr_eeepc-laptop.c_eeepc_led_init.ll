; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CM_ASL_TPD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"led_workqueue\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tpd_led_update = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"eeepc::touchpad\00", align 1
@tpd_led_set = common dso_local global i32 0, align 4
@tpd_led_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*)* @eeepc_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_led_init(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeepc_laptop*, align 8
  %4 = alloca i32, align 4
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %3, align 8
  %5 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %6 = load i32, i32* @CM_ASL_TPD, align 4
  %7 = call i32 @get_acpi(%struct.eeepc_laptop* %5, i32 %6)
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

12:                                               ; preds = %1
  %13 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %15 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %17 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %64

23:                                               ; preds = %12
  %24 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %25 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %24, i32 0, i32 3
  %26 = load i32, i32* @tpd_led_update, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %29 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @tpd_led_set, align 4
  %32 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %33 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %36 = load i32, i32* @CM_ASL_TPD, align 4
  %37 = call i32 @get_acpi(%struct.eeepc_laptop* %35, i32 %36)
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i32, i32* @tpd_led_get, align 4
  %41 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %42 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %23
  %45 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %46 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %49 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %53 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %52, i32 0, i32 1
  %54 = call i32 @led_classdev_register(i32* %51, %struct.TYPE_4__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %59 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @destroy_workqueue(i32 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %57, %20, %11
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @get_acpi(%struct.eeepc_laptop*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
