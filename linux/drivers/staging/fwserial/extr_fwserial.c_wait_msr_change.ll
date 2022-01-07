; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_wait_msr_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_wait_msr_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { %struct.TYPE_2__, %struct.async_icount }
%struct.TYPE_2__ = type { i32 }
%struct.async_icount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_port*, i64)* @wait_msr_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_msr_change(%struct.fwtty_port* %0, i64 %1) #0 {
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.async_icount, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %7 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %6, i32 0, i32 1
  %8 = bitcast %struct.async_icount* %5 to i8*
  %9 = bitcast %struct.async_icount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %11 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @check_msr_delta(%struct.fwtty_port* %14, i64 %15, %struct.async_icount* %5)
  %17 = call i32 @wait_event_interruptible(i32 %13, i32 %16)
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #2

declare dso_local i32 @check_msr_delta(%struct.fwtty_port*, i64, %struct.async_icount*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
