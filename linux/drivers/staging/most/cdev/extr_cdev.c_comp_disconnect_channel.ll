; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/cdev/extr_cdev.c_comp_disconnect_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/cdev/extr_cdev.c_comp_disconnect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.comp_channel = type { i32, i32, i64, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Bad interface pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32)* @comp_disconnect_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_disconnect_channel(%struct.most_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.most_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comp_channel*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %8 = icmp ne %struct.most_interface* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.comp_channel* @get_channel(%struct.most_interface* %14, i32 %15)
  store %struct.comp_channel* %16, %struct.comp_channel** %6, align 8
  %17 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %18 = icmp ne %struct.comp_channel* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %13
  %23 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %24 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %27 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %26, i32 0, i32 3
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %30 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %32 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %31, i32 0, i32 3
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %35 = call i32 @destroy_cdev(%struct.comp_channel* %34)
  %36 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %37 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %22
  %41 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %42 = call i32 @stop_channel(%struct.comp_channel* %41)
  %43 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %44 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %43, i32 0, i32 1
  %45 = call i32 @wake_up_interruptible(i32* %44)
  %46 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %47 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %55

49:                                               ; preds = %22
  %50 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %51 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %54 = call i32 @destroy_channel(%struct.comp_channel* %53)
  br label %55

55:                                               ; preds = %49, %40
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %19, %9
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.comp_channel* @get_channel(%struct.most_interface*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @destroy_cdev(%struct.comp_channel*) #1

declare dso_local i32 @stop_channel(%struct.comp_channel*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @destroy_channel(%struct.comp_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
