; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_alloc_tstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_alloc_tstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_tmode_tstate = type { %struct.TYPE_2__*, %struct.ahd_tmode_tstate* }
%struct.TYPE_2__ = type { %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate }
%struct.ahd_softc = type { i64, %struct.ahd_tmode_tstate** }

@.str = private unnamed_addr constant [48 x i8] c"%s: ahd_alloc_tstate - Target already allocated\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ahd_tmode_tstate* (%struct.ahd_softc*, i64, i8)* @ahd_alloc_tstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ahd_tmode_tstate* @ahd_alloc_tstate(%struct.ahd_softc* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca %struct.ahd_tmode_tstate*, align 8
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.ahd_tmode_tstate*, align 8
  %9 = alloca %struct.ahd_tmode_tstate*, align 8
  %10 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %11, i32 0, i32 1
  %13 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %12, align 8
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %13, i64 %16
  %18 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %17, align 8
  store %struct.ahd_tmode_tstate* %18, %struct.ahd_tmode_tstate** %8, align 8
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 1
  %21 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %21, i64 %22
  %24 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %23, align 8
  %25 = icmp ne %struct.ahd_tmode_tstate* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 1
  %29 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %29, i64 %30
  %32 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %31, align 8
  %33 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %8, align 8
  %34 = icmp ne %struct.ahd_tmode_tstate* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %37 = call i32 @ahd_name(%struct.ahd_softc* %36)
  %38 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %26, %3
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.ahd_tmode_tstate* @kmalloc(i32 16, i32 %40)
  store %struct.ahd_tmode_tstate* %41, %struct.ahd_tmode_tstate** %9, align 8
  %42 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %43 = icmp eq %struct.ahd_tmode_tstate* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.ahd_tmode_tstate* null, %struct.ahd_tmode_tstate** %4, align 8
  br label %91

45:                                               ; preds = %39
  %46 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %8, align 8
  %47 = icmp ne %struct.ahd_tmode_tstate* %46, null
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %50 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %8, align 8
  %51 = call i32 @memcpy(%struct.ahd_tmode_tstate* %49, %struct.ahd_tmode_tstate* %50, i32 16)
  %52 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %53 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %52, i32 0, i32 1
  %54 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %53, align 8
  %55 = call i32 @memset(%struct.ahd_tmode_tstate* %54, i32 0, i32 8)
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %76, %48
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 16
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %61 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = call i32 @memset(%struct.ahd_tmode_tstate* %66, i32 0, i32 16)
  %68 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %69 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @memset(%struct.ahd_tmode_tstate* %74, i32 0, i32 16)
  br label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %56

79:                                               ; preds = %56
  br label %83

80:                                               ; preds = %45
  %81 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %82 = call i32 @memset(%struct.ahd_tmode_tstate* %81, i32 0, i32 16)
  br label %83

83:                                               ; preds = %80, %79
  %84 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %85, i32 0, i32 1
  %87 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %87, i64 %88
  store %struct.ahd_tmode_tstate* %84, %struct.ahd_tmode_tstate** %89, align 8
  %90 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  store %struct.ahd_tmode_tstate* %90, %struct.ahd_tmode_tstate** %4, align 8
  br label %91

91:                                               ; preds = %83, %44
  %92 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %4, align 8
  ret %struct.ahd_tmode_tstate* %92
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local %struct.ahd_tmode_tstate* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate*, i32) #1

declare dso_local i32 @memset(%struct.ahd_tmode_tstate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
