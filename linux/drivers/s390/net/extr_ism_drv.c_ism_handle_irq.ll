; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64*, i64, i32* }

@ISM_DMB_WORD_OFFSET = common dso_local global i64 0, align 8
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@ISM_DMB_BIT_OFFSET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ism_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ism_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ism_dev*
  store %struct.ism_dev* %10, %struct.ism_dev** %5, align 8
  %11 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @ISM_DMB_WORD_OFFSET, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %8, align 8
  %20 = load i32, i32* @BITS_PER_BYTE, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = load i32, i32* @ISM_DMB_BIT_OFFSET, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %22, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %27 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %30 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = call i32 (...) @barrier()
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %43, %2
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @find_next_bit_inv(i64* %35, i64 %36, i64 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %66

43:                                               ; preds = %34
  %44 = load i64, i64* %6, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = call i32 @clear_bit_inv(i64 %44, i64* %45)
  %47 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %48 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @ISM_DMB_BIT_OFFSET, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = getelementptr inbounds i64, i64* %51, i64 %55
  store i64 0, i64* %56, align 8
  %57 = call i32 (...) @barrier()
  %58 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %59 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* @ISM_DMB_BIT_OFFSET, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = call i32 @smcd_handle_irq(i32 %60, i64 %64)
  br label %34

66:                                               ; preds = %42
  %67 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %68 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %75 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = call i32 (...) @barrier()
  %79 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %80 = call i32 @ism_handle_event(%struct.ism_dev* %79)
  br label %81

81:                                               ; preds = %73, %66
  %82 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %83 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @find_next_bit_inv(i64*, i64, i64) #1

declare dso_local i32 @clear_bit_inv(i64, i64*) #1

declare dso_local i32 @smcd_handle_irq(i32, i64) #1

declare dso_local i32 @ism_handle_event(%struct.ism_dev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
