; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_mmcie_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_mmcie_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 (%struct.wusbhc*, i32, i32, i32, %struct.wuie_hdr*)*, i32, %struct.wuie_hdr.0**, i32, i32 }
%struct.wuie_hdr = type opaque
%struct.wuie_hdr.0 = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Special ordering case for WUIE ID 0x%x unimplemented\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_mmcie_set(%struct.wusbhc* %0, i32 %1, i32 %2, %struct.wuie_hdr.0* %3) #0 {
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wuie_hdr.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.wuie_hdr.0* %3, %struct.wuie_hdr.0** %8, align 8
  %12 = load i32, i32* @ENOBUFS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %8, align 8
  %18 = getelementptr inbounds %struct.wuie_hdr.0, %struct.wuie_hdr.0* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 129, label %20
    i32 128, label %25
  ]

20:                                               ; preds = %4
  %21 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %22 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %75

25:                                               ; preds = %4
  %26 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %27 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %8, align 8
  %30 = getelementptr inbounds %struct.wuie_hdr.0, %struct.wuie_hdr.0* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENOSYS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %97

35:                                               ; preds = %4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %67, %35
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %39 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %36
  %44 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %45 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %44, i32 0, i32 2
  %46 = load %struct.wuie_hdr.0**, %struct.wuie_hdr.0*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %46, i64 %48
  %50 = load %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %49, align 8
  %51 = load %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %8, align 8
  %52 = icmp eq %struct.wuie_hdr.0* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %10, align 4
  br label %70

55:                                               ; preds = %43
  %56 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %57 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %56, i32 0, i32 2
  %58 = load %struct.wuie_hdr.0**, %struct.wuie_hdr.0*** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %58, i64 %60
  %62 = load %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %61, align 8
  %63 = icmp eq %struct.wuie_hdr.0* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %36

70:                                               ; preds = %53, %36
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %97

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %20
  %76 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %77 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %76, i32 0, i32 0
  %78 = load i32 (%struct.wusbhc*, i32, i32, i32, %struct.wuie_hdr*)*, i32 (%struct.wusbhc*, i32, i32, i32, %struct.wuie_hdr*)** %77, align 8
  %79 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %8, align 8
  %84 = bitcast %struct.wuie_hdr.0* %83 to %struct.wuie_hdr*
  %85 = call i32 %78(%struct.wusbhc* %79, i32 %80, i32 %81, i32 %82, %struct.wuie_hdr* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %8, align 8
  %90 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %91 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %90, i32 0, i32 2
  %92 = load %struct.wuie_hdr.0**, %struct.wuie_hdr.0*** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.wuie_hdr.0*, %struct.wuie_hdr.0** %92, i64 %94
  store %struct.wuie_hdr.0* %89, %struct.wuie_hdr.0** %95, align 8
  br label %96

96:                                               ; preds = %88, %75
  br label %97

97:                                               ; preds = %96, %73, %25
  %98 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %99 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
