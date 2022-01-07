; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa11xx_base.c_sa1100_pcmcia_show_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa11xx_base.c_sa1100_pcmcia_show_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32, i32 }
%struct.soc_pcmcia_timing = type { i32, i32, i32 }

@MECR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"I/O      : %uns (%uns)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"attribute: %uns (%uns)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"common   : %uns (%uns)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*, i8*)* @sa1100_pcmcia_show_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_pcmcia_show_timing(%struct.soc_pcmcia_socket* %0, i8* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.soc_pcmcia_timing, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %10 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_get_rate(i32 %11)
  %13 = sdiv i32 %12, 1000
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @MECR, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %17 = call i32 @soc_common_pcmcia_get_timing(%struct.soc_pcmcia_socket* %16, %struct.soc_pcmcia_timing* %5)
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %24 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MECR_BSIO_GET(i64 %22, i32 %25)
  %27 = call i32 @sa1100_pcmcia_cmd_time(i32 %21, i32 %26)
  %28 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %38 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MECR_BSA_GET(i64 %36, i32 %39)
  %41 = call i32 @sa1100_pcmcia_cmd_time(i32 %35, i32 %40)
  %42 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %52 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MECR_BSM_GET(i64 %50, i32 %53)
  %55 = call i32 @sa1100_pcmcia_cmd_time(i32 %49, i32 %54)
  %56 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %55)
  %57 = load i8*, i8** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  ret i32 %65
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @soc_common_pcmcia_get_timing(%struct.soc_pcmcia_socket*, %struct.soc_pcmcia_timing*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @sa1100_pcmcia_cmd_time(i32, i32) #1

declare dso_local i32 @MECR_BSIO_GET(i64, i32) #1

declare dso_local i32 @MECR_BSA_GET(i64, i32) #1

declare dso_local i32 @MECR_BSM_GET(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
