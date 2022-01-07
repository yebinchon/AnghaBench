; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fwver_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fwver_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bfi_ioc_image_hdr_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_fwver_get(%struct.bfa_ioc_s* %0, %struct.bfi_ioc_image_hdr_s* %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store %struct.bfi_ioc_image_hdr_s* %1, %struct.bfi_ioc_image_hdr_s** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %11 = bitcast %struct.bfi_ioc_image_hdr_s* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PSS_SMEM_PGNUM(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @PSS_SMEM_PGOFF(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i32 %20, i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %45, %2
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 1
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @bfa_mem_read(i32 %34, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %26

48:                                               ; preds = %26
  ret void
}

declare dso_local i32 @PSS_SMEM_PGNUM(i32, i32) #1

declare dso_local i32 @PSS_SMEM_PGOFF(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_mem_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
