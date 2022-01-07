; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_ieee1284.c_parport_wait_peripheral.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_ieee1284.c_parport_wait_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parport_wait_peripheral(%struct.parport* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %12 = load %struct.parport*, %struct.parport** %5, align 8
  %13 = getelementptr inbounds %struct.parport, %struct.parport* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.parport*, %struct.parport** %5, align 8
  %18 = getelementptr inbounds %struct.parport, %struct.parport* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 35000, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.parport*, %struct.parport** %5, align 8
  %28 = load i8, i8* %6, align 1
  %29 = load i8, i8* %7, align 1
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @parport_poll_peripheral(%struct.parport* %27, i8 zeroext %28, i8 zeroext %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %26
  %37 = load %struct.parport*, %struct.parport** %5, align 8
  %38 = getelementptr inbounds %struct.parport, %struct.parport* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %89

46:                                               ; preds = %36
  %47 = load i64, i64* @jiffies, align 8
  %48 = call i64 @msecs_to_jiffies(i32 40)
  %49 = add i64 %47, %48
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %87, %46
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @time_before(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %50
  %56 = load i32, i32* @current, align 4
  %57 = call i64 @signal_pending(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINTR, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %89

62:                                               ; preds = %55
  %63 = load %struct.parport*, %struct.parport** %5, align 8
  %64 = call i64 @msecs_to_jiffies(i32 10)
  %65 = call i32 @parport_wait_event(%struct.parport* %63, i64 %64)
  store i32 %65, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %89

69:                                               ; preds = %62
  %70 = load %struct.parport*, %struct.parport** %5, align 8
  %71 = call zeroext i8 @parport_read_status(%struct.parport* %70)
  store i8 %71, i8* %11, align 1
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %6, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %73, %75
  %77 = load i8, i8* %7, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %89

81:                                               ; preds = %69
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = call i64 @msecs_to_jiffies(i32 10)
  %86 = call i32 @schedule_timeout_interruptible(i64 %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %50

88:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %80, %67, %59, %45, %34
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @parport_poll_peripheral(%struct.parport*, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @parport_wait_event(%struct.parport*, i64) #1

declare dso_local zeroext i8 @parport_read_status(%struct.parport*) #1

declare dso_local i32 @schedule_timeout_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
