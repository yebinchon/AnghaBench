; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BFI_FLASH_CHUNK_SZ_WORDS = common dso_local global i32 0, align 4
@BFI_FWBOOT_ENV_OS = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_FLASH = common dso_local global i64 0, align 8
@BFI_FLASH_IMAGE_SZ = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i64 0, align 8
@BFI_FWBOOT_DEVMODE_OFF = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_OFF = common dso_local global i64 0, align 8
@BFI_FWBOOT_ENV_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfa_ioc_s*, i64, i64)* @bfa_ioc_download_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bfa_ioc_download_fw(%struct.bfa_ioc_s* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfa_ioc_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load i32, i32* @BFI_FLASH_CHUNK_SZ_WORDS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @BFI_FWBOOT_ENV_OS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @BFI_FWBOOT_TYPE_FLASH, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* @BFI_FLASH_IMAGE_SZ, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 8
  store i64 %34, i64* %15, align 8
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %36)
  %38 = call i64 @bfa_ioc_flash_img_get_chnk(%struct.bfa_ioc_s* %35, i32 %37, i64* %23)
  store i64 %38, i64* %18, align 8
  %39 = load i64, i64* %18, align 8
  %40 = load i64, i64* @BFA_STATUS_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i64, i64* %18, align 8
  store i64 %43, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %199

44:                                               ; preds = %31
  store i64* %23, i64** %8, align 8
  br label %54

45:                                               ; preds = %27, %3
  %46 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %47 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s* %46)
  %48 = call i64 @bfa_cb_image_get_size(i32 %47)
  store i64 %48, i64* %15, align 8
  %49 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %50 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s* %49)
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %51)
  %53 = call i64* @bfa_cb_image_get_chunk(i32 %50, i32 %52)
  store i64* %53, i64** %8, align 8
  br label %54

54:                                               ; preds = %45, %44
  %55 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i32 @bfa_trc(%struct.bfa_ioc_s* %55, i64 %56)
  %58 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @PSS_SMEM_PGNUM(i32 %61, i64 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @PSS_SMEM_PGOFF(i64 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @writel(i64 %66, i32 %70)
  store i64 0, i64* %13, align 8
  br label %72

72:                                               ; preds = %137, %54
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %140

76:                                               ; preds = %72
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @BFA_IOC_FLASH_CHUNK_NO(i64 %77)
  %79 = load i64, i64* %12, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %76
  %82 = load i64, i64* %13, align 8
  %83 = call i64 @BFA_IOC_FLASH_CHUNK_NO(i64 %82)
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @BFI_FWBOOT_ENV_OS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @BFI_FWBOOT_TYPE_FLASH, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %93)
  %95 = call i64 @bfa_ioc_flash_img_get_chnk(%struct.bfa_ioc_s* %92, i32 %94, i64* %23)
  store i64 %95, i64* %18, align 8
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* @BFA_STATUS_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i64, i64* %18, align 8
  store i64 %100, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %199

101:                                              ; preds = %91
  store i64* %23, i64** %8, align 8
  br label %108

102:                                              ; preds = %87, %81
  %103 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %104 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s* %103)
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %105)
  %107 = call i64* @bfa_cb_image_get_chunk(i32 %104, i32 %106)
  store i64* %107, i64** %8, align 8
  br label %108

108:                                              ; preds = %102, %101
  br label %109

109:                                              ; preds = %108, %76
  %110 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %111 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %11, align 8
  %115 = load i64*, i64** %8, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @BFA_IOC_FLASH_OFFSET_IN_CHUNK(i64 %116)
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @bfa_mem_write(i32 %113, i64 %114, i64 %119)
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %121, 8
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i64 @PSS_SMEM_PGOFF(i64 %123)
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %109
  %128 = load i64, i64* %9, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %132 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @writel(i64 %130, i32 %134)
  br label %136

136:                                              ; preds = %127, %109
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %13, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %13, align 8
  br label %72

140:                                              ; preds = %72
  %141 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %142 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @PSS_SMEM_PGNUM(i32 %144, i64 0)
  %146 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %147 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @writel(i64 %145, i32 %149)
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* @BFI_FWBOOT_ENV_OS, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %140
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @BFI_FWBOOT_TYPE_FLASH, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i64, i64* @BFI_FWBOOT_TYPE_NORMAL, align 8
  store i64 %159, i64* %6, align 8
  br label %160

160:                                              ; preds = %158, %154, %140
  %161 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %162 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %165 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %168 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %171 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @BFI_FWBOOT_DEVMODE(i32 %163, i32 %166, i32 %169, i32 %172)
  store i64 %173, i64* %14, align 8
  %174 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %175 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i64, i64* @BFI_FWBOOT_DEVMODE_OFF, align 8
  %179 = load i64, i64* %14, align 8
  %180 = call i64 @swab32(i64 %179)
  %181 = call i32 @bfa_mem_write(i32 %177, i64 %178, i64 %180)
  %182 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %183 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* @BFI_FWBOOT_TYPE_OFF, align 8
  %187 = load i64, i64* %6, align 8
  %188 = call i64 @swab32(i64 %187)
  %189 = call i32 @bfa_mem_write(i32 %185, i64 %186, i64 %188)
  %190 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %191 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* @BFI_FWBOOT_ENV_OFF, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i64 @swab32(i64 %195)
  %197 = call i32 @bfa_mem_write(i32 %193, i64 %194, i64 %196)
  %198 = load i64, i64* @BFA_STATUS_OK, align 8
  store i64 %198, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %199

199:                                              ; preds = %160, %99, %42
  %200 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i64, i64* %4, align 8
  ret i64 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bfa_ioc_flash_img_get_chnk(%struct.bfa_ioc_s*, i32, i64*) #2

declare dso_local i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64) #2

declare dso_local i64 @bfa_cb_image_get_size(i32) #2

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc_s*) #2

declare dso_local i64* @bfa_cb_image_get_chunk(i32, i32) #2

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i64) #2

declare dso_local i64 @PSS_SMEM_PGNUM(i32, i64) #2

declare dso_local i64 @PSS_SMEM_PGOFF(i64) #2

declare dso_local i32 @writel(i64, i32) #2

declare dso_local i64 @BFA_IOC_FLASH_CHUNK_NO(i64) #2

declare dso_local i32 @bfa_mem_write(i32, i64, i64) #2

declare dso_local i64 @BFA_IOC_FLASH_OFFSET_IN_CHUNK(i64) #2

declare dso_local i64 @BFI_FWBOOT_DEVMODE(i32, i32, i32, i32) #2

declare dso_local i64 @swab32(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
