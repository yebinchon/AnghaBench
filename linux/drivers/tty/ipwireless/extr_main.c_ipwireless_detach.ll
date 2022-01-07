; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_main.c_ipwireless_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_main.c_ipwireless_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.ipw_dev* }
%struct.ipw_dev = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @ipwireless_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipwireless_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.ipw_dev*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load %struct.ipw_dev*, %struct.ipw_dev** %5, align 8
  store %struct.ipw_dev* %6, %struct.ipw_dev** %3, align 8
  %7 = load %struct.ipw_dev*, %struct.ipw_dev** %3, align 8
  %8 = call i32 @release_ipwireless(%struct.ipw_dev* %7)
  %9 = load %struct.ipw_dev*, %struct.ipw_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ipw_dev*, %struct.ipw_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ipwireless_tty_free(i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.ipw_dev*, %struct.ipw_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ipw_dev*, %struct.ipw_dev** %3, align 8
  %25 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ipwireless_network_free(i32* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.ipw_dev*, %struct.ipw_dev** %3, align 8
  %30 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.ipw_dev*, %struct.ipw_dev** %3, align 8
  %35 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ipwireless_hardware_free(i32* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.ipw_dev*, %struct.ipw_dev** %3, align 8
  %40 = call i32 @kfree(%struct.ipw_dev* %39)
  ret void
}

declare dso_local i32 @release_ipwireless(%struct.ipw_dev*) #1

declare dso_local i32 @ipwireless_tty_free(i32*) #1

declare dso_local i32 @ipwireless_network_free(i32*) #1

declare dso_local i32 @ipwireless_hardware_free(i32*) #1

declare dso_local i32 @kfree(%struct.ipw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
