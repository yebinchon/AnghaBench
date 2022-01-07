; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_viper.c_viper_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_viper.c_viper_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.soc_pcmcia_socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.arcom_pcmcia_pdata = type { i32, i32, i32 }

@SOC_STAT_CD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"PCMCIA_CD\00", align 1
@SOC_STAT_RDY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"CF ready\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CF power\00", align 1
@arcom_pcmcia_dev = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to setup PCMCIA GPIOs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @viper_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viper_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.arcom_pcmcia_pdata*, align 8
  %5 = alloca i64, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %6 = call %struct.arcom_pcmcia_pdata* (...) @viper_get_pdata()
  store %struct.arcom_pcmcia_pdata* %6, %struct.arcom_pcmcia_pdata** %4, align 8
  %7 = load %struct.arcom_pcmcia_pdata*, %struct.arcom_pcmcia_pdata** %4, align 8
  %8 = getelementptr inbounds %struct.arcom_pcmcia_pdata, %struct.arcom_pcmcia_pdata* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %11 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i64, i64* @SOC_STAT_CD, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %9, i32* %15, align 8
  %16 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %17 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i64, i64* @SOC_STAT_CD, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.arcom_pcmcia_pdata*, %struct.arcom_pcmcia_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.arcom_pcmcia_pdata, %struct.arcom_pcmcia_pdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %26 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* @SOC_STAT_RDY, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %24, i32* %30, align 8
  %31 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %32 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* @SOC_STAT_RDY, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.arcom_pcmcia_pdata*, %struct.arcom_pcmcia_pdata** %4, align 8
  %38 = getelementptr inbounds %struct.arcom_pcmcia_pdata, %struct.arcom_pcmcia_pdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @gpio_request(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %62

43:                                               ; preds = %1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @local_irq_save(i64 %44)
  %46 = load %struct.arcom_pcmcia_pdata*, %struct.arcom_pcmcia_pdata** %4, align 8
  %47 = getelementptr inbounds %struct.arcom_pcmcia_pdata, %struct.arcom_pcmcia_pdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @gpio_direction_output(i32 %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @local_irq_restore(i64 %52)
  br label %57

54:                                               ; preds = %43
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  store i32 0, i32* %2, align 4
  br label %66

57:                                               ; preds = %51
  %58 = load %struct.arcom_pcmcia_pdata*, %struct.arcom_pcmcia_pdata** %4, align 8
  %59 = getelementptr inbounds %struct.arcom_pcmcia_pdata, %struct.arcom_pcmcia_pdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gpio_free(i32 %60)
  br label %62

62:                                               ; preds = %57, %42
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arcom_pcmcia_dev, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %54
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.arcom_pcmcia_pdata* @viper_get_pdata(...) #1

declare dso_local i64 @gpio_request(i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
