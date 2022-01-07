; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_time.c_xen_get_runstate_snapshot_cpu_delta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_time.c_xen_get_runstate_snapshot_cpu_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_runstate_info = type { i32 }

@xen_runstate = common dso_local global i32 0, align 4
@XEN_RUNSTATE_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_runstate_info*, i32)* @xen_get_runstate_snapshot_cpu_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_get_runstate_snapshot_cpu_delta(%struct.vcpu_runstate_info* %0, i32 %1) #0 {
  %3 = alloca %struct.vcpu_runstate_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_runstate_info*, align 8
  %7 = alloca %struct.vcpu_runstate_info, align 4
  store %struct.vcpu_runstate_info* %0, %struct.vcpu_runstate_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @preemptible()
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.vcpu_runstate_info* @per_cpu_ptr(i32* @xen_runstate, i32 %10)
  store %struct.vcpu_runstate_info* %11, %struct.vcpu_runstate_info** %6, align 8
  br label %12

12:                                               ; preds = %37, %2
  %13 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %6, align 8
  %14 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %13, i32 0, i32 0
  %15 = call i32 @get64(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = call i32 (...) @rmb()
  %17 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %3, align 8
  %18 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %6, align 8
  %19 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @READ_ONCE(i32 %20)
  %22 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.vcpu_runstate_info* %17 to i8*
  %24 = bitcast %struct.vcpu_runstate_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = call i32 (...) @rmb()
  br label %26

26:                                               ; preds = %12
  %27 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %6, align 8
  %28 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %27, i32 0, i32 0
  %29 = call i32 @get64(i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @XEN_RUNSTATE_UPDATE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i1 [ true, %26 ], [ %36, %32 ]
  br i1 %38, label %12, label %39

39:                                               ; preds = %37
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local %struct.vcpu_runstate_info* @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @get64(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
