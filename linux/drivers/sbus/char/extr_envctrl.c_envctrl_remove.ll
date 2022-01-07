; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32* }

@kenvctrld_task = common dso_local global i32 0, align 4
@i2c = common dso_local global i32 0, align 4
@envctrl_dev = common dso_local global i32 0, align 4
@ENVCTRL_MAX_CPU = common dso_local global i32 0, align 4
@i2c_childlist = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @envctrl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envctrl_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load i32, i32* @kenvctrld_task, align 4
  %5 = call i32 @kthread_stop(i32 %4)
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* @i2c, align 4
  %11 = call i32 @of_iounmap(i32* %9, i32 %10, i32 2)
  %12 = call i32 @misc_deregister(i32* @envctrl_dev)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @ENVCTRL_MAX_CPU, align 4
  %16 = mul nsw i32 %15, 2
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2c_childlist, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %13

29:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
