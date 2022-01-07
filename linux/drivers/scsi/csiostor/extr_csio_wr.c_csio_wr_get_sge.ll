; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_get_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_get_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_wrm = type { %struct.csio_sge }
%struct.csio_sge = type { i32, i32*, i8**, i8* }

@SGE_CONTROL_A = common dso_local global i32 0, align 4
@CSIO_SGE_FL_SIZE_REGS = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_0_AND_1_A = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_2_AND_3_A = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_4_AND_5_A = common dso_local global i32 0, align 4
@SGE_INGRESS_RX_THRESHOLD_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_wr_get_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_get_sge(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca %struct.csio_wrm*, align 8
  %4 = alloca %struct.csio_sge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %11 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %12 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %11)
  store %struct.csio_wrm* %12, %struct.csio_wrm** %3, align 8
  %13 = load %struct.csio_wrm*, %struct.csio_wrm** %3, align 8
  %14 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %13, i32 0, i32 0
  store %struct.csio_sge* %14, %struct.csio_sge** %4, align 8
  %15 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %16 = load i32, i32* @SGE_CONTROL_A, align 4
  %17 = call i8* @csio_rd_reg32(%struct.csio_hw* %15, i32 %16)
  %18 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %19 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %21 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @INGPADBOUNDARY_G(i8* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %49 [
    i32 131, label %25
    i32 128, label %28
    i32 134, label %31
    i32 132, label %34
    i32 129, label %37
    i32 135, label %40
    i32 133, label %43
    i32 130, label %46
  ]

25:                                               ; preds = %1
  %26 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %27 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %26, i32 0, i32 0
  store i32 32, i32* %27, align 8
  br label %49

28:                                               ; preds = %1
  %29 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %30 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %29, i32 0, i32 0
  store i32 64, i32* %30, align 8
  br label %49

31:                                               ; preds = %1
  %32 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %33 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %32, i32 0, i32 0
  store i32 128, i32* %33, align 8
  br label %49

34:                                               ; preds = %1
  %35 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %36 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %35, i32 0, i32 0
  store i32 256, i32* %36, align 8
  br label %49

37:                                               ; preds = %1
  %38 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %39 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %38, i32 0, i32 0
  store i32 512, i32* %39, align 8
  br label %49

40:                                               ; preds = %1
  %41 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %42 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %41, i32 0, i32 0
  store i32 1024, i32* %42, align 8
  br label %49

43:                                               ; preds = %1
  %44 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %45 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %44, i32 0, i32 0
  store i32 2048, i32* %45, align 8
  br label %49

46:                                               ; preds = %1
  %47 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %48 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %47, i32 0, i32 0
  store i32 4096, i32* %48, align 8
  br label %49

49:                                               ; preds = %1, %46, %43, %40, %37, %34, %31, %28, %25
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @CSIO_SGE_FL_SIZE_REGS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %56 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @csio_get_flbuf_size(%struct.csio_hw* %55, %struct.csio_sge* %56, i32 %57)
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %50

62:                                               ; preds = %50
  %63 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %64 = load i32, i32* @SGE_TIMER_VALUE_0_AND_1_A, align 4
  %65 = call i8* @csio_rd_reg32(%struct.csio_hw* %63, i32 %64)
  store i8* %65, i8** %7, align 8
  %66 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %67 = load i32, i32* @SGE_TIMER_VALUE_2_AND_3_A, align 4
  %68 = call i8* @csio_rd_reg32(%struct.csio_hw* %66, i32 %67)
  store i8* %68, i8** %8, align 8
  %69 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %70 = load i32, i32* @SGE_TIMER_VALUE_4_AND_5_A, align 4
  %71 = call i8* @csio_rd_reg32(%struct.csio_hw* %69, i32 %70)
  store i8* %71, i8** %9, align 8
  %72 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @TIMERVALUE0_G(i8* %73)
  %75 = call i64 @csio_core_ticks_to_us(%struct.csio_hw* %72, i32 %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %78 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %76, i8** %80, align 8
  %81 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @TIMERVALUE1_G(i8* %82)
  %84 = call i64 @csio_core_ticks_to_us(%struct.csio_hw* %81, i32 %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %87 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %86, i32 0, i32 2
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  store i8* %85, i8** %89, align 8
  %90 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @TIMERVALUE2_G(i8* %91)
  %93 = call i64 @csio_core_ticks_to_us(%struct.csio_hw* %90, i32 %92)
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %96 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %95, i32 0, i32 2
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  store i8* %94, i8** %98, align 8
  %99 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @TIMERVALUE3_G(i8* %100)
  %102 = call i64 @csio_core_ticks_to_us(%struct.csio_hw* %99, i32 %101)
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %105 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %104, i32 0, i32 2
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 3
  store i8* %103, i8** %107, align 8
  %108 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @TIMERVALUE4_G(i8* %109)
  %111 = call i64 @csio_core_ticks_to_us(%struct.csio_hw* %108, i32 %110)
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %114 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %113, i32 0, i32 2
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 4
  store i8* %112, i8** %116, align 8
  %117 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @TIMERVALUE5_G(i8* %118)
  %120 = call i64 @csio_core_ticks_to_us(%struct.csio_hw* %117, i32 %119)
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %123 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 5
  store i8* %121, i8** %125, align 8
  %126 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %127 = load i32, i32* @SGE_INGRESS_RX_THRESHOLD_A, align 4
  %128 = call i8* @csio_rd_reg32(%struct.csio_hw* %126, i32 %127)
  store i8* %128, i8** %10, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @THRESHOLD_0_G(i8* %129)
  %131 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %132 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @THRESHOLD_1_G(i8* %135)
  %137 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %138 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %136, i32* %140, align 4
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @THRESHOLD_2_G(i8* %141)
  %143 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %144 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32 %142, i32* %146, align 4
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @THRESHOLD_3_G(i8* %147)
  %149 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %150 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32 %148, i32* %152, align 4
  %153 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %154 = call i32 @csio_init_intr_coalesce_parms(%struct.csio_hw* %153)
  ret void
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i8* @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @INGPADBOUNDARY_G(i8*) #1

declare dso_local i32 @csio_get_flbuf_size(%struct.csio_hw*, %struct.csio_sge*, i32) #1

declare dso_local i64 @csio_core_ticks_to_us(%struct.csio_hw*, i32) #1

declare dso_local i32 @TIMERVALUE0_G(i8*) #1

declare dso_local i32 @TIMERVALUE1_G(i8*) #1

declare dso_local i32 @TIMERVALUE2_G(i8*) #1

declare dso_local i32 @TIMERVALUE3_G(i8*) #1

declare dso_local i32 @TIMERVALUE4_G(i8*) #1

declare dso_local i32 @TIMERVALUE5_G(i8*) #1

declare dso_local i32 @THRESHOLD_0_G(i8*) #1

declare dso_local i32 @THRESHOLD_1_G(i8*) #1

declare dso_local i32 @THRESHOLD_2_G(i8*) #1

declare dso_local i32 @THRESHOLD_3_G(i8*) #1

declare dso_local i32 @csio_init_intr_coalesce_parms(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
