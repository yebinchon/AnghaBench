; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_fwcheck_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_fwcheck_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf_s = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.bfi_ioc_image_hdr_s = type { i32 }

@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf_s*)* @bfa_iocpf_sm_fwcheck_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_fwcheck_entry(%struct.bfa_iocpf_s* %0) #0 {
  %2 = alloca %struct.bfa_iocpf_s*, align 8
  %3 = alloca %struct.bfi_ioc_image_hdr_s, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bfa_iocpf_s* %0, %struct.bfa_iocpf_s** %2, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %21, %1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = call i32 @udelay(i32 20)
  %23 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @readl(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i32 @bfa_ioc_get_cur_ioc_fwstate(%struct.TYPE_10__* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %40 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @writel(i32 1, i32 %44)
  br label %138

46:                                               ; preds = %30
  %47 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %48 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i32 @bfa_ioc_fwver_get(%struct.TYPE_10__* %49, %struct.bfi_ioc_image_hdr_s* %3)
  %51 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @swab32(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @BFI_FWBOOT_TYPE_NORMAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %59 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @writel(i32 1, i32 %63)
  br label %138

65:                                               ; preds = %46
  %66 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %67 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @PSS_SMEM_PGNUM(i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @PSS_SMEM_PGOFF(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %78 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @writel(i32 %76, i32 %82)
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %101, %65
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %86, 1
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %90 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @bfa_mem_write(i32 %94, i32 %95, i32 0)
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %84

104:                                              ; preds = %84
  %105 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %106 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @bfa_trc(%struct.TYPE_10__* %107, i32 %108)
  %110 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %111 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %3, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @swab32(i32 %114)
  %116 = call i32 @bfa_trc(%struct.TYPE_10__* %112, i32 %115)
  %117 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %118 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %121 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.TYPE_10__* %119, i32 %120)
  %122 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %123 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %126 = call i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.TYPE_10__* %124, i32 %125)
  %127 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %128 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = call i32 @bfa_ioc_ownership_reset(%struct.TYPE_10__* %129)
  %131 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %132 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @writel(i32 1, i32 %136)
  br label %138

138:                                              ; preds = %104, %57, %38
  %139 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %140 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = call i32 @bfa_ioc_hw_sem_get(%struct.TYPE_10__* %141)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bfa_ioc_get_cur_ioc_fwstate(%struct.TYPE_10__*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_ioc_fwver_get(%struct.TYPE_10__*, %struct.bfi_ioc_image_hdr_s*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @PSS_SMEM_PGNUM(i32, i32) #1

declare dso_local i32 @PSS_SMEM_PGOFF(i32) #1

declare dso_local i32 @bfa_mem_write(i32, i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bfa_ioc_ownership_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @bfa_ioc_hw_sem_get(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
