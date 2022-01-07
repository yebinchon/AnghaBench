; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_msix_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_msix_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__HFN_INT_RME_MASK = common dso_local global i32 0, align 4
@BFI_IOC_MAX_CQS = common dso_local global i32 0, align 4
@__HFN_INT_CPE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_msix_all(%struct.bfa_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %85

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @__HFN_INT_RME_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BFI_IOC_MAX_CQS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @bfa_isr_rspq(%struct.bfa_s* %34, i32 %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %29

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %23, %17
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %85

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @__HFN_INT_CPE_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %69, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @BFI_IOC_MAX_CQS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @bfa_isr_reqq(%struct.bfa_s* %66, i32 %67)
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %61

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %55, %49
  %74 = load i32, i32* %6, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %85

81:                                               ; preds = %73
  %82 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @bfa_msix_lpu_err(%struct.bfa_s* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %80, %48, %16
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @bfa_isr_rspq(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_isr_reqq(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_msix_lpu_err(%struct.bfa_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
