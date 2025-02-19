; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_flash_memclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_flash_memclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_flash_s = type { i32*, i32 }

@BFA_FLASH_DMA_BUF_SZ = common dso_local global i32 0, align 4
@BFA_DMA_ALIGN_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_flash_memclaim(%struct.bfa_flash_s* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.bfa_flash_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bfa_flash_s* %0, %struct.bfa_flash_s** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %36

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.bfa_flash_s*, %struct.bfa_flash_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_flash_s, %struct.bfa_flash_s* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @BFA_FLASH_DMA_BUF_SZ, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load i32, i32* @BFA_FLASH_DMA_BUF_SZ, align 4
  %25 = load i32, i32* @BFA_DMA_ALIGN_SZ, align 4
  %26 = call i64 @BFA_ROUNDUP(i32 %24, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 %26
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* @BFA_FLASH_DMA_BUF_SZ, align 4
  %30 = load i32, i32* @BFA_DMA_ALIGN_SZ, align 4
  %31 = call i64 @BFA_ROUNDUP(i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @BFA_ROUNDUP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
