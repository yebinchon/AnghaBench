; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_linux_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_linux_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.ahc_softc = type { i8*, i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Adaptec AIC7xxx driver version: %s\0A\00", align 1
@AIC7XXX_DRIVER_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Allocated SCBs: %d, SG List Length: %d\0A\0A\00", align 1
@AHC_NSEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"No Serial EEPROM\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Serial EEPROM:\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%.4x \00", align 1
@AHC_WIDE = common dso_local global i32 0, align 4
@AHC_TWIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_linux_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ahc_softc**
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %15, align 8
  store %struct.ahc_softc* %16, %struct.ahc_softc** %5, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load i8*, i8** @AIC7XXX_DRIVER_VERSION, align 8
  %19 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %22 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = call i32 @ahc_controller_info(%struct.ahc_softc* %25, i8* %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %30 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = load i32, i32* @AHC_NSEG, align 4
  %40 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %39)
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 @seq_puts(%struct.seq_file* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %82

48:                                               ; preds = %2
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = call i32 @seq_puts(%struct.seq_file* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %76, %48
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 2
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = srem i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = call i32 @seq_putc(%struct.seq_file* %63, i8 signext 10)
  br label %65

65:                                               ; preds = %62, %59, %55
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to i8**
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %51

79:                                               ; preds = %51
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = call i32 @seq_putc(%struct.seq_file* %80, i8 signext 10)
  br label %82

82:                                               ; preds = %79, %45
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = call i32 @seq_putc(%struct.seq_file* %83, i8 signext 10)
  store i32 16, i32* %7, align 4
  %85 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AHC_WIDE, align 4
  %89 = load i32, i32* @AHC_TWIN, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32 8, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %82
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %127, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  store i8 65, i8* %11, align 1
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %101 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp sgt i32 %104, 7
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %108 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @AHC_TWIN, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  store i8 66, i8* %11, align 1
  %114 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %115 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = srem i32 %117, 8
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %113, %106, %99
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i8, i8* %11, align 1
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @ahc_dump_target_state(%struct.ahc_softc* %120, %struct.seq_file* %121, i32 %122, i8 signext %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %95

130:                                              ; preds = %95
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @ahc_controller_info(%struct.ahc_softc*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @ahc_dump_target_state(%struct.ahc_softc*, %struct.seq_file*, i32, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
