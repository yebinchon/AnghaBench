; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_set_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_set_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32, i32 }

@COMM_SPU = common dso_local global i32 0, align 4
@COMM_SET_DURATION = common dso_local global i32 0, align 4
@COMM_IM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_device*, i32)* @ds_set_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_set_pullup(%struct.ds_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ds_device* %0, %struct.ds_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 4
  %11 = add nsw i32 1, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @COMM_SPU, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %22 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %28 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %25
  %34 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %35 = load i32, i32* @COMM_SET_DURATION, align 4
  %36 = load i32, i32* @COMM_IM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ds_send_control(%struct.ds_device* %34, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %47 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %42, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ds_send_control(%struct.ds_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
