; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_fw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i64, i32*, i64, i64, i64, i64, i32*, %struct.TYPE_4__, i64, i32*, %struct.TYPE_3__*, %struct.fwdt* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.fwdt = type { i64, i32* }

@FCE_SIZE = common dso_local global i32 0, align 4
@EFT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla2x00_free_fw_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_free_fw_dump(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca %struct.fwdt*, align 8
  %4 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %5 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %6 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %5, i32 0, i32 11
  %7 = load %struct.fwdt*, %struct.fwdt** %6, align 8
  store %struct.fwdt* %7, %struct.fwdt** %3, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %9 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %8, i32 0, i32 9
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* @FCE_SIZE, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 9
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_free_coherent(i32* %16, i32 %17, i32* %20, i64 %23)
  br label %25

25:                                               ; preds = %12, %1
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 10
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* @EFT_SIZE, align 4
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %37 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dma_free_coherent(i32* %34, i32 %35, i32* %38, i64 %41)
  br label %43

43:                                               ; preds = %30, %25
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @vfree(i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 9
  store i32* null, i32** %55, align 8
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 8
  store i64 0, i64* %57, align 8
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 6
  store i32* null, i32** %62, align 8
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %74 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %93, %53
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = load %struct.fwdt*, %struct.fwdt** %3, align 8
  %80 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.fwdt*, %struct.fwdt** %3, align 8
  %85 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @vfree(i32* %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.fwdt*, %struct.fwdt** %3, align 8
  %90 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.fwdt*, %struct.fwdt** %3, align 8
  %92 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  %96 = load %struct.fwdt*, %struct.fwdt** %3, align 8
  %97 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %96, i32 1
  store %struct.fwdt* %97, %struct.fwdt** %3, align 8
  br label %75

98:                                               ; preds = %75
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
