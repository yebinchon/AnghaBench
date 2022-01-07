; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscTestExternalLram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscTestExternalLram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @AscTestExternalLram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscTestExternalLram(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %10 = call i32 @ASC_QNO_TO_QADDR(i32 241)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @AscReadLramWord(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @AscSetChipLramAddr(i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @AscSetChipLramData(i32 %17, i32 21930)
  %19 = call i32 @mdelay(i32 10)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @AscSetChipLramAddr(i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @AscGetChipLramData(i32 %23)
  %25 = icmp eq i32 %24, 21930
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @AscWriteLramWord(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @ASC_QNO_TO_QADDR(i32) #1

declare dso_local i32 @AscReadLramWord(i32, i32) #1

declare dso_local i32 @AscSetChipLramAddr(i32, i32) #1

declare dso_local i32 @AscSetChipLramData(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @AscGetChipLramData(i32) #1

declare dso_local i32 @AscWriteLramWord(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
