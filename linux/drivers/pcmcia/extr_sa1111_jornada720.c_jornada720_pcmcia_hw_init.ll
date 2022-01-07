; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_jornada720.c_jornada720_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_jornada720.c_jornada720_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { %struct.jornada720_data*, i64, %struct.TYPE_3__ }
%struct.jornada720_data = type { i8** }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"s1-power\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"s0-power\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@J720_GPIO_PWR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"s1-3v\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"s0-3v\00", align 1
@J720_GPIO_3V = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @jornada720_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada720_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.jornada720_data*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %6 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %7 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.jornada720_data* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.jornada720_data* %13, %struct.jornada720_data** %5, align 8
  %14 = load %struct.jornada720_data*, %struct.jornada720_data** %5, align 8
  %15 = icmp ne %struct.jornada720_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %22 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %27 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %28 = call i8* @devm_gpiod_get(%struct.device* %20, i8* %26, i32 %27)
  %29 = load %struct.jornada720_data*, %struct.jornada720_data** %5, align 8
  %30 = getelementptr inbounds %struct.jornada720_data, %struct.jornada720_data* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* @J720_GPIO_PWR, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  store i8* %28, i8** %33, align 8
  %34 = load %struct.jornada720_data*, %struct.jornada720_data** %5, align 8
  %35 = getelementptr inbounds %struct.jornada720_data, %struct.jornada720_data* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* @J720_GPIO_PWR, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %19
  %43 = load %struct.jornada720_data*, %struct.jornada720_data** %5, align 8
  %44 = getelementptr inbounds %struct.jornada720_data, %struct.jornada720_data* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* @J720_GPIO_PWR, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %2, align 4
  br label %85

50:                                               ; preds = %19
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %53 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %58 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %59 = call i8* @devm_gpiod_get(%struct.device* %51, i8* %57, i32 %58)
  %60 = load %struct.jornada720_data*, %struct.jornada720_data** %5, align 8
  %61 = getelementptr inbounds %struct.jornada720_data, %struct.jornada720_data* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* @J720_GPIO_3V, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load %struct.jornada720_data*, %struct.jornada720_data** %5, align 8
  %66 = getelementptr inbounds %struct.jornada720_data, %struct.jornada720_data* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* @J720_GPIO_3V, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %50
  %74 = load %struct.jornada720_data*, %struct.jornada720_data** %5, align 8
  %75 = getelementptr inbounds %struct.jornada720_data, %struct.jornada720_data* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* @J720_GPIO_3V, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @PTR_ERR(i8* %79)
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %50
  %82 = load %struct.jornada720_data*, %struct.jornada720_data** %5, align 8
  %83 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %84 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %83, i32 0, i32 0
  store %struct.jornada720_data* %82, %struct.jornada720_data** %84, align 8
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %73, %42, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.jornada720_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
