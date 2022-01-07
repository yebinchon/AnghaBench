; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_bcm63xx_pcmcia.c_bcm63xx_pcmcia_set_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_bcm63xx_pcmcia.c_bcm63xx_pcmcia_set_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.bcm63xx_pcmcia_socket* }
%struct.bcm63xx_pcmcia_socket = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@PCMCIA_C1_REG = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@PCMCIA_C1_RESET_MASK = common dso_local global i32 0, align 4
@CARD_CARDBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.TYPE_3__*)* @bcm63xx_pcmcia_set_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_pcmcia_set_socket(%struct.pcmcia_socket* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.bcm63xx_pcmcia_socket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 0
  %10 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %9, align 8
  store %struct.bcm63xx_pcmcia_socket* %10, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %11 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %12 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %16 = load i32, i32* @PCMCIA_C1_REG, align 4
  %17 = call i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SS_RESET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @PCMCIA_C1_RESET_MASK, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @PCMCIA_C1_RESET_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %35 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %40 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CARD_CARDBUS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @PCMCIA_C1_RESET_MASK, align 4
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %38, %33
  %50 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PCMCIA_C1_REG, align 4
  %53 = call i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket* %50, i32 %51, i32 %52)
  %54 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %55 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = bitcast %struct.TYPE_3__* %55 to i8*
  %58 = bitcast %struct.TYPE_3__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %60 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %59, i32 0, i32 1
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket*, i32) #1

declare dso_local i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
