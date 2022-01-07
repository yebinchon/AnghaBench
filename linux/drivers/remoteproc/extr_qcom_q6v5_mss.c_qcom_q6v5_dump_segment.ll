; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_qcom_q6v5_dump_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_qcom_q6v5_dump_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.q6v5* }
%struct.q6v5 = type { i64, i64, i64 }
%struct.rproc_dump_segment = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rproc*, %struct.rproc_dump_segment*, i8*)* @qcom_q6v5_dump_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_q6v5_dump_segment(%struct.rproc* %0, %struct.rproc_dump_segment* %1, i8* %2) #0 {
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.rproc_dump_segment*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.q6v5*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.rproc_dump_segment* %1, %struct.rproc_dump_segment** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.rproc*, %struct.rproc** %4, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 0
  %13 = load %struct.q6v5*, %struct.q6v5** %12, align 8
  store %struct.q6v5* %13, %struct.q6v5** %8, align 8
  %14 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %5, align 8
  %15 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @BIT(i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.rproc*, %struct.rproc** %4, align 8
  %19 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %5, align 8
  %20 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %5, align 8
  %23 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @rproc_da_to_va(%struct.rproc* %18, i32 %21, i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load %struct.q6v5*, %struct.q6v5** %8, align 8
  %27 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load %struct.q6v5*, %struct.q6v5** %8, align 8
  %32 = call i32 @q6v5_mba_load(%struct.q6v5* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %5, align 8
  %42 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memset(i8* %40, i32 255, i32 %43)
  br label %52

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %5, align 8
  %49 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i8* %46, i8* %47, i32 %50)
  br label %52

52:                                               ; preds = %45, %39
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.q6v5*, %struct.q6v5** %8, align 8
  %55 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.q6v5*, %struct.q6v5** %8, align 8
  %59 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.q6v5*, %struct.q6v5** %8, align 8
  %62 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %52
  %66 = load %struct.q6v5*, %struct.q6v5** %8, align 8
  %67 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.q6v5*, %struct.q6v5** %8, align 8
  %72 = call i32 @q6v5_mba_reclaim(%struct.q6v5* %71)
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %52
  ret void
}

declare dso_local i64 @BIT(i64) #1

declare dso_local i8* @rproc_da_to_va(%struct.rproc*, i32, i32) #1

declare dso_local i32 @q6v5_mba_load(%struct.q6v5*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @q6v5_mba_reclaim(%struct.q6v5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
