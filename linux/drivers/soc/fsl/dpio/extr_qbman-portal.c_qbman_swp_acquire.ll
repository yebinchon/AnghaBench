; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { i32 }
%struct.qbman_acquire_desc = type { i32, i32 }
%struct.qbman_acquire_rslt = type { i32, i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QBMAN_MC_ACQUIRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"qbman: acquire from BPID %d failed, no response\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QBMAN_MC_RSLT_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"qbman: acquire from BPID 0x%x failed, code=0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qbman_swp_acquire(%struct.qbman_swp* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qbman_swp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qbman_acquire_desc*, align 8
  %11 = alloca %struct.qbman_acquire_rslt*, align 8
  %12 = alloca i32, align 4
  store %struct.qbman_swp* %0, %struct.qbman_swp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ugt i32 %16, 7
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %111

21:                                               ; preds = %15
  %22 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %23 = call %struct.qbman_acquire_desc* @qbman_swp_mc_start(%struct.qbman_swp* %22)
  store %struct.qbman_acquire_desc* %23, %struct.qbman_acquire_desc** %10, align 8
  %24 = load %struct.qbman_acquire_desc*, %struct.qbman_acquire_desc** %10, align 8
  %25 = icmp ne %struct.qbman_acquire_desc* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %111

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load %struct.qbman_acquire_desc*, %struct.qbman_acquire_desc** %10, align 8
  %33 = getelementptr inbounds %struct.qbman_acquire_desc, %struct.qbman_acquire_desc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.qbman_acquire_desc*, %struct.qbman_acquire_desc** %10, align 8
  %36 = getelementptr inbounds %struct.qbman_acquire_desc, %struct.qbman_acquire_desc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %38 = load %struct.qbman_acquire_desc*, %struct.qbman_acquire_desc** %10, align 8
  %39 = load i32, i32* @QBMAN_MC_ACQUIRE, align 4
  %40 = call %struct.qbman_acquire_rslt* @qbman_swp_mc_complete(%struct.qbman_swp* %37, %struct.qbman_acquire_desc* %38, i32 %39)
  store %struct.qbman_acquire_rslt* %40, %struct.qbman_acquire_rslt** %11, align 8
  %41 = load %struct.qbman_acquire_rslt*, %struct.qbman_acquire_rslt** %11, align 8
  %42 = icmp ne %struct.qbman_acquire_rslt* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %111

52:                                               ; preds = %29
  %53 = load %struct.qbman_acquire_rslt*, %struct.qbman_acquire_rslt** %11, align 8
  %54 = getelementptr inbounds %struct.qbman_acquire_rslt, %struct.qbman_acquire_rslt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 127
  %57 = load i32, i32* @QBMAN_MC_ACQUIRE, align 4
  %58 = icmp ne i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load %struct.qbman_acquire_rslt*, %struct.qbman_acquire_rslt** %11, align 8
  %62 = getelementptr inbounds %struct.qbman_acquire_rslt, %struct.qbman_acquire_rslt* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @QBMAN_MC_RSLT_OK, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %52
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.qbman_acquire_rslt*, %struct.qbman_acquire_rslt** %11, align 8
  %72 = getelementptr inbounds %struct.qbman_acquire_rslt, %struct.qbman_acquire_rslt* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %70, i64 %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %111

77:                                               ; preds = %52
  %78 = load %struct.qbman_acquire_rslt*, %struct.qbman_acquire_rslt** %11, align 8
  %79 = getelementptr inbounds %struct.qbman_acquire_rslt, %struct.qbman_acquire_rslt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ugt i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %104, %77
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.qbman_acquire_rslt*, %struct.qbman_acquire_rslt** %11, align 8
  %88 = getelementptr inbounds %struct.qbman_acquire_rslt, %struct.qbman_acquire_rslt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load %struct.qbman_acquire_rslt*, %struct.qbman_acquire_rslt** %11, align 8
  %93 = getelementptr inbounds %struct.qbman_acquire_rslt, %struct.qbman_acquire_rslt* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le64_to_cpu(i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %85

107:                                              ; preds = %85
  %108 = load %struct.qbman_acquire_rslt*, %struct.qbman_acquire_rslt** %11, align 8
  %109 = getelementptr inbounds %struct.qbman_acquire_rslt, %struct.qbman_acquire_rslt* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %69, %47, %26, %18
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.qbman_acquire_desc* @qbman_swp_mc_start(%struct.qbman_swp*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.qbman_acquire_rslt* @qbman_swp_mc_complete(%struct.qbman_swp*, %struct.qbman_acquire_desc*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
