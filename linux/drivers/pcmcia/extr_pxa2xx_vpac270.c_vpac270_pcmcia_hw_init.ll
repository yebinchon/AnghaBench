; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_vpac270.c_vpac270_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_vpac270.c_vpac270_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@vpac270_pcmcia_gpios = common dso_local global i32 0, align 4
@GPIO84_VPAC270_PCMCIA_CD = common dso_local global i32 0, align 4
@SOC_STAT_CD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"PCMCIA CD\00", align 1
@GPIO35_VPAC270_PCMCIA_RDY = common dso_local global i32 0, align 4
@SOC_STAT_RDY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"PCMCIA Ready\00", align 1
@vpac270_cf_gpios = common dso_local global i32 0, align 4
@GPIO17_VPAC270_CF_CD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"CF CD\00", align 1
@GPIO12_VPAC270_CF_RDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"CF Ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @vpac270_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpac270_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %4 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %5 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load i32, i32* @vpac270_pcmcia_gpios, align 4
  %10 = load i32, i32* @vpac270_pcmcia_gpios, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @gpio_request_array(i32 %9, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @GPIO84_VPAC270_PCMCIA_CD, align 4
  %14 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %15 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @SOC_STAT_CD, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %13, i32* %19, align 8
  %20 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %21 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @SOC_STAT_CD, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @GPIO35_VPAC270_PCMCIA_RDY, align 4
  %27 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %28 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @SOC_STAT_RDY, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %26, i32* %32, align 8
  %33 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %34 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @SOC_STAT_RDY, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  br label %70

39:                                               ; preds = %1
  %40 = load i32, i32* @vpac270_cf_gpios, align 4
  %41 = load i32, i32* @vpac270_cf_gpios, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @gpio_request_array(i32 %40, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @GPIO17_VPAC270_CF_CD, align 4
  %45 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %46 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* @SOC_STAT_CD, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 8
  %51 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %52 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* @SOC_STAT_CD, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %56, align 8
  %57 = load i32, i32* @GPIO12_VPAC270_CF_RDY, align 4
  %58 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %59 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @SOC_STAT_RDY, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %57, i32* %63, align 8
  %64 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %65 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* @SOC_STAT_RDY, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %69, align 8
  br label %70

70:                                               ; preds = %39, %8
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @gpio_request_array(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
