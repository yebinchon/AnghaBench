; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_destroy_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_destroy_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32, i64, i32 }

@QMAN_FQ_FLAG_DYNAMIC_FQID = common dso_local global i32 0, align 4
@fq_table = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [33 x i8] c"qman_free_fq() on unquiesced FQ!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qman_destroy_fq(%struct.qman_fq* %0) #0 {
  %2 = alloca %struct.qman_fq*, align 8
  store %struct.qman_fq* %0, %struct.qman_fq** %2, align 8
  %3 = load %struct.qman_fq*, %struct.qman_fq** %2, align 8
  %4 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %30 [
    i32 128, label %6
    i32 129, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.qman_fq*, %struct.qman_fq** %2, align 8
  %8 = load i32, i32* @QMAN_FQ_FLAG_DYNAMIC_FQID, align 4
  %9 = call i32 @fq_isset(%struct.qman_fq* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.qman_fq*, %struct.qman_fq** %2, align 8
  %13 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @qman_release_fqid(i32 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load i32**, i32*** @fq_table, align 8
  %18 = load %struct.qman_fq*, %struct.qman_fq** %2, align 8
  %19 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %17, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @DPAA_ASSERT(i32 %23)
  %25 = load i32**, i32*** @fq_table, align 8
  %26 = load %struct.qman_fq*, %struct.qman_fq** %2, align 8
  %27 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32*, i32** %25, i64 %28
  store i32* null, i32** %29, align 8
  br label %33

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30
  %32 = call i32 @DPAA_ASSERT(i32 0)
  br label %33

33:                                               ; preds = %31, %16
  ret void
}

declare dso_local i32 @fq_isset(%struct.qman_fq*, i32) #1

declare dso_local i32 @qman_release_fqid(i32) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
