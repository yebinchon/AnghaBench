; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_digital_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_digital_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dt9812_private* }
%struct.dt9812_private = type { i32 }

@F020_SFR_P3 = common dso_local global i32 0, align 4
@F020_SFR_P1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*)* @dt9812_digital_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_digital_in(%struct.comedi_device* %0, i32* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dt9812_private*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.dt9812_private*, %struct.dt9812_private** %10, align 8
  store %struct.dt9812_private* %11, %struct.dt9812_private** %5, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @F020_SFR_P3, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @F020_SFR_P1, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.dt9812_private*, %struct.dt9812_private** %5, align 8
  %17 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %22 = call i32 @dt9812_read_multiple_registers(%struct.comedi_device* %19, i32 2, i32* %20, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 127
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 8
  %32 = shl i32 %31, 4
  %33 = or i32 %28, %32
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %25, %2
  %36 = load %struct.dt9812_private*, %struct.dt9812_private** %5, align 8
  %37 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dt9812_read_multiple_registers(%struct.comedi_device*, i32, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
