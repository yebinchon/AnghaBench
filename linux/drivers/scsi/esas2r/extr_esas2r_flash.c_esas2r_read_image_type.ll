; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_read_image_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_read_image_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_boot_image = type { i64, i32 }
%struct.esas2r_boot_header = type { i64, i64, i32 }
%struct.esas2r_efi_image = type { i32 }

@FLS_LENGTH_BOOT = common dso_local global i32 0, align 4
@FLS_OFFSET_BOOT = common dso_local global i32 0, align 4
@CODE_TYPE_PC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"BIOS\00", align 1
@CODE_TYPE_EFI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"EFI 32-bit\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"EFI itanium\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"EFI 64-bit\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"EFI EBC\00", align 1
@INDICATOR_LAST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"no boot images\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_read_image_type(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca [256 x i32], align 16
  %5 = alloca %struct.esas2r_boot_image*, align 8
  %6 = alloca %struct.esas2r_boot_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.esas2r_efi_image*, align 8
  %11 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 1024, i32* %7, align 4
  %12 = load i32, i32* @FLS_LENGTH_BOOT, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %1, %112
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* @FLS_OFFSET_BOOT, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @esas2r_read_flash_block(%struct.esas2r_adapter* %14, i32* %15, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %114

23:                                               ; preds = %13
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %25 = bitcast i32* %24 to %struct.esas2r_boot_image*
  store %struct.esas2r_boot_image* %25, %struct.esas2r_boot_image** %5, align 8
  %26 = load %struct.esas2r_boot_image*, %struct.esas2r_boot_image** %5, align 8
  %27 = bitcast %struct.esas2r_boot_image* %26 to i32*
  %28 = load %struct.esas2r_boot_image*, %struct.esas2r_boot_image** %5, align 8
  %29 = getelementptr inbounds %struct.esas2r_boot_image, %struct.esas2r_boot_image* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = bitcast i32* %33 to %struct.esas2r_boot_header*
  store %struct.esas2r_boot_header* %34, %struct.esas2r_boot_header** %6, align 8
  %35 = load %struct.esas2r_boot_image*, %struct.esas2r_boot_image** %5, align 8
  %36 = getelementptr inbounds %struct.esas2r_boot_image, %struct.esas2r_boot_image* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @cpu_to_le16(i32 43605)
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %114

41:                                               ; preds = %23
  %42 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %6, align 8
  %43 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CODE_TYPE_PC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcpy(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %119

52:                                               ; preds = %41
  %53 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %6, align 8
  %54 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CODE_TYPE_EFI, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %52
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %60 = bitcast i32* %59 to %struct.esas2r_efi_image*
  store %struct.esas2r_efi_image* %60, %struct.esas2r_efi_image** %10, align 8
  %61 = load %struct.esas2r_efi_image*, %struct.esas2r_efi_image** %10, align 8
  %62 = getelementptr inbounds %struct.esas2r_efi_image, %struct.esas2r_efi_image* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  switch i32 %64, label %85 [
    i32 130, label %65
    i32 129, label %70
    i32 128, label %75
    i32 131, label %80
  ]

65:                                               ; preds = %58
  %66 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strcpy(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %119

70:                                               ; preds = %58
  %71 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strcpy(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %119

75:                                               ; preds = %58
  %76 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcpy(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %119

80:                                               ; preds = %58
  %81 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @strcpy(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %119

85:                                               ; preds = %58
  br label %114

86:                                               ; preds = %52
  %87 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %6, align 8
  %88 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = mul nsw i32 %90, 512
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %6, align 8
  %102 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @INDICATOR_LAST, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %94, %86
  br label %113

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111
  br label %13

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %85, %40, %22
  %115 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @strcpy(i32 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %114, %80, %75, %70, %65, %47
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @esas2r_read_flash_block(%struct.esas2r_adapter*, i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
