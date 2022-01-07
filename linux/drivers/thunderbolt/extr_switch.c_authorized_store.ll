; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_authorized_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_authorized_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tb_switch = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @authorized_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @authorized_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tb_switch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.tb_switch* @tb_to_switch(%struct.device* %13)
  store %struct.tb_switch* %14, %struct.tb_switch** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @kstrtouint(i8* %15, i32 0, i32* %11)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %12, align 8
  store i64 %20, i64* %5, align 8
  br label %48

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ugt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %48

27:                                               ; preds = %21
  %28 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %29 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %28, i32 0, i32 0
  %30 = call i32 @pm_runtime_get_sync(i32* %29)
  %31 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @tb_switch_set_authorized(%struct.tb_switch* %31, i32 %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %35 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_mark_last_busy(i32* %35)
  %37 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %38 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %37, i32 0, i32 0
  %39 = call i32 @pm_runtime_put_autosuspend(i32* %38)
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i64, i64* %12, align 8
  br label %46

44:                                               ; preds = %27
  %45 = load i64, i64* %9, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %46, %24, %19
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local %struct.tb_switch* @tb_to_switch(%struct.device*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i64 @tb_switch_set_authorized(%struct.tb_switch*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
