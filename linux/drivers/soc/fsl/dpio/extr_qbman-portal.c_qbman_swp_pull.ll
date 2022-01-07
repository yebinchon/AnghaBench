; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qbman_pull_desc = type { i32, i64, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@QMAN_REV_MASK = common dso_local global i32 0, align 4
@QMAN_REV_5000 = common dso_local global i32 0, align 4
@QBMAN_CENA_SWP_VDQCR = common dso_local global i32 0, align 4
@QBMAN_CENA_SWP_VDQCR_MEM = common dso_local global i32 0, align 4
@QMAN_DQ_TOKEN_VALID = common dso_local global i32 0, align 4
@QB_VALID_BIT = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_VDQCR_RT = common dso_local global i32 0, align 4
@QMAN_RT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qbman_swp_pull(%struct.qbman_swp* %0, %struct.qbman_pull_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qbman_swp*, align 8
  %5 = alloca %struct.qbman_pull_desc*, align 8
  %6 = alloca %struct.qbman_pull_desc*, align 8
  store %struct.qbman_swp* %0, %struct.qbman_swp** %4, align 8
  store %struct.qbman_pull_desc* %1, %struct.qbman_pull_desc** %5, align 8
  %7 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %8 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = call i32 @atomic_dec_and_test(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %14 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %118

19:                                               ; preds = %2
  %20 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %21 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %25 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %28 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @QMAN_REV_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @QMAN_REV_5000, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %38 = load i32, i32* @QBMAN_CENA_SWP_VDQCR, align 4
  %39 = call %struct.qbman_pull_desc* @qbman_get_cmd(%struct.qbman_swp* %37, i32 %38)
  store %struct.qbman_pull_desc* %39, %struct.qbman_pull_desc** %6, align 8
  br label %44

40:                                               ; preds = %19
  %41 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %42 = load i32, i32* @QBMAN_CENA_SWP_VDQCR_MEM, align 4
  %43 = call %struct.qbman_pull_desc* @qbman_get_cmd(%struct.qbman_swp* %41, i32 %42)
  store %struct.qbman_pull_desc* %43, %struct.qbman_pull_desc** %6, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %46 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %6, align 8
  %49 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @QMAN_DQ_TOKEN_VALID, align 4
  %51 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %6, align 8
  %52 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %54 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %6, align 8
  %57 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %59 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %6, align 8
  %62 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %64 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %6, align 8
  %67 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %69 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @QMAN_REV_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @QMAN_REV_5000, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %44
  %78 = call i32 (...) @dma_wmb()
  %79 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %80 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %83 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %81, %85
  %87 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %6, align 8
  %88 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @QB_VALID_BIT, align 4
  %90 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %91 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = xor i32 %93, %89
  store i32 %94, i32* %92, align 8
  br label %117

95:                                               ; preds = %44
  %96 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %97 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %100 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %98, %102
  %104 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %6, align 8
  %105 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @QB_VALID_BIT, align 4
  %107 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %108 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = xor i32 %110, %106
  store i32 %111, i32* %109, align 8
  %112 = call i32 (...) @dma_wmb()
  %113 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %114 = load i32, i32* @QBMAN_CINH_SWP_VDQCR_RT, align 4
  %115 = load i32, i32* @QMAN_RT_MODE, align 4
  %116 = call i32 @qbman_write_register(%struct.qbman_swp* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %95, %77
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %12
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.qbman_pull_desc* @qbman_get_cmd(%struct.qbman_swp*, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @qbman_write_register(%struct.qbman_swp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
