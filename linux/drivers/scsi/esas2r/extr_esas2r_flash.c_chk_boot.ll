; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_chk_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_chk_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_boot_image = type { i32, i64 }
%struct.esas2r_boot_header = type { i8*, i32, i32*, i64 }

@CODE_TYPE_PC = common dso_local global i64 0, align 8
@CODE_TYPE_OPEN = common dso_local global i64 0, align 8
@CODE_TYPE_EFI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @chk_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chk_boot(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.esas2r_boot_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.esas2r_boot_header*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.esas2r_boot_image*
  store %struct.esas2r_boot_image* %10, %struct.esas2r_boot_image** %6, align 8
  %11 = load %struct.esas2r_boot_image*, %struct.esas2r_boot_image** %6, align 8
  %12 = getelementptr inbounds %struct.esas2r_boot_image, %struct.esas2r_boot_image* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.esas2r_boot_image*, %struct.esas2r_boot_image** %6, align 8
  %16 = getelementptr inbounds %struct.esas2r_boot_image, %struct.esas2r_boot_image* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @le16_to_cpu(i32 43605)
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp sgt i64 %23, 65504
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 16
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 32
  %37 = load i64, i64* %5, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %29, %25, %21, %2
  store i32 255, i32* %3, align 4
  br label %129

40:                                               ; preds = %33
  %41 = load %struct.esas2r_boot_image*, %struct.esas2r_boot_image** %6, align 8
  %42 = bitcast %struct.esas2r_boot_image* %41 to i8*
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = bitcast i8* %45 to %struct.esas2r_boot_header*
  store %struct.esas2r_boot_header* %46, %struct.esas2r_boot_header** %8, align 8
  %47 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %48 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 80
  br i1 %53, label %123, label %54

54:                                               ; preds = %40
  %55 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %56 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 67
  br i1 %61, label %123, label %62

62:                                               ; preds = %54
  %63 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %64 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 73
  br i1 %69, label %123, label %70

70:                                               ; preds = %62
  %71 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %72 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 82
  br i1 %77, label %123, label %78

78:                                               ; preds = %70
  %79 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %80 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = icmp slt i32 %82, 32
  br i1 %83, label %123, label %84

84:                                               ; preds = %78
  %85 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %86 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %123, label %91

91:                                               ; preds = %84
  %92 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %93 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 4
  br i1 %97, label %123, label %98

98:                                               ; preds = %91
  %99 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %100 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %98
  %106 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %107 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CODE_TYPE_PC, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %113 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CODE_TYPE_OPEN, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %119 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CODE_TYPE_EFI, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117, %98, %91, %84, %78, %70, %62, %54, %40
  store i32 255, i32* %3, align 4
  br label %129

124:                                              ; preds = %117, %111, %105
  %125 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %8, align 8
  %126 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %124, %123, %39
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
