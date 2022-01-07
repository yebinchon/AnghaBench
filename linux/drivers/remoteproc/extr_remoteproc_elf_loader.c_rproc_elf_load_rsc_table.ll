; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_rproc_elf_load_rsc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_rproc_elf_load_rsc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64, i64, i64, %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.elf32_hdr = type { i32 }
%struct.elf32_shdr = type { i32, i64 }
%struct.resource_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_elf_load_rsc_table(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.elf32_hdr*, align 8
  %7 = alloca %struct.elf32_shdr*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.resource_table*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %12 = load %struct.rproc*, %struct.rproc** %4, align 8
  %13 = getelementptr inbounds %struct.rproc, %struct.rproc* %12, i32 0, i32 3
  store %struct.device* %13, %struct.device** %8, align 8
  store %struct.resource_table* null, %struct.resource_table** %9, align 8
  %14 = load %struct.firmware*, %struct.firmware** %5, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = bitcast i32* %17 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %18, %struct.elf32_hdr** %6, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %21 = load %struct.firmware*, %struct.firmware** %5, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.elf32_shdr* @find_table(%struct.device* %19, %struct.elf32_hdr* %20, i32 %23)
  store %struct.elf32_shdr* %24, %struct.elf32_shdr** %7, align 8
  %25 = load %struct.elf32_shdr*, %struct.elf32_shdr** %7, align 8
  %26 = icmp ne %struct.elf32_shdr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %2
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.elf32_shdr*, %struct.elf32_shdr** %7, align 8
  %33 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = bitcast i32* %36 to %struct.resource_table*
  store %struct.resource_table* %37, %struct.resource_table** %9, align 8
  %38 = load %struct.elf32_shdr*, %struct.elf32_shdr** %7, align 8
  %39 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.resource_table*, %struct.resource_table** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i64 @kmemdup(%struct.resource_table* %41, i64 %42, i32 %43)
  %45 = load %struct.rproc*, %struct.rproc** %4, align 8
  %46 = getelementptr inbounds %struct.rproc, %struct.rproc* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.rproc*, %struct.rproc** %4, align 8
  %48 = getelementptr inbounds %struct.rproc, %struct.rproc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %30
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %63

54:                                               ; preds = %30
  %55 = load %struct.rproc*, %struct.rproc** %4, align 8
  %56 = getelementptr inbounds %struct.rproc, %struct.rproc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rproc*, %struct.rproc** %4, align 8
  %59 = getelementptr inbounds %struct.rproc, %struct.rproc* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.rproc*, %struct.rproc** %4, align 8
  %62 = getelementptr inbounds %struct.rproc, %struct.rproc* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %51, %27
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.elf32_shdr* @find_table(%struct.device*, %struct.elf32_hdr*, i32) #1

declare dso_local i64 @kmemdup(%struct.resource_table*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
