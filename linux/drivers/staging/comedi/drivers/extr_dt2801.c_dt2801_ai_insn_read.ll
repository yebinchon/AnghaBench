; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DT_C_READ_ADIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt2801_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2801_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %49, %4
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %13
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = load i32, i32* @DT_C_READ_ADIM, align 4
  %22 = call i32 @dt2801_writecmd(%struct.comedi_device* %20, i32 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_RANGE(i32 %26)
  %28 = call i32 @dt2801_writedata(%struct.comedi_device* %23, i32 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_CHAN(i32 %32)
  %34 = call i32 @dt2801_writedata(%struct.comedi_device* %29, i32 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = call i32 @dt2801_readdata2(%struct.comedi_device* %35, i32* %10)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %19
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @dt2801_error(%struct.comedi_device* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %54

43:                                               ; preds = %19
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %13

52:                                               ; preds = %13
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %39
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @dt2801_writecmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @dt2801_writedata(%struct.comedi_device*, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dt2801_readdata2(%struct.comedi_device*, i32*) #1

declare dso_local i32 @dt2801_error(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
