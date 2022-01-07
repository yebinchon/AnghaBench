; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_read_seeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_read_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@SEEADR = common dso_local global i32 0, align 4
@SEECTL = common dso_local global i32 0, align 4
@SEEOP_READ = common dso_local global i64 0, align 8
@SEESTART = common dso_local global i64 0, align 8
@SEEDAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_read_seeprom(%struct.ahd_softc* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %17 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %18 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %19 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %16, i32 %17, i32 %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %11, align 8
  br label %24

24:                                               ; preds = %68, %5
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %30 = load i32, i32* @SEEADR, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @ahd_outb(%struct.ahd_softc* %29, i32 %30, i64 %31)
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %34 = load i32, i32* @SEECTL, align 4
  %35 = load i64, i64* @SEEOP_READ, align 8
  %36 = load i64, i64* @SEESTART, align 8
  %37 = or i64 %35, %36
  %38 = call i32 @ahd_outb(%struct.ahd_softc* %33, i32 %34, i64 %37)
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %40 = call i32 @ahd_wait_seeprom(%struct.ahd_softc* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %71

44:                                               ; preds = %28
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = bitcast i32* %48 to i8**
  store i8** %49, i8*** %14, align 8
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %51 = load i64, i64* @SEEDAT, align 8
  %52 = call i8* @ahd_inb(%struct.ahd_softc* %50, i64 %51)
  %53 = load i8**, i8*** %14, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %14, align 8
  store i8* %52, i8** %53, align 8
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %56 = load i64, i64* @SEEDAT, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i8* @ahd_inb(%struct.ahd_softc* %55, i64 %57)
  %59 = load i8**, i8*** %14, align 8
  store i8* %58, i8** %59, align 8
  br label %65

60:                                               ; preds = %44
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %62 = load i64, i64* @SEEDAT, align 8
  %63 = call i32 @ahd_inw(%struct.ahd_softc* %61, i64 %62)
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %47
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %24

71:                                               ; preds = %43, %24
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i64) #1

declare dso_local i32 @ahd_wait_seeprom(%struct.ahd_softc*) #1

declare dso_local i8* @ahd_inb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
