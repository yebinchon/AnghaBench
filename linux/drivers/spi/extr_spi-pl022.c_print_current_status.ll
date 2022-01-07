; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_print_current_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_print_current_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"spi-pl022 CR0: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"spi-pl022 CR1: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"spi-pl022 DMACR: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"spi-pl022 SR: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"spi-pl022 exp_fifo_level/fifodepth: %u/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl022*)* @print_current_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_current_status(%struct.pl022* %0) #0 {
  %2 = alloca %struct.pl022*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pl022* %0, %struct.pl022** %2, align 8
  %7 = load %struct.pl022*, %struct.pl022** %2, align 8
  %8 = getelementptr inbounds %struct.pl022, %struct.pl022* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.pl022*, %struct.pl022** %2, align 8
  %15 = getelementptr inbounds %struct.pl022, %struct.pl022* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @SSP_CR0(i32 %16)
  %18 = call i8* @readl(i32 %17)
  store i8* %18, i8** %3, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.pl022*, %struct.pl022** %2, align 8
  %21 = getelementptr inbounds %struct.pl022, %struct.pl022* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @SSP_CR0(i32 %22)
  %24 = call i8* @readw(i32 %23)
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.pl022*, %struct.pl022** %2, align 8
  %27 = getelementptr inbounds %struct.pl022, %struct.pl022* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SSP_CR1(i32 %28)
  %30 = call i8* @readw(i32 %29)
  store i8* %30, i8** %4, align 8
  %31 = load %struct.pl022*, %struct.pl022** %2, align 8
  %32 = getelementptr inbounds %struct.pl022, %struct.pl022* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @SSP_DMACR(i32 %33)
  %35 = call i8* @readw(i32 %34)
  store i8* %35, i8** %5, align 8
  %36 = load %struct.pl022*, %struct.pl022** %2, align 8
  %37 = getelementptr inbounds %struct.pl022, %struct.pl022* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SSP_SR(i32 %38)
  %40 = call i8* @readw(i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = load %struct.pl022*, %struct.pl022** %2, align 8
  %42 = getelementptr inbounds %struct.pl022, %struct.pl022* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.pl022*, %struct.pl022** %2, align 8
  %49 = getelementptr inbounds %struct.pl022, %struct.pl022* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %4, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.pl022*, %struct.pl022** %2, align 8
  %56 = getelementptr inbounds %struct.pl022, %struct.pl022* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %5, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.pl022*, %struct.pl022** %2, align 8
  %63 = getelementptr inbounds %struct.pl022, %struct.pl022* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.pl022*, %struct.pl022** %2, align 8
  %70 = getelementptr inbounds %struct.pl022, %struct.pl022* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.pl022*, %struct.pl022** %2, align 8
  %74 = getelementptr inbounds %struct.pl022, %struct.pl022* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pl022*, %struct.pl022** %2, align 8
  %77 = getelementptr inbounds %struct.pl022, %struct.pl022* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %80)
  ret void
}

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @SSP_CR0(i32) #1

declare dso_local i8* @readw(i32) #1

declare dso_local i32 @SSP_CR1(i32) #1

declare dso_local i32 @SSP_DMACR(i32) #1

declare dso_local i32 @SSP_SR(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
