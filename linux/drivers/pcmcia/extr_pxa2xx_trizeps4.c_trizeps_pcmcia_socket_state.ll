; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_trizeps4.c_trizeps_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_trizeps4.c_trizeps_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i32 }

@trizeps_pcmcia_status = common dso_local global i16* null, align 8
@ConXS_CFSR_BVD_MASK = common dso_local global i16 0, align 2
@ConXS_CFSR_BVD1 = common dso_local global i16 0, align 2
@ConXS_CFSR_BVD2 = common dso_local global i16 0, align 2
@ConXS_CFSR_VS1 = common dso_local global i16 0, align 2
@ConXS_CFSR_VS2 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @trizeps_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trizeps_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  store i16 0, i16* %5, align 2
  %7 = call zeroext i16 (...) @CFSR_readw()
  store i16 %7, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16*, i16** @trizeps_pcmcia_status, align 8
  %11 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %12 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i16, i16* %10, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = xor i32 %9, %16
  %18 = load i16, i16* @ConXS_CFSR_BVD_MASK, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %6, align 2
  %22 = load i16, i16* %6, align 2
  %23 = icmp ne i16 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load i16, i16* %5, align 2
  %26 = load i16*, i16** @trizeps_pcmcia_status, align 8
  %27 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %28 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i16, i16* %26, i64 %29
  store i16 %25, i16* %30, align 2
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @ConXS_CFSR_BVD1, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %42 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  switch i64 %43, label %98 [
    i64 0, label %44
    i64 1, label %85
  ]

44:                                               ; preds = %40
  %45 = load i16, i16* %5, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @ConXS_CFSR_BVD1, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %54 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i16, i16* %5, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @ConXS_CFSR_BVD2, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %64 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i16, i16* %5, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @ConXS_CFSR_VS1, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 1
  %73 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %74 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i16, i16* %5, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* @ConXS_CFSR_VS2, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 1
  %83 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %84 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %98

85:                                               ; preds = %40
  %86 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %87 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %86, i32 0, i32 5
  store i32 0, i32* %87, align 4
  %88 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %89 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %88, i32 0, i32 4
  store i32 0, i32* %89, align 4
  %90 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %91 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %90, i32 0, i32 0
  store i32 0, i32* %91, align 4
  %92 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %93 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %95 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %94, i32 0, i32 2
  store i32 0, i32* %95, align 4
  %96 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %97 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %40, %85, %44
  ret void
}

declare dso_local zeroext i16 @CFSR_readw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
