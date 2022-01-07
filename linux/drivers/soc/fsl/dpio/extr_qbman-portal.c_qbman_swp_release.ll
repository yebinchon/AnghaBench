; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qbman_release_desc = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_RAR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QMAN_REV_MASK = common dso_local global i32 0, align 4
@QMAN_REV_5000 = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_RCR_AM_RT = common dso_local global i64 0, align 8
@QMAN_RT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qbman_swp_release(%struct.qbman_swp* %0, %struct.qbman_release_desc* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qbman_swp*, align 8
  %7 = alloca %struct.qbman_release_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qbman_release_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.qbman_swp* %0, %struct.qbman_swp** %6, align 8
  store %struct.qbman_release_desc* %1, %struct.qbman_release_desc** %7, align 8
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
  br label %123

21:                                               ; preds = %15
  %22 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %23 = load i32, i32* @QBMAN_CINH_SWP_RAR, align 4
  %24 = call i32 @qbman_read_register(%struct.qbman_swp* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @RAR_SUCCESS(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %123

31:                                               ; preds = %21
  %32 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %33 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @QMAN_REV_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @QMAN_REV_5000, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @RAR_IDX(i32 %43)
  %45 = call i32 @QBMAN_CENA_SWP_RCR(i32 %44)
  %46 = call %struct.qbman_release_desc* @qbman_get_cmd(%struct.qbman_swp* %42, i32 %45)
  store %struct.qbman_release_desc* %46, %struct.qbman_release_desc** %11, align 8
  br label %53

47:                                               ; preds = %31
  %48 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @RAR_IDX(i32 %49)
  %51 = call i32 @QBMAN_CENA_SWP_RCR_MEM(i32 %50)
  %52 = call %struct.qbman_release_desc* @qbman_get_cmd(%struct.qbman_swp* %48, i32 %51)
  store %struct.qbman_release_desc* %52, %struct.qbman_release_desc** %11, align 8
  br label %53

53:                                               ; preds = %47, %41
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cpu_to_le64(i32 %63)
  %65 = load %struct.qbman_release_desc*, %struct.qbman_release_desc** %11, align 8
  %66 = getelementptr inbounds %struct.qbman_release_desc, %struct.qbman_release_desc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.qbman_release_desc*, %struct.qbman_release_desc** %7, align 8
  %76 = getelementptr inbounds %struct.qbman_release_desc, %struct.qbman_release_desc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qbman_release_desc*, %struct.qbman_release_desc** %11, align 8
  %79 = getelementptr inbounds %struct.qbman_release_desc, %struct.qbman_release_desc* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %81 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @QMAN_REV_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @QMAN_REV_5000, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %74
  %90 = call i32 (...) @dma_wmb()
  %91 = load %struct.qbman_release_desc*, %struct.qbman_release_desc** %7, align 8
  %92 = getelementptr inbounds %struct.qbman_release_desc, %struct.qbman_release_desc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @RAR_VB(i32 %94)
  %96 = or i32 %93, %95
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.qbman_release_desc*, %struct.qbman_release_desc** %11, align 8
  %100 = getelementptr inbounds %struct.qbman_release_desc, %struct.qbman_release_desc* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %122

101:                                              ; preds = %74
  %102 = load %struct.qbman_release_desc*, %struct.qbman_release_desc** %7, align 8
  %103 = getelementptr inbounds %struct.qbman_release_desc, %struct.qbman_release_desc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @RAR_VB(i32 %105)
  %107 = or i32 %104, %106
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.qbman_release_desc*, %struct.qbman_release_desc** %11, align 8
  %111 = getelementptr inbounds %struct.qbman_release_desc, %struct.qbman_release_desc* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = call i32 (...) @dma_wmb()
  %113 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %114 = load i64, i64* @QBMAN_CINH_SWP_RCR_AM_RT, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @RAR_IDX(i32 %115)
  %117 = mul nsw i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %114, %118
  %120 = load i32, i32* @QMAN_RT_MODE, align 4
  %121 = call i32 @qbman_write_register(%struct.qbman_swp* %113, i64 %119, i32 %120)
  br label %122

122:                                              ; preds = %101, %89
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %28, %18
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @qbman_read_register(%struct.qbman_swp*, i32) #1

declare dso_local i32 @RAR_SUCCESS(i32) #1

declare dso_local %struct.qbman_release_desc* @qbman_get_cmd(%struct.qbman_swp*, i32) #1

declare dso_local i32 @QBMAN_CENA_SWP_RCR(i32) #1

declare dso_local i32 @RAR_IDX(i32) #1

declare dso_local i32 @QBMAN_CENA_SWP_RCR_MEM(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @RAR_VB(i32) #1

declare dso_local i32 @qbman_write_register(%struct.qbman_swp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
