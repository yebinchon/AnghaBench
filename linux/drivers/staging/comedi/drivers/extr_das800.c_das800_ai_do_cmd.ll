; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_do_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, i64, %struct.das800_board* }
%struct.das800_board = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32* }

@SCAN_LIMITS = common dso_local global i32 0, align 4
@DAS800_GAIN = common dso_local global i64 0, align 8
@EACS = common dso_local global i32 0, align 4
@IEOC = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@DTEN = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@CASC = common dso_local global i32 0, align 4
@ITE = common dso_local global i32 0, align 4
@CONV_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das800_ai_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_ai_do_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.das800_board*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 3
  %16 = load %struct.das800_board*, %struct.das800_board** %15, align 8
  store %struct.das800_board* %16, %struct.das800_board** %5, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.comedi_async*, %struct.comedi_async** %18, align 8
  store %struct.comedi_async* %19, %struct.comedi_async** %6, align 8
  %20 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 0
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %7, align 8
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_RANGE(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_CHAN(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add i32 %34, %37
  %39 = sub i32 %38, 1
  %40 = urem i32 %39, 8
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 %41, 3
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = call i32 @das800_disable(%struct.comedi_device* %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @SCAN_LIMITS, align 4
  %54 = call i32 @das800_ind_write(%struct.comedi_device* %51, i32 %52, i32 %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.das800_board*, %struct.das800_board** %5, align 8
  %60 = getelementptr inbounds %struct.das800_board, %struct.das800_board* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 12
  br i1 %62, label %63, label %69

63:                                               ; preds = %2
  %64 = load i32, i32* %8, align 4
  %65 = icmp ugt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 7
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %63, %2
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 15
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DAS800_GAIN, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 %72, i64 %77)
  store i32 0, i32* %12, align 4
  %79 = load i32, i32* @EACS, align 4
  %80 = load i32, i32* @IEOC, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %12, align 4
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TRIG_EXT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %69
  %90 = load i32, i32* @DTEN, align 4
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %89, %69
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TRIG_TIMER, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = load i32, i32* @CASC, align 4
  %101 = load i32, i32* @ITE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %106 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @comedi_8254_update_divisors(i32 %107)
  %109 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @comedi_8254_pacer_enable(i32 %111, i32 1, i32 2, i32 1)
  br label %113

113:                                              ; preds = %99, %93
  %114 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 0
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @CONV_CONTROL, align 4
  %121 = call i32 @das800_ind_write(%struct.comedi_device* %118, i32 %119, i32 %120)
  %122 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %13, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %127 = call i32 @das800_enable(%struct.comedi_device* %126)
  ret i32 0
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @das800_disable(%struct.comedi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @das800_ind_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @das800_enable(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
