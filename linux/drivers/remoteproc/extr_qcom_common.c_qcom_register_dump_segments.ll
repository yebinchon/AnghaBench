; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_qcom_register_dump_segments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_qcom_register_dump_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32 }
%struct.firmware = type { i64 }
%struct.elf32_phdr = type { i64, i32, i32, i32 }
%struct.elf32_hdr = type { i32 }

@PT_LOAD = common dso_local global i64 0, align 8
@QCOM_MDT_TYPE_MASK = common dso_local global i32 0, align 4
@QCOM_MDT_TYPE_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_register_dump_segments(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.elf32_phdr*, align 8
  %7 = alloca %struct.elf32_phdr*, align 8
  %8 = alloca %struct.elf32_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %11 = load %struct.firmware*, %struct.firmware** %5, align 8
  %12 = getelementptr inbounds %struct.firmware, %struct.firmware* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %14, %struct.elf32_hdr** %8, align 8
  %15 = load %struct.elf32_hdr*, %struct.elf32_hdr** %8, align 8
  %16 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %15, i64 1
  %17 = bitcast %struct.elf32_hdr* %16 to %struct.elf32_phdr*
  store %struct.elf32_phdr* %17, %struct.elf32_phdr** %6, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %64, %2
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.elf32_hdr*, %struct.elf32_hdr** %8, align 8
  %21 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %18
  %25 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %25, i64 %27
  store %struct.elf32_phdr* %28, %struct.elf32_phdr** %7, align 8
  %29 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %30 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PT_LOAD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %64

35:                                               ; preds = %24
  %36 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %37 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @QCOM_MDT_TYPE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @QCOM_MDT_TYPE_HASH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %64

44:                                               ; preds = %35
  %45 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %46 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %64

50:                                               ; preds = %44
  %51 = load %struct.rproc*, %struct.rproc** %4, align 8
  %52 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %53 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %56 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rproc_coredump_add_segment(%struct.rproc* %51, i32 %54, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %49, %43, %34
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %18

67:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @rproc_coredump_add_segment(%struct.rproc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
