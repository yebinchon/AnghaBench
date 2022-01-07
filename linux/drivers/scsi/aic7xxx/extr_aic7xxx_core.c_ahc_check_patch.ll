; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_check_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_check_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i64, i64 (%struct.ahc_softc.0*)*, i64, i32 }
%struct.ahc_softc.0 = type opaque
%struct.ahc_softc = type { i32 }

@patches = common dso_local global %struct.patch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*, %struct.patch**, i64, i64*)* @ahc_check_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_check_patch(%struct.ahc_softc* %0, %struct.patch** %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.patch**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.patch*, align 8
  %11 = alloca %struct.patch*, align 8
  %12 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %6, align 8
  store %struct.patch** %1, %struct.patch*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.patch*, %struct.patch** @patches, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.patch* %13)
  store i64 %14, i64* %12, align 8
  %15 = load %struct.patch*, %struct.patch** @patches, align 8
  %16 = load i64, i64* %12, align 8
  %17 = getelementptr inbounds %struct.patch, %struct.patch* %15, i64 %16
  store %struct.patch* %17, %struct.patch** %11, align 8
  %18 = load %struct.patch**, %struct.patch*** %7, align 8
  %19 = load %struct.patch*, %struct.patch** %18, align 8
  store %struct.patch* %19, %struct.patch** %10, align 8
  br label %20

20:                                               ; preds = %56, %4
  %21 = load %struct.patch*, %struct.patch** %10, align 8
  %22 = load %struct.patch*, %struct.patch** %11, align 8
  %23 = icmp ult %struct.patch* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.patch*, %struct.patch** %10, align 8
  %27 = getelementptr inbounds %struct.patch, %struct.patch* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i1 [ false, %20 ], [ %29, %24 ]
  br i1 %31, label %32, label %57

32:                                               ; preds = %30
  %33 = load %struct.patch*, %struct.patch** %10, align 8
  %34 = getelementptr inbounds %struct.patch, %struct.patch* %33, i32 0, i32 1
  %35 = load i64 (%struct.ahc_softc.0*)*, i64 (%struct.ahc_softc.0*)** %34, align 8
  %36 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %37 = bitcast %struct.ahc_softc* %36 to %struct.ahc_softc.0*
  %38 = call i64 %35(%struct.ahc_softc.0* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.patch*, %struct.patch** %10, align 8
  %43 = getelementptr inbounds %struct.patch, %struct.patch* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.patch*, %struct.patch** %10, align 8
  %48 = getelementptr inbounds %struct.patch, %struct.patch* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.patch*, %struct.patch** %10, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.patch, %struct.patch* %50, i64 %51
  store %struct.patch* %52, %struct.patch** %10, align 8
  br label %56

53:                                               ; preds = %32
  %54 = load %struct.patch*, %struct.patch** %10, align 8
  %55 = getelementptr inbounds %struct.patch, %struct.patch* %54, i32 1
  store %struct.patch* %55, %struct.patch** %10, align 8
  br label %56

56:                                               ; preds = %53, %40
  br label %20

57:                                               ; preds = %30
  %58 = load %struct.patch*, %struct.patch** %10, align 8
  %59 = load %struct.patch**, %struct.patch*** %7, align 8
  store %struct.patch* %58, %struct.patch** %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %66

65:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @ARRAY_SIZE(%struct.patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
