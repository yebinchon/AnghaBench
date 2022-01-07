; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_process_frame_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_process_frame_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hp_handler = type { i64, i32, i32, i32* }
%struct.qm_fd = type { i32 }

@HP_FIRST_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bad frame address, [%llX != %llX]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HP_NUM_WORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"corrupt frame data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hp_handler*, %struct.qm_fd*)* @process_frame_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame_data(%struct.hp_handler* %0, %struct.qm_fd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hp_handler*, align 8
  %5 = alloca %struct.qm_fd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hp_handler* %0, %struct.hp_handler** %4, align 8
  store %struct.qm_fd* %1, %struct.qm_fd** %5, align 8
  %9 = load %struct.hp_handler*, %struct.hp_handler** %4, align 8
  %10 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* @HP_FIRST_WORD, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %14 = call i64 @qm_fd_addr_get64(%struct.qm_fd* %13)
  %15 = load %struct.hp_handler*, %struct.hp_handler** %4, align 8
  %16 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %21 = call i64 @qm_fd_addr_get64(%struct.qm_fd* %20)
  %22 = load %struct.hp_handler*, %struct.hp_handler** %4, align 8
  %23 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %24)
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @HP_NUM_WORDS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load %struct.hp_handler*, %struct.hp_handler** %4, align 8
  %35 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %63

48:                                               ; preds = %33
  %49 = load %struct.hp_handler*, %struct.hp_handler** %4, align 8
  %50 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @do_lfsr(i32 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %6, align 8
  br label %29

62:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %44, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @qm_fd_addr_get64(%struct.qm_fd*) #1

declare dso_local i32 @pr_crit(i8*, ...) #1

declare dso_local i32 @do_lfsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
