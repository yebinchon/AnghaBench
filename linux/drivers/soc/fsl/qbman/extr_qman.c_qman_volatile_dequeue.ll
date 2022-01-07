; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_volatile_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_volatile_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i64, i32 }
%struct.qman_portal = type { i32 }

@qman_fq_state_parked = common dso_local global i64 0, align 8
@qman_fq_state_retired = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QM_VDQCR_FQID_MASK = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_VDQCR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QMAN_VOLATILE_FLAG_WAIT = common dso_local global i32 0, align 4
@QMAN_VOLATILE_FLAG_FINISH = common dso_local global i32 0, align 4
@QMAN_VOLATILE_FLAG_WAIT_INT = common dso_local global i32 0, align 4
@affine_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_volatile_dequeue(%struct.qman_fq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qman_portal*, align 8
  %9 = alloca i32, align 4
  store %struct.qman_fq* %0, %struct.qman_fq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %11 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @qman_fq_state_parked, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %17 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @qman_fq_state_retired, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %97

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @QM_VDQCR_FQID_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %24
  %33 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %34 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %35 = call i64 @fq_isset(%struct.qman_fq* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %97

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @QM_VDQCR_FQID_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %46 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @QMAN_VOLATILE_FLAG_WAIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @wait_vdqcr_start(%struct.qman_portal** %8, %struct.qman_fq* %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %62

58:                                               ; preds = %40
  %59 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @set_vdqcr(%struct.qman_portal** %8, %struct.qman_fq* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %97

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @QMAN_VOLATILE_FLAG_FINISH, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @QMAN_VOLATILE_FLAG_WAIT_INT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* @affine_queue, align 4
  %79 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %80 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %81 = call i64 @fq_isset(%struct.qman_fq* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @wait_event_interruptible(i32 %78, i32 %84)
  br label %95

86:                                               ; preds = %72
  %87 = load i32, i32* @affine_queue, align 4
  %88 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %89 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %90 = call i64 @fq_isset(%struct.qman_fq* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @wait_event(i32 %87, i32 %93)
  br label %95

95:                                               ; preds = %86, %77
  br label %96

96:                                               ; preds = %95, %67
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %65, %37, %29, %21
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @fq_isset(%struct.qman_fq*, i32) #1

declare dso_local i32 @wait_vdqcr_start(%struct.qman_portal**, %struct.qman_fq*, i32, i32) #1

declare dso_local i32 @set_vdqcr(%struct.qman_portal**, %struct.qman_fq*, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
