; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_main.c_ipwireless_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_main.c_ipwireless_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.ipw_dev* }
%struct.ipw_dev = type { i32, %struct.pcmcia_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ipwireless_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipwireless_attach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.ipw_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ipw_dev* @kzalloc(i32 16, i32 %6)
  store %struct.ipw_dev* %7, %struct.ipw_dev** %4, align 8
  %8 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %9 = icmp ne %struct.ipw_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %16 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %15, i32 0, i32 1
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %16, align 8
  %17 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 0
  store %struct.ipw_dev* %17, %struct.ipw_dev** %19, align 8
  %20 = call i32 (...) @ipwireless_hardware_create()
  %21 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %22 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %24 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %13
  %28 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %29 = call i32 @kfree(%struct.ipw_dev* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %13
  %33 = load %struct.ipw_dev*, %struct.ipw_dev** %4, align 8
  %34 = call i32 @config_ipwireless(%struct.ipw_dev* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %39 = call i32 @ipwireless_detach(%struct.pcmcia_device* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %37, %27, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.ipw_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @ipwireless_hardware_create(...) #1

declare dso_local i32 @kfree(%struct.ipw_dev*) #1

declare dso_local i32 @config_ipwireless(%struct.ipw_dev*) #1

declare dso_local i32 @ipwireless_detach(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
