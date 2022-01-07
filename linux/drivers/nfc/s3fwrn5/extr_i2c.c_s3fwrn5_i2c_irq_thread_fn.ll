; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fwrn5_i2c_phy = type { i32, i32, i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3fwrn5_i2c_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_i2c_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s3fwrn5_i2c_phy*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.s3fwrn5_i2c_phy*
  store %struct.s3fwrn5_i2c_phy* %9, %struct.s3fwrn5_i2c_phy** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %11 = icmp ne %struct.s3fwrn5_i2c_phy* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %14 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %2
  %18 = call i32 @WARN_ON_ONCE(i32 1)
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %12
  %21 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %22 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %25 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %31 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %39 [
    i32 128, label %33
    i32 129, label %33
    i32 130, label %36
  ]

33:                                               ; preds = %29, %29
  %34 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %35 = call i32 @s3fwrn5_i2c_read(%struct.s3fwrn5_i2c_phy* %34)
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EREMOTEIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %29, %36, %33
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %42 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s3fwrn5_i2c_read(%struct.s3fwrn5_i2c_phy*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
