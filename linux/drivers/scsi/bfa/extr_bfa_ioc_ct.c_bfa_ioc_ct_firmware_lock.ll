; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_firmware_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_firmware_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.bfi_ioc_image_hdr_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc_s*)* @bfa_ioc_ct_firmware_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_ct_firmware_lock(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfi_ioc_image_hdr_s, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  %7 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfa_ioc_sem_get(i32 %10)
  %12 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @writel(i32 1, i32 %23)
  %25 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @readl(i32 %28)
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel(i32 1, i32 %33)
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writel(i32 0, i32 %38)
  %40 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @bfa_trc(%struct.bfa_ioc_s* %40, i32 %41)
  %43 = load i32, i32* @BFA_TRUE, align 4
  store i32 %43, i32* %2, align 4
  br label %101

44:                                               ; preds = %1
  %45 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @readl(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @bfa_trc(%struct.bfa_ioc_s* %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %59 = call i32 @bfa_ioc_fwver_get(%struct.bfa_ioc_s* %58, %struct.bfi_ioc_image_hdr_s* %6)
  %60 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %61 = call i32 @bfa_ioc_fwver_cmp(%struct.bfa_ioc_s* %60, %struct.bfi_ioc_image_hdr_s* %6)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %44
  %64 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @readl(i32 %67)
  %69 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @writel(i32 1, i32 %72)
  %74 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @bfa_trc(%struct.bfa_ioc_s* %74, i32 %75)
  %77 = load i32, i32* @BFA_FALSE, align 4
  store i32 %77, i32* %2, align 4
  br label %101

78:                                               ; preds = %44
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @writel(i32 %81, i32 %85)
  %87 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %88 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @readl(i32 %90)
  %92 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %93 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @writel(i32 1, i32 %95)
  %97 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @bfa_trc(%struct.bfa_ioc_s* %97, i32 %98)
  %100 = load i32, i32* @BFA_TRUE, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %78, %63, %19
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @bfa_ioc_sem_get(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_ioc_fwver_get(%struct.bfa_ioc_s*, %struct.bfi_ioc_image_hdr_s*) #1

declare dso_local i32 @bfa_ioc_fwver_cmp(%struct.bfa_ioc_s*, %struct.bfi_ioc_image_hdr_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
