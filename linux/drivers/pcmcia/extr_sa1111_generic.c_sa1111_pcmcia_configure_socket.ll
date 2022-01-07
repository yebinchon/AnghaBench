; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_generic.c_sa1111_pcmcia_configure_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_generic.c_sa1111_pcmcia_configure_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sa1111_pcmcia_socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@PCCR_S0_RST = common dso_local global i32 0, align 4
@PCCR_S0_FLT = common dso_local global i32 0, align 4
@PCCR_S0_PWAITEN = common dso_local global i32 0, align 4
@PCCR_S0_PSE = common dso_local global i32 0, align 4
@PCCR_S1_RST = common dso_local global i32 0, align 4
@PCCR_S1_FLT = common dso_local global i32 0, align 4
@PCCR_S1_PWAITEN = common dso_local global i32 0, align 4
@PCCR_S1_PSE = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@SS_OUTPUT_ENA = common dso_local global i32 0, align 4
@PCCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa1111_pcmcia_configure_socket(%struct.soc_pcmcia_socket* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_pcmcia_socket*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.sa1111_pcmcia_socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %12 = call %struct.sa1111_pcmcia_socket* @to_skt(%struct.soc_pcmcia_socket* %11)
  store %struct.sa1111_pcmcia_socket* %12, %struct.sa1111_pcmcia_socket** %6, align 8
  %13 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %14 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %32 [
    i32 0, label %16
    i32 1, label %24
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @PCCR_S0_RST, align 4
  %18 = load i32, i32* @PCCR_S0_FLT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PCCR_S0_PWAITEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PCCR_S0_PSE, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @PCCR_S1_RST, align 4
  %26 = load i32, i32* @PCCR_S1_FLT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PCCR_S1_PWAITEN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PCCR_S1_PSE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %33

32:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %112

33:                                               ; preds = %24, %16
  store i32 0, i32* %8, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @PCCR_S0_PWAITEN, align 4
  %40 = load i32, i32* @PCCR_S1_PWAITEN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 50
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @PCCR_S0_PSE, align 4
  %51 = load i32, i32* @PCCR_S1_PSE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SS_RESET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @PCCR_S0_RST, align 4
  %64 = load i32, i32* @PCCR_S1_RST, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SS_OUTPUT_ENA, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @PCCR_S0_FLT, align 4
  %77 = load i32, i32* @PCCR_S1_FLT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @local_irq_save(i64 %82)
  %84 = load %struct.sa1111_pcmcia_socket*, %struct.sa1111_pcmcia_socket** %6, align 8
  %85 = getelementptr inbounds %struct.sa1111_pcmcia_socket, %struct.sa1111_pcmcia_socket* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PCCR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @readl_relaxed(i64 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.sa1111_pcmcia_socket*, %struct.sa1111_pcmcia_socket** %6, align 8
  %103 = getelementptr inbounds %struct.sa1111_pcmcia_socket, %struct.sa1111_pcmcia_socket* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PCCR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel_relaxed(i32 %101, i64 %108)
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @local_irq_restore(i64 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %81, %32
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.sa1111_pcmcia_socket* @to_skt(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
