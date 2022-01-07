; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_chanspec_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_chanspec_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32 }

@UQEN = common dso_local global i8 0, align 1
@AREF_DIFF = common dso_local global i32 0, align 4
@SD = common dso_local global i8 0, align 1
@AREF_COMMON = common dso_local global i32 0, align 4
@CMEN = common dso_local global i8 0, align 1
@UB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.comedi_subdevice*, i32)* @das1800_ai_chanspec_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @das1800_ai_chanspec_bits(%struct.comedi_subdevice* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @CR_RANGE(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CR_AREF(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i8, i8* @UQEN, align 1
  store i8 %12, i8* %7, align 1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @AREF_DIFF, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8, i8* @SD, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  br label %23

23:                                               ; preds = %16, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AREF_COMMON, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i8, i8* @CMEN, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  br label %34

34:                                               ; preds = %27, %23
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i8, i8* @UB, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %7, align 1
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i8, i8* %7, align 1
  ret i8 %47
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i64 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
