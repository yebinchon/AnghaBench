; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_pic_call1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_pic_call1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@spic_dev = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ITERATIONS_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sony_pic_call1(0x%.2x): 0x%.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sony_pic_call1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_pic_call1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spic_dev, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 4
  %10 = call i32 @inb_p(i64 %9)
  %11 = and i32 %10, 2
  %12 = load i32, i32* @ITERATIONS_LONG, align 4
  %13 = call i32 @wait_on_command(i32 %11, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spic_dev, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 4
  %20 = call i32 @outb(i32 %14, i64 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spic_dev, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 4
  %26 = call i32 @inb_p(i64 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spic_dev, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @inb_p(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @wait_on_command(i32, i32) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
