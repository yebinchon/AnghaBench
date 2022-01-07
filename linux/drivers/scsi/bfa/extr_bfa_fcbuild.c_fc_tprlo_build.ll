; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_tprlo_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_tprlo_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_tprlo_s = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64, i64, i32 }

@FC_ELS_TPRLO = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@FC_GLOBAL_LOGO = common dso_local global i32 0, align 4
@FC_TPR_LOGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_tprlo_build(%struct.fchs_s* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fchs_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fc_tprlo_s*, align 8
  %16 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.fchs_s*, %struct.fchs_s** %8, align 8
  %18 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %17, i64 1
  %19 = bitcast %struct.fchs_s* %18 to %struct.fc_tprlo_s*
  store %struct.fc_tprlo_s* %19, %struct.fc_tprlo_s** %15, align 8
  %20 = load %struct.fchs_s*, %struct.fchs_s** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @fc_els_req_build(%struct.fchs_s* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %26, 16
  %28 = add nsw i32 %27, 4
  %29 = call i32 @memset(%struct.fc_tprlo_s* %25, i32 0, i32 %28)
  %30 = load i32, i32* @FC_ELS_TPRLO, align 4
  %31 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %32 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %34 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %33, i32 0, i32 0
  store i32 16, i32* %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = mul nsw i32 %35, 16
  %37 = add nsw i32 %36, 4
  %38 = call i32 @cpu_to_be16(i32 %37)
  %39 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %40 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %115, %7
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %118

45:                                               ; preds = %41
  %46 = load i32, i32* @FC_TYPE_FCP, align 4
  %47 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %48 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  store i32 %46, i32* %53, align 8
  %54 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %55 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %62 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %69 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %76 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @FC_GLOBAL_LOGO, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %45
  %86 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %87 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %114

93:                                               ; preds = %45
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @FC_TPR_LOGO, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %99 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %107 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i32 %105, i32* %112, align 8
  br label %113

113:                                              ; preds = %97, %93
  br label %114

114:                                              ; preds = %113, %85
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %41

118:                                              ; preds = %41
  %119 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %15, align 8
  %120 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be16_to_cpu(i32 %121)
  ret i32 %122
}

declare dso_local i32 @fc_els_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.fc_tprlo_s*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
