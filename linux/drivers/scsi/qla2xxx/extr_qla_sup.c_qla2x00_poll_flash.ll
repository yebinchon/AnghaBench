; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_poll_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_poll_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@BIT_7 = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32, i32, i32, i32)* @qla2x00_poll_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_poll_flash(%struct.qla_hw_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %14 = load i32, i32* @BIT_7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %8, align 4
  store i32 3000000, i32* %13, align 4
  br label %17

17:                                               ; preds = %50, %5
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @BIT_7, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %53

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 64
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 218
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @BIT_5, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = icmp sgt i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 2, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %41, %36
  br label %46

46:                                               ; preds = %45, %33, %30
  %47 = call i32 @udelay(i32 10)
  %48 = call i32 (...) @barrier()
  %49 = call i32 (...) @cond_resched()
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %13, align 4
  br label %17

53:                                               ; preds = %29, %17
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

declare dso_local i32 @qla2x00_read_flash_byte(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
