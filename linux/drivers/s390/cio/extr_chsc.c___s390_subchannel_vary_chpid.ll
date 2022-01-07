; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c___s390_subchannel_vary_chpid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c___s390_subchannel_vary_chpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.subchannel*, %struct.chp_link*, i32)* }
%struct.chp_link = type { %struct.chp_id }
%struct.chp_id = type { i32 }

@CHP_VARY_ON = common dso_local global i32 0, align 4
@CHP_VARY_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*, i32, i32)* @__s390_subchannel_vary_chpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__s390_subchannel_vary_chpid(%struct.subchannel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.chp_id, align 4
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.chp_link, align 4
  %9 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.subchannel* %0, %struct.subchannel** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @memset(%struct.chp_link* %8, i32 0, i32 4)
  %11 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %8, i32 0, i32 0
  %12 = bitcast %struct.chp_id* %11 to i8*
  %13 = bitcast %struct.chp_id* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %15 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %3
  %24 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.subchannel*, %struct.chp_link*, i32)*, i32 (%struct.subchannel*, %struct.chp_link*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.subchannel*, %struct.chp_link*, i32)* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %32 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.subchannel*, %struct.chp_link*, i32)*, i32 (%struct.subchannel*, %struct.chp_link*, i32)** %34, align 8
  %36 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @CHP_VARY_ON, align 4
  br label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @CHP_VARY_OFF, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 %35(%struct.subchannel* %36, %struct.chp_link* %8, i32 %44)
  br label %46

46:                                               ; preds = %43, %23, %3
  %47 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %48 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32 %49, i64 %50)
  ret void
}

declare dso_local i32 @memset(%struct.chp_link*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
