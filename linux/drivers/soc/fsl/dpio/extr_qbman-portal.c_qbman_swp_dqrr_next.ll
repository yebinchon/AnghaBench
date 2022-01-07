; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_dqrr_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_dqrr_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_dq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qbman_swp = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@QBMAN_CINH_SWP_DQPI = common dso_local global i32 0, align 4
@QMAN_DQRR_PI_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"next_idx=%d, pi=%d, clear reset bug\0A\00", align 1
@QMAN_REV_MASK = common dso_local global i32 0, align 4
@QMAN_REV_5000 = common dso_local global i32 0, align 4
@QB_VALID_BIT = common dso_local global i32 0, align 4
@QBMAN_RESULT_MASK = common dso_local global i32 0, align 4
@QBMAN_RESULT_DQ = common dso_local global i32 0, align 4
@DPAA2_DQ_STAT_VOLATILE = common dso_local global i32 0, align 4
@DPAA2_DQ_STAT_EXPIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpaa2_dq* @qbman_swp_dqrr_next(%struct.qbman_swp* %0) #0 {
  %2 = alloca %struct.dpaa2_dq*, align 8
  %3 = alloca %struct.qbman_swp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpaa2_dq*, align 8
  %8 = alloca i32, align 4
  store %struct.qbman_swp* %0, %struct.qbman_swp** %3, align 8
  %9 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %10 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @unlikely(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %1
  %16 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %17 = load i32, i32* @QBMAN_CINH_SWP_DQPI, align 4
  %18 = call i32 @qbman_read_register(%struct.qbman_swp* %16, i32 %17)
  %19 = load i32, i32* @QMAN_DQRR_PI_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %23 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store %struct.dpaa2_dq* null, %struct.dpaa2_dq** %2, align 8
  br label %170

28:                                               ; preds = %15
  %29 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %30 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %34 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %41 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %47 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %39, %28
  %50 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %51 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %52 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @QBMAN_CENA_SWP_DQRR(i32 %54)
  %56 = call %struct.dpaa2_dq* @qbman_get_cmd(%struct.qbman_swp* %50, i32 %55)
  %57 = call i32 @prefetch(%struct.dpaa2_dq* %56)
  br label %58

58:                                               ; preds = %49, %1
  %59 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %60 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @QMAN_REV_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @QMAN_REV_5000, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %70 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %71 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @QBMAN_CENA_SWP_DQRR(i32 %73)
  %75 = call %struct.dpaa2_dq* @qbman_get_cmd(%struct.qbman_swp* %69, i32 %74)
  store %struct.dpaa2_dq* %75, %struct.dpaa2_dq** %7, align 8
  br label %84

76:                                               ; preds = %58
  %77 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %78 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %79 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @QBMAN_CENA_SWP_DQRR_MEM(i32 %81)
  %83 = call %struct.dpaa2_dq* @qbman_get_cmd(%struct.qbman_swp* %77, i32 %82)
  store %struct.dpaa2_dq* %83, %struct.dpaa2_dq** %7, align 8
  br label %84

84:                                               ; preds = %76, %68
  %85 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %7, align 8
  %86 = getelementptr inbounds %struct.dpaa2_dq, %struct.dpaa2_dq* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @QB_VALID_BIT, align 4
  %91 = and i32 %89, %90
  %92 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %93 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %91, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %84
  %98 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %99 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %100 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @QBMAN_CENA_SWP_DQRR(i32 %102)
  %104 = call %struct.dpaa2_dq* @qbman_get_cmd(%struct.qbman_swp* %98, i32 %103)
  %105 = call i32 @prefetch(%struct.dpaa2_dq* %104)
  store %struct.dpaa2_dq* null, %struct.dpaa2_dq** %2, align 8
  br label %170

106:                                              ; preds = %84
  %107 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %108 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %113 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %118 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %116
  store i32 %121, i32* %119, align 8
  %122 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %123 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %106
  %128 = load i32, i32* @QB_VALID_BIT, align 4
  %129 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %130 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = xor i32 %132, %128
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %127, %106
  %135 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %7, align 8
  %136 = getelementptr inbounds %struct.dpaa2_dq, %struct.dpaa2_dq* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @QBMAN_RESULT_MASK, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @QBMAN_RESULT_DQ, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %134
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @DPAA2_DQ_STAT_VOLATILE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @DPAA2_DQ_STAT_EXPIRED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %157 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = call i32 @atomic_inc(i32* %158)
  br label %160

160:                                              ; preds = %155, %150, %145, %134
  %161 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %162 = load %struct.qbman_swp*, %struct.qbman_swp** %3, align 8
  %163 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @QBMAN_CENA_SWP_DQRR(i32 %165)
  %167 = call %struct.dpaa2_dq* @qbman_get_cmd(%struct.qbman_swp* %161, i32 %166)
  %168 = call i32 @prefetch(%struct.dpaa2_dq* %167)
  %169 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %7, align 8
  store %struct.dpaa2_dq* %169, %struct.dpaa2_dq** %2, align 8
  br label %170

170:                                              ; preds = %160, %97, %27
  %171 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %2, align 8
  ret %struct.dpaa2_dq* %171
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @qbman_read_register(%struct.qbman_swp*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @prefetch(%struct.dpaa2_dq*) #1

declare dso_local %struct.dpaa2_dq* @qbman_get_cmd(%struct.qbman_swp*, i32) #1

declare dso_local i32 @QBMAN_CENA_SWP_DQRR(i32) #1

declare dso_local i32 @QBMAN_CENA_SWP_DQRR_MEM(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
