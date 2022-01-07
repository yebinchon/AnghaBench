; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_fix_efi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_fix_efi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.esas2r_flash_img = type { %struct.esas2r_component_header* }
%struct.esas2r_component_header = type { i32, i32 }
%struct.esas2r_efi_image = type { i32 }
%struct.esas2r_boot_header = type { i32, i32 }

@CH_IT_EFI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_flash_img*)* @fix_efi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_efi(%struct.esas2r_adapter* %0, %struct.esas2r_flash_img* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_flash_img*, align 8
  %5 = alloca %struct.esas2r_component_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.esas2r_efi_image*, align 8
  %9 = alloca %struct.esas2r_boot_header*, align 8
  %10 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_flash_img* %1, %struct.esas2r_flash_img** %4, align 8
  %11 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %12 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %11, i32 0, i32 0
  %13 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %14 = load i64, i64* @CH_IT_EFI, align 8
  %15 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %13, i64 %14
  store %struct.esas2r_component_header* %15, %struct.esas2r_component_header** %5, align 8
  %16 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %5, align 8
  %17 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %5, align 8
  %20 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %58, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %22
  %26 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %27 = bitcast %struct.esas2r_flash_img* %26 to i32*
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = bitcast i32* %30 to %struct.esas2r_efi_image*
  store %struct.esas2r_efi_image* %31, %struct.esas2r_efi_image** %8, align 8
  %32 = load %struct.esas2r_efi_image*, %struct.esas2r_efi_image** %8, align 8
  %33 = bitcast %struct.esas2r_efi_image* %32 to i32*
  %34 = load %struct.esas2r_efi_image*, %struct.esas2r_efi_image** %8, align 8
  %35 = getelementptr inbounds %struct.esas2r_efi_image, %struct.esas2r_efi_image* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = bitcast i32* %39 to %struct.esas2r_boot_header*
  store %struct.esas2r_boot_header* %40, %struct.esas2r_boot_header** %9, align 8
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %9, align 8
  %48 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.esas2r_boot_header*, %struct.esas2r_boot_header** %9, align 8
  %50 = getelementptr inbounds %struct.esas2r_boot_header, %struct.esas2r_boot_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = mul nsw i32 %52, 512
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %25
  br label %65

58:                                               ; preds = %25
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %22

65:                                               ; preds = %57, %22
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
