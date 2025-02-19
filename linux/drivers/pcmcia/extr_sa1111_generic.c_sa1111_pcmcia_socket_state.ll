; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_generic.c_sa1111_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_generic.c_sa1111_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sa1111_pcmcia_socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PCSR = common dso_local global i64 0, align 8
@PCSR_S0_DETECT = common dso_local global i32 0, align 4
@PCSR_S0_READY = common dso_local global i32 0, align 4
@PCSR_S0_BVD1 = common dso_local global i32 0, align 4
@PCSR_S0_BVD2 = common dso_local global i32 0, align 4
@PCSR_S0_WP = common dso_local global i32 0, align 4
@PCSR_S0_VS1 = common dso_local global i32 0, align 4
@PCSR_S0_VS2 = common dso_local global i32 0, align 4
@PCSR_S1_DETECT = common dso_local global i32 0, align 4
@PCSR_S1_READY = common dso_local global i32 0, align 4
@PCSR_S1_BVD1 = common dso_local global i32 0, align 4
@PCSR_S1_BVD2 = common dso_local global i32 0, align 4
@PCSR_S1_WP = common dso_local global i32 0, align 4
@PCSR_S1_VS1 = common dso_local global i32 0, align 4
@PCSR_S1_VS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa1111_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca %struct.sa1111_pcmcia_socket*, align 8
  %6 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %7 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %8 = call %struct.sa1111_pcmcia_socket* @to_skt(%struct.soc_pcmcia_socket* %7)
  store %struct.sa1111_pcmcia_socket* %8, %struct.sa1111_pcmcia_socket** %5, align 8
  %9 = load %struct.sa1111_pcmcia_socket*, %struct.sa1111_pcmcia_socket** %5, align 8
  %10 = getelementptr inbounds %struct.sa1111_pcmcia_socket, %struct.sa1111_pcmcia_socket* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCSR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %18 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %134 [
    i32 0, label %20
    i32 1, label %77
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PCSR_S0_DETECT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %28 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PCSR_S0_READY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %36 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PCSR_S0_BVD1, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %44 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PCSR_S0_BVD2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %52 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PCSR_S0_WP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %60 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PCSR_S0_VS1, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  %67 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %68 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PCSR_S0_VS2, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 1
  %75 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %76 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  br label %134

77:                                               ; preds = %2
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PCSR_S1_DETECT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 0, i32 1
  %84 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %85 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @PCSR_S1_READY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %93 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PCSR_S1_BVD1, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %101 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @PCSR_S1_BVD2, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  %108 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %109 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @PCSR_S1_WP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %117 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @PCSR_S1_VS1, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 0, i32 1
  %124 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %125 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @PCSR_S1_VS2, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 0, i32 1
  %132 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %133 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %2, %77, %20
  ret void
}

declare dso_local %struct.sa1111_pcmcia_socket* @to_skt(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
