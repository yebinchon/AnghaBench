; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { i32, i32, i32, i32, %struct.bfa_itnim_s*, i32 }
%struct.bfa_itnim_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_tskim_req_s = type { i32, i32, i32, i32, i32, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_TSKIM = common dso_local global i32 0, align 4
@BFI_TSKIM_H2I_TM_REQ = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_tskim_s*)* @bfa_tskim_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_tskim_send(%struct.bfa_tskim_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_tskim_s*, align 8
  %4 = alloca %struct.bfa_itnim_s*, align 8
  %5 = alloca %struct.bfi_tskim_req_s*, align 8
  store %struct.bfa_tskim_s* %0, %struct.bfa_tskim_s** %3, align 8
  %6 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %6, i32 0, i32 4
  %8 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %7, align 8
  store %struct.bfa_itnim_s* %8, %struct.bfa_itnim_s** %4, align 8
  %9 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.bfi_tskim_req_s* @bfa_reqq_next(i32 %11, i32 %14)
  store %struct.bfi_tskim_req_s* %15, %struct.bfi_tskim_req_s** %5, align 8
  %16 = load %struct.bfi_tskim_req_s*, %struct.bfi_tskim_req_s** %5, align 8
  %17 = icmp ne %struct.bfi_tskim_req_s* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @BFA_FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %72

20:                                               ; preds = %1
  %21 = load %struct.bfi_tskim_req_s*, %struct.bfi_tskim_req_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfi_tskim_req_s, %struct.bfi_tskim_req_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BFI_MC_TSKIM, align 4
  %25 = load i32, i32* @BFI_TSKIM_H2I_TM_REQ, align 4
  %26 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bfa_fn_lpu(i32 %28)
  %30 = call i32 @bfi_h2i_set(i32 %23, i32 %24, i32 %25, i32 %29)
  %31 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cpu_to_be16(i32 %33)
  %35 = load %struct.bfi_tskim_req_s*, %struct.bfi_tskim_req_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfi_tskim_req_s, %struct.bfi_tskim_req_s* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %37, i32 0, i32 4
  %39 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %38, align 8
  %40 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bfi_tskim_req_s*, %struct.bfi_tskim_req_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfi_tskim_req_s, %struct.bfi_tskim_req_s* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfi_tskim_req_s*, %struct.bfi_tskim_req_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfi_tskim_req_s, %struct.bfi_tskim_req_s* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.bfi_tskim_req_s*, %struct.bfi_tskim_req_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfi_tskim_req_s, %struct.bfi_tskim_req_s* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bfi_tskim_req_s*, %struct.bfi_tskim_req_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfi_tskim_req_s, %struct.bfi_tskim_req_s* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %4, align 8
  %65 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.bfi_tskim_req_s*, %struct.bfi_tskim_req_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfi_tskim_req_s, %struct.bfi_tskim_req_s* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bfa_reqq_produce(i32 %63, i32 %66, i32 %69)
  %71 = load i32, i32* @BFA_TRUE, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %20, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.bfi_tskim_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
