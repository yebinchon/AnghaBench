; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_send_first_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_send_first_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32, i64* }
%struct.qm_fd = type { i32 }

@special_handler = common dso_local global %struct.TYPE_2__* null, align 8
@HP_FIRST_WORD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@HP_NUM_WORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"corrupt frame data\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Sending first frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"qman_enqueue() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @send_first_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_first_frame(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qm_fd, align 4
  store i8* %0, i8** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @special_handler, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %4, align 8
  %12 = load i64, i64* @HP_FIRST_WORD, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @special_handler, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 (...) @smp_processor_id()
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %67

21:                                               ; preds = %1
  %22 = call i32 @memset(%struct.qm_fd* %8, i32 0, i32 4)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @special_handler, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @qm_fd_addr_set64(%struct.qm_fd* %8, i32 %25)
  %27 = load i32, i32* @HP_NUM_WORDS, align 4
  %28 = mul nsw i32 %27, 4
  %29 = call i32 @qm_fd_set_contig_big(%struct.qm_fd* %8, i32 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %52, %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HP_NUM_WORDS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  %42 = call i32 @pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %67

43:                                               ; preds = %34
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @special_handler, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %47, align 8
  %49 = xor i64 %48, %46
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @do_lfsr(i64 %50)
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i64*, i64** %4, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %4, align 8
  br label %30

57:                                               ; preds = %30
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @special_handler, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @qman_enqueue(i32* %60, %struct.qm_fd* %8)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 @pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %67

66:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %69

67:                                               ; preds = %64, %39, %18
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%struct.qm_fd*, i32, i32) #1

declare dso_local i32 @qm_fd_addr_set64(%struct.qm_fd*, i32) #1

declare dso_local i32 @qm_fd_set_contig_big(%struct.qm_fd*, i32) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i64 @do_lfsr(i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @qman_enqueue(i32*, %struct.qm_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
