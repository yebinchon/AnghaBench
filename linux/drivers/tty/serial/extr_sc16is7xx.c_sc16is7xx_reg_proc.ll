; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_reg_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_reg_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_work = type { i32 }
%struct.sc16is7xx_one = type { %struct.TYPE_3__, %struct.sc16is7xx_one_config }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sc16is7xx_one_config = type { i32, i32 }

@reg_work = common dso_local global i32 0, align 4
@SC16IS7XX_RECONF_MD = common dso_local global i32 0, align 4
@SC16IS7XX_MCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_MCR_LOOP_BIT = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@SC16IS7XX_MCR_RTS_BIT = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@SC16IS7XX_MCR_DTR_BIT = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@SC16IS7XX_RECONF_IER = common dso_local global i32 0, align 4
@SC16IS7XX_IER_REG = common dso_local global i32 0, align 4
@SC16IS7XX_RECONF_RS485 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kthread_work*)* @sc16is7xx_reg_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_reg_proc(%struct.kthread_work* %0) #0 {
  %2 = alloca %struct.kthread_work*, align 8
  %3 = alloca %struct.sc16is7xx_one*, align 8
  %4 = alloca %struct.sc16is7xx_one_config, align 4
  %5 = alloca i64, align 8
  store %struct.kthread_work* %0, %struct.kthread_work** %2, align 8
  %6 = load %struct.kthread_work*, %struct.kthread_work** %2, align 8
  %7 = load i32, i32* @reg_work, align 4
  %8 = call %struct.sc16is7xx_one* @to_sc16is7xx_one(%struct.kthread_work* %6, i32 %7)
  store %struct.sc16is7xx_one* %8, %struct.sc16is7xx_one** %3, align 8
  %9 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %10 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %15 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %14, i32 0, i32 1
  %16 = bitcast %struct.sc16is7xx_one_config* %4 to i8*
  %17 = bitcast %struct.sc16is7xx_one_config* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %19 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %18, i32 0, i32 1
  %20 = call i32 @memset(%struct.sc16is7xx_one_config* %19, i32 0, i32 8)
  %21 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %22 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = getelementptr inbounds %struct.sc16is7xx_one_config, %struct.sc16is7xx_one_config* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SC16IS7XX_RECONF_MD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %1
  %32 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %33 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %32, i32 0, i32 0
  %34 = load i32, i32* @SC16IS7XX_MCR_REG, align 4
  %35 = load i32, i32* @SC16IS7XX_MCR_LOOP_BIT, align 4
  %36 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %37 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TIOCM_LOOP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @SC16IS7XX_MCR_LOOP_BIT, align 4
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = call i32 @sc16is7xx_port_update(%struct.TYPE_3__* %33, i32 %34, i32 %35, i32 %47)
  %49 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %50 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %49, i32 0, i32 0
  %51 = load i32, i32* @SC16IS7XX_MCR_REG, align 4
  %52 = load i32, i32* @SC16IS7XX_MCR_RTS_BIT, align 4
  %53 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %54 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TIOCM_RTS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @SC16IS7XX_MCR_RTS_BIT, align 4
  br label %63

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = call i32 @sc16is7xx_port_update(%struct.TYPE_3__* %50, i32 %51, i32 %52, i32 %64)
  %66 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %67 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %66, i32 0, i32 0
  %68 = load i32, i32* @SC16IS7XX_MCR_REG, align 4
  %69 = load i32, i32* @SC16IS7XX_MCR_DTR_BIT, align 4
  %70 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %71 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TIOCM_DTR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* @SC16IS7XX_MCR_DTR_BIT, align 4
  br label %80

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = call i32 @sc16is7xx_port_update(%struct.TYPE_3__* %67, i32 %68, i32 %69, i32 %81)
  br label %83

83:                                               ; preds = %80, %1
  %84 = getelementptr inbounds %struct.sc16is7xx_one_config, %struct.sc16is7xx_one_config* %4, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SC16IS7XX_RECONF_IER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %91 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %90, i32 0, i32 0
  %92 = load i32, i32* @SC16IS7XX_IER_REG, align 4
  %93 = getelementptr inbounds %struct.sc16is7xx_one_config, %struct.sc16is7xx_one_config* %4, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @sc16is7xx_port_update(%struct.TYPE_3__* %91, i32 %92, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %89, %83
  %97 = getelementptr inbounds %struct.sc16is7xx_one_config, %struct.sc16is7xx_one_config* %4, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SC16IS7XX_RECONF_RS485, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %3, align 8
  %104 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %103, i32 0, i32 0
  %105 = call i32 @sc16is7xx_reconf_rs485(%struct.TYPE_3__* %104)
  br label %106

106:                                              ; preds = %102, %96
  ret void
}

declare dso_local %struct.sc16is7xx_one* @to_sc16is7xx_one(%struct.kthread_work*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.sc16is7xx_one_config*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sc16is7xx_port_update(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @sc16is7xx_reconf_rs485(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
