; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_dev_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_dev_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.uwb_dev_addr }
%struct.uwb_dev_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UWB_ADDR_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_dev_addr_set(%struct.uwb_rc* %0, %struct.uwb_dev_addr* %1) #0 {
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_dev_addr*, align 8
  %5 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  store %struct.uwb_dev_addr* %1, %struct.uwb_dev_addr** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %9 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %13 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %4, align 8
  %14 = load i32, i32* @UWB_ADDR_DEV, align 4
  %15 = call i32 @uwb_rc_addr_set(%struct.uwb_rc* %12, %struct.uwb_dev_addr* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %17 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %4, align 8
  %20 = bitcast %struct.uwb_dev_addr* %18 to i8*
  %21 = bitcast %struct.uwb_dev_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %23 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uwb_rc_addr_set(%struct.uwb_rc*, %struct.uwb_dev_addr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
