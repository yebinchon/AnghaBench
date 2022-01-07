; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.wsm_set_pm, %struct.TYPE_2__ }
%struct.wsm_set_pm = type { i32 }
%struct.TYPE_2__ = type { i64 }

@WSM_PSM_FAST_PS_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_set_pm(%struct.cw1200_common* %0, %struct.wsm_set_pm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_set_pm*, align 8
  %6 = alloca %struct.wsm_set_pm, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_set_pm* %1, %struct.wsm_set_pm** %5, align 8
  %7 = load %struct.wsm_set_pm*, %struct.wsm_set_pm** %5, align 8
  %8 = bitcast %struct.wsm_set_pm* %6 to i8*
  %9 = bitcast %struct.wsm_set_pm* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @WSM_PSM_FAST_PS_FLAG, align 4
  %17 = xor i32 %16, -1
  %18 = getelementptr inbounds %struct.wsm_set_pm, %struct.wsm_set_pm* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %23 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %22, i32 0, i32 0
  %24 = call i64 @memcmp(%struct.wsm_set_pm* %6, %struct.wsm_set_pm* %23, i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 0
  %29 = bitcast %struct.wsm_set_pm* %28 to i8*
  %30 = bitcast %struct.wsm_set_pm* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %32 = call i32 @wsm_set_pm(%struct.cw1200_common* %31, %struct.wsm_set_pm* %6)
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(%struct.wsm_set_pm*, %struct.wsm_set_pm*, i32) #2

declare dso_local i32 @wsm_set_pm(%struct.cw1200_common*, %struct.wsm_set_pm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
