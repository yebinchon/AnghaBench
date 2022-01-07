; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c___do_kvm_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c___do_kvm_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel_id = type { i32 }

@KVM_S390_VIRTIO_CCW_NOTIFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64)* @__do_kvm_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__do_kvm_notify(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.subchannel_id, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.subchannel_id, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* @KVM_S390_VIRTIO_CCW_NOTIFY, align 8
  store i64 %13, i64* %7, align 8
  %14 = bitcast %struct.subchannel_id* %8 to i8*
  %15 = bitcast %struct.subchannel_id* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = bitcast %struct.subchannel_id* %8 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 asm sideeffect "diag 2,4,0x500\0A", "={cx},{dx},{cx},{bx},{si},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %18, i32 %20, i64 %21, i64 %22) #2, !srcloc !2
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  ret i64 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 634}
