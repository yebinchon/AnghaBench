; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_dell_rbtn_notifier_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_dell_rbtn_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.notifier_block = type { i32 }

@rbtn_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@rbtn_inc_count = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@rbtn_chain_head = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@auto_remove_rfkill = common dso_local global i64 0, align 8
@rbtn_switch_dev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dell_rbtn_notifier_register(%struct.notifier_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.notifier_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = bitcast i32* %5 to i8*
  %8 = load i32, i32* @rbtn_inc_count, align 4
  %9 = call i32 @driver_for_each_device(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rbtn_driver, i32 0, i32 0), i32* null, i8* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %12
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rbtn_chain_head, i32 0, i32 0), align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load %struct.notifier_block*, %struct.notifier_block** %3, align 8
  %24 = call i32 @atomic_notifier_chain_register(%struct.TYPE_5__* @rbtn_chain_head, %struct.notifier_block* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %18
  %30 = load i64, i64* @auto_remove_rfkill, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @rbtn_switch_dev, align 4
  %37 = call i32 @driver_for_each_device(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rbtn_driver, i32 0, i32 0), i32* null, i8* null, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %32, %29
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %27, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @driver_for_each_device(i32*, i32*, i8*, i32) #1

declare dso_local i32 @atomic_notifier_chain_register(%struct.TYPE_5__*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
