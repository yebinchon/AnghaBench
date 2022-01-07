; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ECR_F_EMPTY = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*, i64)* @parport_ip32_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ip32_drain_fifo(%struct.parport* %0, i64 %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %12, 40
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load %struct.parport*, %struct.parport** %3, align 8
  %16 = call i32 @parport_ip32_read_econtrol(%struct.parport* %15)
  %17 = load i32, i32* @ECR_F_EMPTY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %37

21:                                               ; preds = %14
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @time_after(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %37

27:                                               ; preds = %21
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @signal_pending(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %37

32:                                               ; preds = %27
  %33 = call i32 @udelay(i32 5)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %31, %26, %20, %11
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %64, %37
  %39 = load %struct.parport*, %struct.parport** %3, align 8
  %40 = call i32 @parport_ip32_read_econtrol(%struct.parport* %39)
  %41 = load i32, i32* @ECR_F_EMPTY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @time_after_eq(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %65

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @msleep_interruptible(i32 %52)
  %54 = load i32, i32* @current, align 4
  %55 = call i64 @signal_pending(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %65

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = icmp ult i32 %59, 128
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = mul i32 %62, 2
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %38

65:                                               ; preds = %57, %50, %38
  %66 = load %struct.parport*, %struct.parport** %3, align 8
  %67 = call i32 @parport_ip32_read_econtrol(%struct.parport* %66)
  %68 = load i32, i32* @ECR_F_EMPTY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  ret i32 %73
}

declare dso_local i32 @parport_ip32_read_econtrol(%struct.parport*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
