; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_colibri.c_colibri_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_colibri.c_colibri_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.soc_pcmcia_socket = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8* }

@colibri_pcmcia_gpios = common dso_local global %struct.TYPE_8__* null, align 8
@READY = common dso_local global i64 0, align 8
@DETECT = common dso_local global i64 0, align 8
@SOC_STAT_CD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"PCMCIA CD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @colibri_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @colibri_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @colibri_pcmcia_gpios, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @colibri_pcmcia_gpios, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %5)
  %7 = call i32 @gpio_request_array(%struct.TYPE_8__* %4, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @colibri_pcmcia_gpios, align 8
  %13 = load i64, i64* @READY, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @gpio_to_irq(i32 %16)
  %18 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %19 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @colibri_pcmcia_gpios, align 8
  %22 = load i64, i64* @DETECT, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @gpio_to_irq(i32 %25)
  %27 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %28 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i64, i64* @SOC_STAT_CD, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i8* %26, i8** %32, align 8
  %33 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %34 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i64, i64* @SOC_STAT_CD, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  br label %39

39:                                               ; preds = %11, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @gpio_request_array(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i8* @gpio_to_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
