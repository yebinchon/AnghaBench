; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus_I_T_L.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus_I_T_L.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.domain_device = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }

@CLEAR_NEXUS_PRE = common dso_local global i32 0, align 4
@NEXUS_I_T_L = common dso_local global i32 0, align 4
@scb = common dso_local global %struct.TYPE_10__* null, align 8
@SEND_Q = common dso_local global i32 0, align 4
@EXEC_Q = common dso_local global i32 0, align 4
@NOTINQ = common dso_local global i32 0, align 4
@CLEAR_NEXUS_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32*)* @asd_clear_nexus_I_T_L to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_clear_nexus_I_T_L(%struct.domain_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.asd_ha_struct*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %8 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %12, align 8
  store %struct.asd_ha_struct* %13, %struct.asd_ha_struct** %6, align 8
  %14 = load i32, i32* @CLEAR_NEXUS_PRE, align 4
  %15 = load i32, i32* @NEXUS_I_T_L, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scb, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @SEND_Q, align 4
  %20 = load i32, i32* @EXEC_Q, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NOTINQ, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scb, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scb, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @memcpy(i32 %31, i32* %32, i32 8)
  %34 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %35 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @cpu_to_le16(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scb, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @CLEAR_NEXUS_POST, align 4
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
