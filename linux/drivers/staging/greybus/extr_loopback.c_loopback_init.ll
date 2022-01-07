; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_loopback_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_loopback_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@gb_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"gb_loopback\00", align 1
@loopback_class = common dso_local global i32 0, align 4
@gb_loopback_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @loopback_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 1))
  %4 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 0), align 4
  %5 = call i32 @class_register(i32* @loopback_class)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %17

9:                                                ; preds = %0
  %10 = call i32 @greybus_register(i32* @gb_loopback_driver)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %15

14:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %21

15:                                               ; preds = %13
  %16 = call i32 @class_unregister(i32* @loopback_class)
  br label %17

17:                                               ; preds = %15, %8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 0), align 4
  %19 = call i32 @debugfs_remove_recursive(i32 %18)
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @class_register(i32*) #1

declare dso_local i32 @greybus_register(i32*) #1

declare dso_local i32 @class_unregister(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
