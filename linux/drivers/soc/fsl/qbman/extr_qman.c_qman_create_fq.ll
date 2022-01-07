; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_create_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_create_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32, i32, i32, i64, i32 }

@QMAN_FQ_FLAG_DYNAMIC_FQID = common dso_local global i32 0, align 4
@qman_fq_state_oos = common dso_local global i32 0, align 4
@num_fqids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bad fqid %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QMAN_FQ_FLAG_NO_MODIFY = common dso_local global i32 0, align 4
@fq_table = common dso_local global %struct.qman_fq** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_create_fq(i32 %0, i32 %1, %struct.qman_fq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qman_fq*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.qman_fq* %2, %struct.qman_fq** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @QMAN_FQ_FLAG_DYNAMIC_FQID, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = call i32 @qman_alloc_fqid(i32* %5)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %73

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %23 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %26 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @qman_fq_state_oos, align 4
  %28 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %29 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %31 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @num_fqids, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %20
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %73

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 2
  %46 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %47 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @QMAN_FQ_FLAG_NO_MODIFY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %54 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %52, %43
  %58 = load %struct.qman_fq**, %struct.qman_fq*** @fq_table, align 8
  %59 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %60 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.qman_fq*, %struct.qman_fq** %58, i64 %62
  %64 = load %struct.qman_fq*, %struct.qman_fq** %63, align 8
  %65 = call i32 @WARN_ON(%struct.qman_fq* %64)
  %66 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %67 = load %struct.qman_fq**, %struct.qman_fq*** @fq_table, align 8
  %68 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %69 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.qman_fq*, %struct.qman_fq** %67, i64 %71
  store %struct.qman_fq* %66, %struct.qman_fq** %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %57, %38, %17
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @qman_alloc_fqid(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @WARN_ON(%struct.qman_fq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
