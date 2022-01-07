; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_compute_residual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_compute_residual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_ccb = type { i32, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@XE_EXTRA_DATA = common dso_local global i32 0, align 4
@XE_SODL_UNRUN = common dso_local global i32 0, align 4
@XE_SWIDE_OVRUN = common dso_local global i32 0, align 4
@HF_SENSE = common dso_local global i32 0, align 4
@SYM_CONF_MAX_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sym_compute_residual(%struct.sym_hcb* %0, %struct.sym_ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.sym_ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %11 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @XE_EXTRA_DATA, align 4
  %14 = load i32, i32* @XE_SODL_UNRUN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @XE_SWIDE_OVRUN, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %22 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XE_EXTRA_DATA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %29 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %27, %20
  %36 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %37 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XE_SODL_UNRUN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %47 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @XE_SWIDE_OVRUN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %58 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %63 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %144

68:                                               ; preds = %56
  %69 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %70 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %73 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %89, label %78

78:                                               ; preds = %68
  %79 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %80 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %81 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %82 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @scr_to_cpu(i64 %85)
  %87 = call i64 @sym_evaluate_dp(%struct.sym_hcb* %79, %struct.sym_ccb* %80, i32 %86, i32* %8)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %78, %68
  %90 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %91 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %94 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %3, align 4
  br label %144

97:                                               ; preds = %78
  %98 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %99 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @HF_SENSE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %144

107:                                              ; preds = %97
  %108 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %109 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  %112 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %113 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %134, %107
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %121 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @scr_to_cpu(i64 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, 16777215
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %115

137:                                              ; preds = %115
  %138 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %139 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %104, %89, %66
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @sym_evaluate_dp(%struct.sym_hcb*, %struct.sym_ccb*, i32, i32*) #1

declare dso_local i32 @scr_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
