; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_rproc_elf_load_segments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_rproc_elf_load_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i64, i32* }
%struct.elf32_hdr = type { i32, i32 }
%struct.elf32_phdr = type { i64, i64, i64, i64, i64 }

@PT_LOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bad phdr filesz 0x%x memsz 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"truncated fw: need 0x%x avail 0x%zx\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"bad phdr da 0x%x mem 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_elf_load_segments(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.elf32_hdr*, align 8
  %7 = alloca %struct.elf32_phdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %16 = load %struct.rproc*, %struct.rproc** %3, align 8
  %17 = getelementptr inbounds %struct.rproc, %struct.rproc* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.firmware*, %struct.firmware** %4, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = bitcast i32* %21 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %22, %struct.elf32_hdr** %6, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = bitcast i32* %28 to %struct.elf32_phdr*
  store %struct.elf32_phdr* %29, %struct.elf32_phdr** %7, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %134, %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %139

36:                                               ; preds = %30
  %37 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %38 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %41 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %44 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %13, align 8
  %46 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %47 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %14, align 8
  %49 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %50 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PT_LOAD, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %134

55:                                               ; preds = %36
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %58 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60, i64 %61, i64 %62)
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %139

74:                                               ; preds = %55
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %13, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.firmware*, %struct.firmware** %4, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.firmware*, %struct.firmware** %4, align 8
  %88 = getelementptr inbounds %struct.firmware, %struct.firmware* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %86, i64 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %139

93:                                               ; preds = %74
  %94 = load %struct.rproc*, %struct.rproc** %3, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i8* @rproc_da_to_va(%struct.rproc* %94, i64 %95, i64 %96)
  store i8* %97, i8** %15, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %102, i64 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %9, align 4
  br label %139

107:                                              ; preds = %93
  %108 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %109 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i8*, i8** %15, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %116 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @memcpy(i8* %113, i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %112, %107
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %13, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i8*, i8** %15, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr i8, i8* %126, i64 %127
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* %13, align 8
  %131 = sub nsw i64 %129, %130
  %132 = call i32 @memset(i8* %128, i32 0, i64 %131)
  br label %133

133:                                              ; preds = %125, %121
  br label %134

134:                                              ; preds = %133, %54
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  %137 = load %struct.elf32_phdr*, %struct.elf32_phdr** %7, align 8
  %138 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %137, i32 1
  store %struct.elf32_phdr* %138, %struct.elf32_phdr** %7, align 8
  br label %30

139:                                              ; preds = %100, %82, %67, %30
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i8* @rproc_da_to_va(%struct.rproc*, i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
