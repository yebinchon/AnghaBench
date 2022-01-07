; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prlo_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prlo_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_prlo_s = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

@FC_ELS_PRLO = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_prlo_build(%struct.fchs_s* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fc_prlo_s*, align 8
  %12 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %14 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %13, i64 1
  %15 = bitcast %struct.fchs_s* %14 to %struct.fc_prlo_s*
  store %struct.fc_prlo_s* %15, %struct.fc_prlo_s** %11, align 8
  %16 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @fc_els_req_build(%struct.fchs_s* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %22, 16
  %24 = add nsw i32 %23, 4
  %25 = call i32 @memset(%struct.fc_prlo_s* %21, i32 0, i32 %24)
  %26 = load i32, i32* @FC_ELS_PRLO, align 4
  %27 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %28 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %30 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 %31, 16
  %33 = add nsw i32 %32, 4
  %34 = call i32 @cpu_to_be16(i32 %33)
  %35 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %36 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %78, %5
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %37
  %42 = load i32, i32* @FC_TYPE_FCP, align 4
  %43 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %44 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  store i32 %42, i32* %49, align 8
  %50 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %51 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %58 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %65 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %72 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %41
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %37

81:                                               ; preds = %37
  %82 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %11, align 8
  %83 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @be16_to_cpu(i32 %84)
  ret i32 %85
}

declare dso_local i32 @fc_els_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.fc_prlo_s*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
