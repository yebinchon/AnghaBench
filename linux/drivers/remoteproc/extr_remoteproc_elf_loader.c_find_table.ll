; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_find_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_elf_loader.c_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf32_shdr = type { i32, i64, i32 }
%struct.device = type { i32 }
%struct.elf32_hdr = type { i32, i64, i32 }
%struct.resource_table = type { i32, i32, i64* }

@.str = private unnamed_addr constant [16 x i8] c".resource_table\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"resource table truncated\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"header-less resource table\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unsupported fw ver: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"non zero reserved bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"resource table incomplete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf32_shdr* (%struct.device*, %struct.elf32_hdr*, i64)* @find_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf32_shdr* @find_table(%struct.device* %0, %struct.elf32_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.elf32_shdr*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.elf32_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elf32_shdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.resource_table*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.elf32_hdr* %1, %struct.elf32_hdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.resource_table* null, %struct.resource_table** %11, align 8
  %15 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %16 = bitcast %struct.elf32_hdr* %15 to i8*
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = bitcast i8* %22 to %struct.elf32_shdr*
  store %struct.elf32_shdr* %23, %struct.elf32_shdr** %8, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.elf32_shdr*, %struct.elf32_shdr** %8, align 8
  %26 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %25, i64 %28
  %30 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %24, i64 %32
  store i8* %33, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %124, %3
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %129

40:                                               ; preds = %34
  %41 = load %struct.elf32_shdr*, %struct.elf32_shdr** %8, align 8
  %42 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load %struct.elf32_shdr*, %struct.elf32_shdr** %8, align 8
  %45 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %14, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.elf32_shdr*, %struct.elf32_shdr** %8, align 8
  %50 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %124

57:                                               ; preds = %40
  %58 = load i8*, i8** %12, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = bitcast i8* %60 to %struct.resource_table*
  store %struct.resource_table* %61, %struct.resource_table** %11, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %62, %63
  %65 = load i64, i64* %7, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %13, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %57
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.elf32_shdr* null, %struct.elf32_shdr** %4, align 8
  br label %130

76:                                               ; preds = %67
  %77 = load i64, i64* %13, align 8
  %78 = icmp ugt i64 16, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store %struct.elf32_shdr* null, %struct.elf32_shdr** %4, align 8
  br label %130

82:                                               ; preds = %76
  %83 = load %struct.resource_table*, %struct.resource_table** %11, align 8
  %84 = getelementptr inbounds %struct.resource_table, %struct.resource_table* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load %struct.resource_table*, %struct.resource_table** %11, align 8
  %90 = getelementptr inbounds %struct.resource_table, %struct.resource_table* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  store %struct.elf32_shdr* null, %struct.elf32_shdr** %4, align 8
  br label %130

93:                                               ; preds = %82
  %94 = load %struct.resource_table*, %struct.resource_table** %11, align 8
  %95 = getelementptr inbounds %struct.resource_table, %struct.resource_table* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.resource_table*, %struct.resource_table** %11, align 8
  %102 = getelementptr inbounds %struct.resource_table, %struct.resource_table* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100, %93
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store %struct.elf32_shdr* null, %struct.elf32_shdr** %4, align 8
  br label %130

110:                                              ; preds = %100
  %111 = load %struct.resource_table*, %struct.resource_table** %11, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load %struct.resource_table*, %struct.resource_table** %11, align 8
  %114 = getelementptr inbounds %struct.resource_table, %struct.resource_table* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @struct_size(%struct.resource_table* %111, i64 %112, i32 %115)
  %117 = load i64, i64* %13, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store %struct.elf32_shdr* null, %struct.elf32_shdr** %4, align 8
  br label %130

122:                                              ; preds = %110
  %123 = load %struct.elf32_shdr*, %struct.elf32_shdr** %8, align 8
  store %struct.elf32_shdr* %123, %struct.elf32_shdr** %4, align 8
  br label %130

124:                                              ; preds = %56
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  %127 = load %struct.elf32_shdr*, %struct.elf32_shdr** %8, align 8
  %128 = getelementptr inbounds %struct.elf32_shdr, %struct.elf32_shdr* %127, i32 1
  store %struct.elf32_shdr* %128, %struct.elf32_shdr** %8, align 8
  br label %34

129:                                              ; preds = %34
  store %struct.elf32_shdr* null, %struct.elf32_shdr** %4, align 8
  br label %130

130:                                              ; preds = %129, %122, %119, %107, %87, %79, %73
  %131 = load %struct.elf32_shdr*, %struct.elf32_shdr** %4, align 8
  ret %struct.elf32_shdr* %131
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @struct_size(%struct.resource_table*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
