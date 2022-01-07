; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_compat32.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_compat32.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @comedi_compat_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %45 [
    i32 135, label %9
    i32 134, label %9
    i32 129, label %9
    i32 138, label %9
    i32 137, label %9
    i32 133, label %16
    i32 128, label %16
    i32 136, label %16
    i32 132, label %16
    i32 131, label %16
    i32 130, label %16
    i32 144, label %21
    i32 139, label %25
    i32 143, label %29
    i32 142, label %33
    i32 140, label %37
    i32 141, label %41
  ]

9:                                                ; preds = %3, %3, %3, %3, %3
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @compat_ptr(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @translated_ioctl(%struct.file* %12, i32 %13, i64 %14)
  store i32 %15, i32* %7, align 4
  br label %48

16:                                               ; preds = %3, %3, %3, %3, %3, %3
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @translated_ioctl(%struct.file* %17, i32 %18, i64 %19)
  store i32 %20, i32* %7, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @compat_chaninfo(%struct.file* %22, i64 %23)
  store i32 %24, i32* %7, align 4
  br label %48

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @compat_rangeinfo(%struct.file* %26, i64 %27)
  store i32 %28, i32* %7, align 4
  br label %48

29:                                               ; preds = %3
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @compat_cmd(%struct.file* %30, i64 %31)
  store i32 %32, i32* %7, align 4
  br label %48

33:                                               ; preds = %3
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @compat_cmdtest(%struct.file* %34, i64 %35)
  store i32 %36, i32* %7, align 4
  br label %48

37:                                               ; preds = %3
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @compat_insnlist(%struct.file* %38, i64 %39)
  store i32 %40, i32* %7, align 4
  br label %48

41:                                               ; preds = %3
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @compat_insn(%struct.file* %42, i64 %43)
  store i32 %44, i32* %7, align 4
  br label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @ENOIOCTLCMD, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %41, %37, %33, %29, %25, %21, %16, %9
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  ret i64 %50
}

declare dso_local i64 @compat_ptr(i64) #1

declare dso_local i32 @translated_ioctl(%struct.file*, i32, i64) #1

declare dso_local i32 @compat_chaninfo(%struct.file*, i64) #1

declare dso_local i32 @compat_rangeinfo(%struct.file*, i64) #1

declare dso_local i32 @compat_cmd(%struct.file*, i64) #1

declare dso_local i32 @compat_cmdtest(%struct.file*, i64) #1

declare dso_local i32 @compat_insnlist(%struct.file*, i64) #1

declare dso_local i32 @compat_insn(%struct.file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
