; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_rproc_elf_find_loaded_rsc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_rproc_elf_find_loaded_rsc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_table = type { i32 }
%struct.rproc = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.elf32_hdr = type { i32 }
%struct.elf32_shdr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource_table* @rproc_elf_find_loaded_rsc_table(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.resource_table*, align 8
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.elf32_hdr*, align 8
  %7 = alloca %struct.elf32_shdr*, align 8
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %8 = load %struct.firmware*, %struct.firmware** %5, align 8
  %9 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %11, %struct.elf32_hdr** %6, align 8
  %12 = load %struct.rproc*, %struct.rproc** %4, align 8
  %13 = getelementptr inbounds %struct.rproc, %struct.rproc* %12, i32 0, i32 0
  %14 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %15 = load %struct.firmware*, %struct.firmware** %5, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.elf32_shdr* @find_table(i32* %13, %struct.elf32_hdr* %14, i32 %17)
  store %struct.elf32_shdr* %18, %struct.elf32_shdr** %7, align 8
  %19 = load %struct.elf32_shdr*, %struct.elf32_shdr** %7, align 8
  %20 = icmp ne %struct.elf32_shdr* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.resource_table* null, %struct.resource_table** %3, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.rproc*, %struct.rproc** %4, align 8
  %24 = load %struct.elf32_shdr*, %struct.elf32_shdr** %7, align 8
  %25 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.elf32_shdr*, %struct.elf32_shdr** %7, align 8
  %28 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.resource_table* @rproc_da_to_va(%struct.rproc* %23, i32 %26, i32 %29)
  store %struct.resource_table* %30, %struct.resource_table** %3, align 8
  br label %31

31:                                               ; preds = %22, %21
  %32 = load %struct.resource_table*, %struct.resource_table** %3, align 8
  ret %struct.resource_table* %32
}

declare dso_local %struct.elf32_shdr* @find_table(i32*, %struct.elf32_hdr*, i32) #1

declare dso_local %struct.resource_table* @rproc_da_to_va(%struct.rproc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
