; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_conf_pin_config_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_conf_pin_config_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.atmel_pioctrl = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c" (%s, ioset %u) \00", align 1
@ATMEL_PIO_PUEN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pull-up\00", align 1
@ATMEL_PIO_PDEN_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"pull-down\00", align 1
@ATMEL_PIO_IFEN_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"debounce\00", align 1
@ATMEL_PIO_OPD_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"open-drain\00", align 1
@ATMEL_PIO_SCHMITT_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"schmitt\00", align 1
@ATMEL_PIO_DRVSTR_MASK = common dso_local global i32 0, align 4
@ATMEL_PIO_DRVSTR_OFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"medium-drive\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"high-drive\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"low-drive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @atmel_conf_pin_config_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_conf_pin_config_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_pioctrl*, align 8
  %8 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %10 = call %struct.atmel_pioctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %9)
  store %struct.atmel_pioctrl* %10, %struct.atmel_pioctrl** %7, align 8
  %11 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %12 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %118

22:                                               ; preds = %3
  %23 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %24 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %22
  %32 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %33 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %34 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %45 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %52)
  br label %54

54:                                               ; preds = %31, %22
  %55 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @atmel_pin_config_read(%struct.pinctrl_dev* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @ATMEL_PIO_PUEN_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %64 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @ATMEL_PIO_PDEN_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %72 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ATMEL_PIO_IFEN_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %80 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ATMEL_PIO_OPD_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %88 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @ATMEL_PIO_SCHMITT_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %96 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @ATMEL_PIO_DRVSTR_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ATMEL_PIO_DRVSTR_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @ATMEL_PIO_DRVSTR_OFFSET, align 4
  %107 = ashr i32 %105, %106
  switch i32 %107, label %114 [
    i32 128, label %108
    i32 129, label %111
  ]

108:                                              ; preds = %102
  %109 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %110 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %117

111:                                              ; preds = %102
  %112 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %113 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %117

114:                                              ; preds = %102
  %115 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %116 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %111, %108
  br label %118

118:                                              ; preds = %21, %117, %97
  ret void
}

declare dso_local %struct.atmel_pioctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @atmel_pin_config_read(%struct.pinctrl_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
