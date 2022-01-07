; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_balloon3.c_balloon3_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_balloon3.c_balloon3_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }
%struct.pcmcia_state = type { i32, i32, i32, i64, i64 }

@BALLOON3_CF_STATUS_REG = common dso_local global i32 0, align 4
@balloon3_pcmcia_status = common dso_local global i32* null, align 8
@BALLOON3_CF_nSTSCHG_BVD1 = common dso_local global i32 0, align 4
@BALLOON3_BP_NSTSCHG_IRQ = common dso_local global i32 0, align 4
@BALLOON3_CF_nIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @balloon3_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon3_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %7 = load i32, i32* @BALLOON3_CF_STATUS_REG, align 4
  %8 = call i32 @__raw_readw(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** @balloon3_pcmcia_status, align 8
  %11 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %12 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %9, %15
  %17 = load i32, i32* @BALLOON3_CF_nSTSCHG_BVD1, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** @balloon3_pcmcia_status, align 8
  %24 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %25 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %22, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BALLOON3_CF_nSTSCHG_BVD1, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @BALLOON3_BP_NSTSCHG_IRQ, align 4
  %34 = call i32 @enable_irq(i32 %33)
  br label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @BALLOON3_BP_NSTSCHG_IRQ, align 4
  %37 = call i32 @disable_irq(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BALLOON3_CF_nIRQ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %48 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @BALLOON3_CF_nSTSCHG_BVD1, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %57 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %59 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %61 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %63 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  ret void
}

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
