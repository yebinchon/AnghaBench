; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_err_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_err_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_spi = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic32_spi*, i8*)* @pic32_err_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_err_stop(%struct.pic32_spi* %0, i8* %1) #0 {
  %3 = alloca %struct.pic32_spi*, align 8
  %4 = alloca i8*, align 8
  store %struct.pic32_spi* %0, %struct.pic32_spi** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %6 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @disable_irq_nosync(i32 %7)
  %9 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %10 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @disable_irq_nosync(i32 %11)
  %13 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %14 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @disable_irq_nosync(i32 %15)
  %17 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %18 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %24 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %33 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %2
  %39 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %40 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %39, i32 0, i32 0
  %41 = call i32 @complete(i32* %40)
  ret void
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
