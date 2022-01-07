; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_viper.c_viper_pcmcia_configure_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_viper.c_viper_pcmcia_configure_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.soc_pcmcia_socket = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.arcom_pcmcia_pdata = type { i32, i32 (i32)* }

@SS_RESET = common dso_local global i32 0, align 4
@arcom_pcmcia_dev = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unsupported Vcc:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_4__*)* @viper_pcmcia_configure_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viper_pcmcia_configure_socket(%struct.soc_pcmcia_socket* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_pcmcia_socket*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.arcom_pcmcia_pdata*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = call %struct.arcom_pcmcia_pdata* (...) @viper_get_pdata()
  store %struct.arcom_pcmcia_pdata* %7, %struct.arcom_pcmcia_pdata** %6, align 8
  %8 = load %struct.arcom_pcmcia_pdata*, %struct.arcom_pcmcia_pdata** %6, align 8
  %9 = getelementptr inbounds %struct.arcom_pcmcia_pdata, %struct.arcom_pcmcia_pdata* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SS_RESET, align 4
  %15 = and i32 %13, %14
  %16 = call i32 %10(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %30 [
    i32 0, label %20
    i32 33, label %25
  ]

20:                                               ; preds = %2
  %21 = load %struct.arcom_pcmcia_pdata*, %struct.arcom_pcmcia_pdata** %6, align 8
  %22 = getelementptr inbounds %struct.arcom_pcmcia_pdata, %struct.arcom_pcmcia_pdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gpio_set_value(i32 %23, i32 0)
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.arcom_pcmcia_pdata*, %struct.arcom_pcmcia_pdata** %6, align 8
  %27 = getelementptr inbounds %struct.arcom_pcmcia_pdata, %struct.arcom_pcmcia_pdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gpio_set_value(i32 %28, i32 1)
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arcom_pcmcia_dev, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %3, align 4
  br label %38

37:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.arcom_pcmcia_pdata* @viper_get_pdata(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
