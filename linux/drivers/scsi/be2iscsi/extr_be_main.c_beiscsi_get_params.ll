; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32 }

@BEISCSI_ULP0 = common dso_local global i32 0, align 4
@BEISCSI_ULP1 = common dso_local global i32 0, align 4
@BEISCSI_ULP_COUNT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@BE2_SGE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"BM_%d : Aligned ICD values\0A\09 ICD Start : %d\0A\09 ICD Count : %d\0A\09 ICD Discarded : %d\0A\00", align 1
@BE2_TMFS = common dso_local global i32 0, align 4
@BE2_NOPOUT_REQ = common dso_local global i32 0, align 4
@BE2_DEFPDU_HDR_SZ = common dso_local global i32 0, align 4
@BE2_DEFPDU_DATA_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @beiscsi_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_get_params(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %14 = load i32, i32* @BEISCSI_ULP0, align 4
  %15 = call i32 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %13, i32 %14)
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %17 = load i32, i32* @BEISCSI_ULP1, align 4
  %18 = call i32 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %16, i32 %17)
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %3, align 4
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %118, %1
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %121

24:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %27 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i64 %25, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %117

31:                                               ; preds = %24
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* @BE2_SGE, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = udiv i64 %47, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %31
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %68 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %59, %31
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %6, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %84, %85
  %87 = add nsw i32 %83, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %80, %73
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %93 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %99 = load i32, i32* @KERN_INFO, align 4
  %100 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %101 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %102 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %109 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @beiscsi_log(%struct.beiscsi_hba* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %114, i32 %115)
  br label %121

117:                                              ; preds = %24
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %20

121:                                              ; preds = %88, %20
  %122 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %123 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %5, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @BE2_TMFS, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* @BE2_NOPOUT_REQ, align 4
  %134 = add nsw i32 %132, %133
  %135 = sub nsw i32 %129, %134
  %136 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %137 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* %3, align 4
  %140 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %141 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %145 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  %147 = load i32, i32* @BE2_SGE, align 4
  %148 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %149 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @BE2_DEFPDU_HDR_SZ, align 4
  %152 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %153 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 8
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* @BE2_DEFPDU_DATA_SZ, align 4
  %156 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %157 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 7
  store i32 %155, i32* %158, align 4
  %159 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %160 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  store i32 1024, i32* %161, align 8
  %162 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %163 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 5
  store i32 1024, i32* %164, align 4
  %165 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %166 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  store i32 256, i32* %167, align 8
  ret void
}

declare dso_local i32 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba*, i32) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
