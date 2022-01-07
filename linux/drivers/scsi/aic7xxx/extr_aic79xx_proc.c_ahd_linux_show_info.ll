; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_linux_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_linux_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.ahd_softc = type { i8*, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Adaptec AIC79xx driver version: %s\0A\00", align 1
@AIC79XX_DRIVER_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Allocated SCBs: %d, SG List Length: %d\0A\0A\00", align 1
@AHD_NSEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"No Serial EEPROM\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Serial EEPROM:\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%.4x \00", align 1
@AHD_WIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_linux_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ahd_softc**
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  store %struct.ahd_softc* %13, %struct.ahd_softc** %5, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load i8*, i8** @AIC79XX_DRIVER_VERSION, align 8
  %16 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %24 = call i32 @ahd_controller_info(%struct.ahd_softc* %22, i8* %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32, i32* @AHD_NSEG, align 4
  %36 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %35)
  store i32 16, i32* %7, align 4
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %38 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %78

44:                                               ; preds = %2
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = call i32 @seq_puts(%struct.seq_file* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %72, %44
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 2
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = srem i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = call i32 @seq_putc(%struct.seq_file* %59, i8 signext 10)
  br label %61

61:                                               ; preds = %58, %55, %51
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %64 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8**
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %47

75:                                               ; preds = %47
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = call i32 @seq_putc(%struct.seq_file* %76, i8 signext 10)
  br label %78

78:                                               ; preds = %75, %41
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = call i32 @seq_putc(%struct.seq_file* %79, i8 signext 10)
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %82 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AHD_WIDE, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 8, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %78
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %97 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ahd_dump_target_state(%struct.ahd_softc* %94, %struct.seq_file* %95, i32 %98, i8 signext 65, i32 %99)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %89

104:                                              ; preds = %89
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @ahd_controller_info(%struct.ahd_softc*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @ahd_dump_target_state(%struct.ahd_softc*, %struct.seq_file*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
