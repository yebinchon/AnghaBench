; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_mdt_loader.c_qcom_mdt_read_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_mdt_loader.c_qcom_mdt_read_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i64, i64 }
%struct.elf32_phdr = type { i64, i32, i64, i64 }
%struct.elf32_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@QCOM_MDT_TYPE_MASK = common dso_local global i32 0, align 4
@QCOM_MDT_TYPE_HASH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qcom_mdt_read_metadata(%struct.firmware* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.elf32_phdr*, align 8
  %7 = alloca %struct.elf32_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.firmware* %0, %struct.firmware** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.firmware*, %struct.firmware** %4, align 8
  %13 = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %15, %struct.elf32_hdr** %7, align 8
  %16 = load %struct.elf32_hdr*, %struct.elf32_hdr** %7, align 8
  %17 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %16, i64 1
  %18 = bitcast %struct.elf32_hdr* %17 to %struct.elf32_phdr*
  store %struct.elf32_phdr* %18, %struct.elf32_phdr** %6, align 8
  %19 = load %struct.elf32_hdr*, %struct.elf32_hdr** %7, align 8
  %20 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i8* @ERR_PTR(i32 %25)
  store i8* %26, i8** %3, align 8
  br label %118

27:                                               ; preds = %2
  %28 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %29 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %28, i64 0
  %30 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PT_LOAD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %36 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %35, i64 1
  %37 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PT_LOAD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34, %27
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i8* @ERR_PTR(i32 %43)
  store i8* %44, i8** %3, align 8
  br label %118

45:                                               ; preds = %34
  %46 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %47 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %46, i64 1
  %48 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @QCOM_MDT_TYPE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @QCOM_MDT_TYPE_HASH, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i8* @ERR_PTR(i32 %56)
  store i8* %57, i8** %3, align 8
  br label %118

58:                                               ; preds = %45
  %59 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %60 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %59, i64 0
  %61 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  %63 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %64 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %63, i64 1
  %65 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %67, %68
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kmalloc(i64 %69, i32 %70)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %58
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i8* @ERR_PTR(i32 %76)
  store i8* %77, i8** %3, align 8
  br label %118

78:                                               ; preds = %58
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %79, %80
  %82 = load %struct.firmware*, %struct.firmware** %4, align 8
  %83 = getelementptr inbounds %struct.firmware, %struct.firmware* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %88 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %87, i64 0
  %89 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %8, align 8
  br label %96

91:                                               ; preds = %78
  %92 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %93 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %92, i64 1
  %94 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %8, align 8
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i8*, i8** %11, align 8
  %98 = load %struct.firmware*, %struct.firmware** %4, align 8
  %99 = getelementptr inbounds %struct.firmware, %struct.firmware* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @memcpy(i8* %97, i64 %100, i64 %101)
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr i8, i8* %103, i64 %104
  %106 = load %struct.firmware*, %struct.firmware** %4, align 8
  %107 = getelementptr inbounds %struct.firmware, %struct.firmware* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %108, %109
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @memcpy(i8* %105, i64 %110, i64 %111)
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %113, %114
  %116 = load i64*, i64** %5, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i8*, i8** %11, align 8
  store i8* %117, i8** %3, align 8
  br label %118

118:                                              ; preds = %96, %74, %54, %41, %23
  %119 = load i8*, i8** %3, align 8
  ret i8* %119
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
