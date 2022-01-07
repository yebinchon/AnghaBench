; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_rproc_elf_get_boot_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_rproc_elf_get_boot_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32 }
%struct.firmware = type { i64 }
%struct.elf32_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_elf_get_boot_addr(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.elf32_hdr*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %6 = load %struct.firmware*, %struct.firmware** %4, align 8
  %7 = getelementptr inbounds %struct.firmware, %struct.firmware* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %9, %struct.elf32_hdr** %5, align 8
  %10 = load %struct.elf32_hdr*, %struct.elf32_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
