; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_detect_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_detect_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32 }

@BQ2415X_REVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*)* @bq2415x_detect_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_detect_revision(%struct.bq2415x_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq2415x_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %3, align 8
  %6 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %7 = load i32, i32* @BQ2415X_REVISION, align 4
  %8 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %10 = call i32 @bq2415x_detect_chip(%struct.bq2415x_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %1
  store i32 -1, i32* %2, align 4
  br label %45

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %44 [
    i32 140, label %19
    i32 139, label %19
    i32 138, label %19
    i32 137, label %19
    i32 136, label %19
    i32 135, label %28
    i32 134, label %28
    i32 132, label %28
    i32 131, label %28
    i32 130, label %28
    i32 129, label %28
    i32 133, label %38
    i32 128, label %43
  ]

19:                                               ; preds = %17, %17, %17, %17, %17
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %22, %19
  store i32 -1, i32* %2, align 4
  br label %45

28:                                               ; preds = %17, %17, %17, %17, %17, %17
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %45

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %45

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %45

38:                                               ; preds = %17
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 3, i32* %2, align 4
  br label %45

42:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %45

43:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %45

44:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %42, %41, %37, %35, %31, %27, %25, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @bq2415x_exec_command(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @bq2415x_detect_chip(%struct.bq2415x_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
