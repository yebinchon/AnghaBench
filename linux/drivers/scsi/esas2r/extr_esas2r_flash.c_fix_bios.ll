; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_fix_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_fix_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.esas2r_flash_img = type { %struct.esas2r_component_header* }
%struct.esas2r_component_header = type { i32, i32 }
%struct.esas2r_pc_image = type { i64, i64, i64 }
%struct.esas2r_boot_header = type { i32 }

@CH_IT_BIOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_flash_img*)* @fix_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_bios(%struct.esas2r_adapter* %0, %struct.esas2r_flash_img* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_flash_img*, align 8
  %5 = alloca %struct.esas2r_component_header*, align 8
  %6 = alloca %struct.esas2r_pc_image*, align 8
  %7 = alloca %struct.esas2r_boot_header*, align 8
  %8 = alloca i64*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_flash_img* %1, %struct.esas2r_flash_img** %4, align 8
  %9 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %10 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %9, i32 0, i32 0
  %11 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %10, align 8
  %12 = load i64, i64* @CH_IT_BIOS, align 8
  %13 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %11, i64 %12
  store %struct.esas2r_component_header* %13, %struct.esas2r_component_header** %5, align 8
  %14 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %15 = bitcast %struct.esas2r_flash_img* %14 to i64*
  %16 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %5, align 8
  %17 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %15, i64 %19
  %21 = bitcast i64* %20 to %struct.esas2r_pc_image*
  store %struct.esas2r_pc_image* %21, %struct.esas2r_pc_image** %6, align 8
  %22 = load %struct.esas2r_pc_image*, %struct.esas2r_pc_image** %6, align 8
  %23 = bitcast %struct.esas2r_pc_image* %22 to i64*
  %24 = load %struct.esas2r_pc_image*, %struct.esas2r_pc_image** %6, align 8
  %25 = getelementptr inbounds %struct.esas2r_pc_image, %struct.esas2r_pc_image* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @le16_to_cpu(i64 %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  %30 = bitcast i64* %29 to %struct.esas2r_boot_header*
  store %struct.esas2r_boot_header* %30, %struct.esas2r_boot_header** %7, align 8
  %31 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpu_to_le16(i32 %35)
  %37 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %7, align 8
  %38 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.esas2r_pc_image*, %struct.esas2r_pc_image** %6, align 8
  %40 = getelementptr inbounds %struct.esas2r_pc_image, %struct.esas2r_pc_image* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %2
  %44 = load %struct.esas2r_pc_image*, %struct.esas2r_pc_image** %6, align 8
  %45 = bitcast %struct.esas2r_pc_image* %44 to i64*
  %46 = load %struct.esas2r_pc_image*, %struct.esas2r_pc_image** %6, align 8
  %47 = getelementptr inbounds %struct.esas2r_pc_image, %struct.esas2r_pc_image* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @le16_to_cpu(i64 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %45, i64 %50
  store i64* %51, i64** %8, align 8
  %52 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MAKEDWORD(i32 %56, i32 %61)
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 10
  %66 = bitcast i64* %65 to i32*
  store i32 %63, i32* %66, align 4
  %67 = load i64*, i64** %8, align 8
  %68 = call i64 @esas2r_calc_byte_cksum(i64* %67, i32 32, i32 0)
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 9
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %43, %2
  %74 = load %struct.esas2r_pc_image*, %struct.esas2r_pc_image** %6, align 8
  %75 = getelementptr inbounds %struct.esas2r_pc_image, %struct.esas2r_pc_image* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.esas2r_pc_image*, %struct.esas2r_pc_image** %6, align 8
  %78 = bitcast %struct.esas2r_pc_image* %77 to i64*
  %79 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %5, align 8
  %80 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @esas2r_calc_byte_cksum(i64* %78, i32 %81, i32 0)
  %83 = sub nsw i64 %76, %82
  %84 = load %struct.esas2r_pc_image*, %struct.esas2r_pc_image** %6, align 8
  %85 = getelementptr inbounds %struct.esas2r_pc_image, %struct.esas2r_pc_image* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  ret void
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @MAKEDWORD(i32, i32) #1

declare dso_local i64 @esas2r_calc_byte_cksum(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
