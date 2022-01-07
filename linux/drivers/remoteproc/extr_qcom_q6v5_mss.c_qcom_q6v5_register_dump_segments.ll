; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_qcom_q6v5_register_dump_segments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_qcom_q6v5_register_dump_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.q6v5* }
%struct.q6v5 = type { i32, i32, i32 }
%struct.firmware = type { i64 }
%struct.elf32_phdr = type { i32, i32 }
%struct.elf32_hdr = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"unable to load %s\0A\00", align 1
@qcom_q6v5_dump_segment = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.firmware*)* @qcom_q6v5_register_dump_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_q6v5_register_dump_segments(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.elf32_phdr*, align 8
  %8 = alloca %struct.elf32_phdr*, align 8
  %9 = alloca %struct.elf32_hdr*, align 8
  %10 = alloca %struct.q6v5*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %13 = load %struct.rproc*, %struct.rproc** %4, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 0
  %15 = load %struct.q6v5*, %struct.q6v5** %14, align 8
  store %struct.q6v5* %15, %struct.q6v5** %10, align 8
  %16 = load %struct.q6v5*, %struct.q6v5** %10, align 8
  %17 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.q6v5*, %struct.q6v5** %10, align 8
  %20 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @request_firmware(%struct.firmware** %6, i32 %18, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.q6v5*, %struct.q6v5** %10, align 8
  %27 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.q6v5*, %struct.q6v5** %10, align 8
  %30 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %2
  %35 = load %struct.firmware*, %struct.firmware** %6, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %38, %struct.elf32_hdr** %9, align 8
  %39 = load %struct.elf32_hdr*, %struct.elf32_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %39, i64 1
  %41 = bitcast %struct.elf32_hdr* %40 to %struct.elf32_phdr*
  store %struct.elf32_phdr* %41, %struct.elf32_phdr** %7, align 8
  %42 = load %struct.q6v5*, %struct.q6v5** %10, align 8
  %43 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %80, %34
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.elf32_hdr*, %struct.elf32_hdr** %9, align 8
  %47 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %51, i64 %52
  store %struct.elf32_phdr* %53, %struct.elf32_phdr** %8, align 8
  %54 = load %struct.elf32_phdr*, %struct.elf32_phdr** %8, align 8
  %55 = call i32 @q6v5_phdr_valid(%struct.elf32_phdr* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %80

58:                                               ; preds = %50
  %59 = load %struct.rproc*, %struct.rproc** %4, align 8
  %60 = load %struct.elf32_phdr*, %struct.elf32_phdr** %8, align 8
  %61 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.elf32_phdr*, %struct.elf32_phdr** %8, align 8
  %64 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @qcom_q6v5_dump_segment, align 4
  %67 = load i64, i64* %11, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @rproc_coredump_add_custom_segment(%struct.rproc* %59, i32 %62, i32 %65, i32 %66, i8* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %83

73:                                               ; preds = %58
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @BIT(i64 %74)
  %76 = load %struct.q6v5*, %struct.q6v5** %10, align 8
  %77 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %57
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %44

83:                                               ; preds = %72, %44
  %84 = load %struct.firmware*, %struct.firmware** %6, align 8
  %85 = call i32 @release_firmware(%struct.firmware* %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %25
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @q6v5_phdr_valid(%struct.elf32_phdr*) #1

declare dso_local i32 @rproc_coredump_add_custom_segment(%struct.rproc*, i32, i32, i32, i8*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
