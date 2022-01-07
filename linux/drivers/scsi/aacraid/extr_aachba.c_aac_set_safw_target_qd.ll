; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_set_safw_target_qd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_set_safw_target_qd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32, %struct.aac_ciss_identify_pd* }
%struct.aac_ciss_identify_pd = type { i32 }

@AAC_DEVTYPE_NATIVE_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, i32, i32)* @aac_set_safw_target_qd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_set_safw_target_qd(%struct.aac_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aac_ciss_identify_pd*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %9 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AAC_DEVTYPE_NATIVE_RAW, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %87

23:                                               ; preds = %3
  %24 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %25 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %34, align 8
  store %struct.aac_ciss_identify_pd* %35, %struct.aac_ciss_identify_pd** %7, align 8
  %36 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %7, align 8
  %37 = icmp eq %struct.aac_ciss_identify_pd* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %23
  %39 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %40 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 32, i32* %49, align 8
  br label %87

50:                                               ; preds = %23
  %51 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %7, align 8
  %52 = getelementptr inbounds %struct.aac_ciss_identify_pd, %struct.aac_ciss_identify_pd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %7, align 8
  %57 = getelementptr inbounds %struct.aac_ciss_identify_pd, %struct.aac_ciss_identify_pd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 255
  br i1 %59, label %60, label %72

60:                                               ; preds = %55, %50
  %61 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %62 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 32, i32* %71, align 8
  br label %87

72:                                               ; preds = %55
  %73 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %7, align 8
  %74 = getelementptr inbounds %struct.aac_ciss_identify_pd, %struct.aac_ciss_identify_pd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %77 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %75, i32* %86, align 8
  br label %87

87:                                               ; preds = %22, %38, %72, %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
