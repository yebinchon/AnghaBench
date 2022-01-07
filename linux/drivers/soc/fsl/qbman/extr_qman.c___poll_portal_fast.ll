; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c___poll_portal_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c___poll_portal_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32, %struct.qman_fq* }
%struct.qman_fq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)* }
%struct.qm_dqrr_entry = type opaque
%struct.qm_dqrr_entry.0 = type { i32, i32 }

@QM_DQRR_STAT_UNSCHEDULED = common dso_local global i32 0, align 4
@QM_DQRR_STAT_FQ_EMPTY = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@qman_cb_dqrr_stop = common dso_local global i32 0, align 4
@QM_DQRR_STAT_DQCR_EXPIRED = common dso_local global i32 0, align 4
@QM_DQRR_STAT_FQ_HELDACTIVE = common dso_local global i32 0, align 4
@qman_cb_dqrr_park = common dso_local global i32 0, align 4
@qman_cb_dqrr_defer = common dso_local global i32 0, align 4
@qman_cb_dqrr_consume_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, i32)* @__poll_portal_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__poll_portal_fast(%struct.qman_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qman_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qm_dqrr_entry.0*, align 8
  %6 = alloca %struct.qman_fq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qman_portal* %0, %struct.qman_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %126, %2
  %10 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %11 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %10, i32 0, i32 0
  %12 = call i32 @qm_dqrr_pvb_update(i32* %11)
  %13 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %14 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %13, i32 0, i32 0
  %15 = call %struct.qm_dqrr_entry.0* @qm_dqrr_current(i32* %14)
  store %struct.qm_dqrr_entry.0* %15, %struct.qm_dqrr_entry.0** %5, align 8
  %16 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %17 = icmp ne %struct.qm_dqrr_entry.0* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %128

19:                                               ; preds = %9
  %20 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %21 = getelementptr inbounds %struct.qm_dqrr_entry.0, %struct.qm_dqrr_entry.0* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @QM_DQRR_STAT_UNSCHEDULED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %19
  %27 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %28 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %27, i32 0, i32 1
  %29 = load %struct.qman_fq*, %struct.qman_fq** %28, align 8
  store %struct.qman_fq* %29, %struct.qman_fq** %6, align 8
  %30 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %31 = getelementptr inbounds %struct.qm_dqrr_entry.0, %struct.qm_dqrr_entry.0* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QM_DQRR_STAT_FQ_EMPTY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %38 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %39 = call i32 @fq_clear(%struct.qman_fq* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %26
  %41 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %42 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)*, i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)** %43, align 8
  %45 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %46 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %47 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %48 = bitcast %struct.qm_dqrr_entry.0* %47 to %struct.qm_dqrr_entry*
  %49 = call i32 %44(%struct.qman_portal* %45, %struct.qman_fq* %46, %struct.qm_dqrr_entry* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @qman_cb_dqrr_stop, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %128

54:                                               ; preds = %40
  %55 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %56 = getelementptr inbounds %struct.qm_dqrr_entry.0, %struct.qm_dqrr_entry.0* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @QM_DQRR_STAT_DQCR_EXPIRED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %63 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %64 = call i32 @clear_vdqcr(%struct.qman_portal* %62, %struct.qman_fq* %63)
  br label %65

65:                                               ; preds = %61, %54
  br label %86

66:                                               ; preds = %19
  %67 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %68 = getelementptr inbounds %struct.qm_dqrr_entry.0, %struct.qm_dqrr_entry.0* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = call %struct.qman_fq* @tag_to_fq(i32 %70)
  store %struct.qman_fq* %71, %struct.qman_fq** %6, align 8
  %72 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %73 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)*, i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)** %74, align 8
  %76 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %77 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %78 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %79 = bitcast %struct.qm_dqrr_entry.0* %78 to %struct.qm_dqrr_entry*
  %80 = call i32 %75(%struct.qman_portal* %76, %struct.qman_fq* %77, %struct.qm_dqrr_entry* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @qman_cb_dqrr_stop, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %66
  br label %128

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %65
  %87 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %88 = getelementptr inbounds %struct.qm_dqrr_entry.0, %struct.qm_dqrr_entry.0* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @QM_DQRR_STAT_FQ_HELDACTIVE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @qman_cb_dqrr_park, align 4
  %96 = icmp ne i32 %94, %95
  br label %97

97:                                               ; preds = %93, %86
  %98 = phi i1 [ true, %86 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @DPAA_ASSERT(i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @qman_cb_dqrr_defer, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %106 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %105, i32 0, i32 0
  %107 = load %struct.qm_dqrr_entry.0*, %struct.qm_dqrr_entry.0** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @qman_cb_dqrr_park, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @qm_dqrr_cdc_consume_1ptr(i32* %106, %struct.qm_dqrr_entry.0* %107, i32 %111)
  br label %113

113:                                              ; preds = %104, %97
  %114 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %115 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %114, i32 0, i32 0
  %116 = call i32 @qm_dqrr_next(i32* %115)
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @qman_cb_dqrr_consume_stop, align 4
  %125 = icmp ne i32 %123, %124
  br label %126

126:                                              ; preds = %122, %117
  %127 = phi i1 [ false, %117 ], [ %125, %122 ]
  br i1 %127, label %9, label %128

128:                                              ; preds = %126, %84, %53, %18
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i32 @qm_dqrr_pvb_update(i32*) #1

declare dso_local %struct.qm_dqrr_entry.0* @qm_dqrr_current(i32*) #1

declare dso_local i32 @fq_clear(%struct.qman_fq*, i32) #1

declare dso_local i32 @clear_vdqcr(%struct.qman_portal*, %struct.qman_fq*) #1

declare dso_local %struct.qman_fq* @tag_to_fq(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @qm_dqrr_cdc_consume_1ptr(i32*, %struct.qm_dqrr_entry.0*, i32) #1

declare dso_local i32 @qm_dqrr_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
