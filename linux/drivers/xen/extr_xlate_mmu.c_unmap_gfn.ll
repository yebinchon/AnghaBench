; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xlate_mmu.c_unmap_gfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xlate_mmu.c_unmap_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_remove_from_physmap = type { i64, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@XENMEM_remove_from_physmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @unmap_gfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_gfn(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xen_remove_from_physmap, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @DOMID_SELF, align 4
  %7 = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %5, i32 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %5, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = load i32, i32* @XENMEM_remove_from_physmap, align 4
  %11 = call i32 @HYPERVISOR_memory_op(i32 %10, %struct.xen_remove_from_physmap* %5)
  ret void
}

declare dso_local i32 @HYPERVISOR_memory_op(i32, %struct.xen_remove_from_physmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
