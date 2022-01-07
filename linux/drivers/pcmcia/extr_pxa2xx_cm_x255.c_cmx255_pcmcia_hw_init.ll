; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_cm_x255.c_cmx255_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_cm_x255.c_cmx255_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@GPIO_PCMCIA_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PCCard reset\00", align 1
@GPIO_PCMCIA_S0_CD_VALID = common dso_local global i32 0, align 4
@SOC_STAT_CD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"PCMCIA0 CD\00", align 1
@GPIO_PCMCIA_S0_RDYINT = common dso_local global i32 0, align 4
@SOC_STAT_RDY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"PCMCIA0 RDY\00", align 1
@GPIO_PCMCIA_S1_CD_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"PCMCIA1 CD\00", align 1
@GPIO_PCMCIA_S1_RDYINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"PCMCIA1 RDY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @cmx255_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmx255_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %5 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load i32, i32* @GPIO_PCMCIA_RESET, align 4
  %13 = call i32 @gpio_direction_output(i32 %12, i32 0)
  %14 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %11
  %19 = load i32, i32* @GPIO_PCMCIA_S0_CD_VALID, align 4
  %20 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %21 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @SOC_STAT_CD, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %19, i32* %25, align 8
  %26 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %27 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @SOC_STAT_CD, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @GPIO_PCMCIA_S0_RDYINT, align 4
  %33 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %34 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @SOC_STAT_RDY, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %32, i32* %38, align 8
  %39 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %40 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @SOC_STAT_RDY, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  br label %72

45:                                               ; preds = %11
  %46 = load i32, i32* @GPIO_PCMCIA_S1_CD_VALID, align 4
  %47 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %48 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* @SOC_STAT_CD, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 8
  %53 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %54 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* @SOC_STAT_CD, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @GPIO_PCMCIA_S1_RDYINT, align 4
  %60 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %61 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* @SOC_STAT_RDY, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %59, i32* %65, align 8
  %66 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %67 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* @SOC_STAT_RDY, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %71, align 8
  br label %72

72:                                               ; preds = %45, %18
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
