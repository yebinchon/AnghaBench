; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/extr_vsoc.c_vsoc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/extr_vsoc.c_vsoc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.vsoc_region_data*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.vsoc_region_data = type { i32 }
%struct.TYPE_4__ = type { i32 }

@vsoc_dev = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid irq @%p reg_num=0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"irq not aligned @%p reg_num=0x%04x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vsoc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsoc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vsoc_region_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.vsoc_region_data*
  store %struct.vsoc_region_data* %9, %struct.vsoc_region_data** %6, align 8
  %10 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %6, align 8
  %11 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vsoc_dev, i32 0, i32 1), align 8
  %12 = ptrtoint %struct.vsoc_region_data* %10 to i64
  %13 = ptrtoint %struct.vsoc_region_data* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %6, align 8
  %18 = icmp ne %struct.vsoc_region_data* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vsoc_dev, i32 0, i32 2), align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ true, %25 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vsoc_dev, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.vsoc_region_data* %42, i32 %43)
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %34
  %47 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vsoc_dev, i32 0, i32 1), align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.vsoc_region_data, %struct.vsoc_region_data* %47, i64 %49
  %51 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %6, align 8
  %52 = icmp ne %struct.vsoc_region_data* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vsoc_dev, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.vsoc_region_data* %59, i32 %60)
  %62 = load i32, i32* @IRQ_NONE, align 4
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %46
  %64 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %6, align 8
  %65 = getelementptr inbounds %struct.vsoc_region_data, %struct.vsoc_region_data* %64, i32 0, i32 0
  %66 = call i32 @wake_up_interruptible(i32* %65)
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %56, %39, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.vsoc_region_data*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
