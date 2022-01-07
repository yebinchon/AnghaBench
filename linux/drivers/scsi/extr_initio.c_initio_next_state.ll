; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_next_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_next_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_next_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_next_state(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %5 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %44, %1
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %36 [
    i32 1, label %12
    i32 2, label %15
    i32 3, label %18
    i32 4, label %21
    i32 5, label %24
    i32 6, label %27
    i32 7, label %30
    i32 8, label %33
  ]

12:                                               ; preds = %10
  %13 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %14 = call i32 @initio_state_1(%struct.initio_host* %13)
  store i32 %14, i32* %4, align 4
  br label %39

15:                                               ; preds = %10
  %16 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %17 = call i32 @initio_state_2(%struct.initio_host* %16)
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %10
  %19 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %20 = call i32 @initio_state_3(%struct.initio_host* %19)
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %10
  %22 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %23 = call i32 @initio_state_4(%struct.initio_host* %22)
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %10
  %25 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %26 = call i32 @initio_state_5(%struct.initio_host* %25)
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %10
  %28 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %29 = call i32 @initio_state_6(%struct.initio_host* %28)
  store i32 %29, i32* %4, align 4
  br label %39

30:                                               ; preds = %10
  %31 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %32 = call i32 @initio_state_7(%struct.initio_host* %31)
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %10
  %34 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %35 = call i32 @initio_bus_device_reset(%struct.initio_host* %34)
  store i32 %35, i32* %2, align 4
  br label %45

36:                                               ; preds = %10
  %37 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %38 = call i32 @initio_bad_seq(%struct.initio_host* %37)
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %30, %27, %24, %21, %18, %15, %12
  %40 = load i32, i32* %4, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %39
  br label %10

45:                                               ; preds = %42, %36, %33
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @initio_state_1(%struct.initio_host*) #1

declare dso_local i32 @initio_state_2(%struct.initio_host*) #1

declare dso_local i32 @initio_state_3(%struct.initio_host*) #1

declare dso_local i32 @initio_state_4(%struct.initio_host*) #1

declare dso_local i32 @initio_state_5(%struct.initio_host*) #1

declare dso_local i32 @initio_state_6(%struct.initio_host*) #1

declare dso_local i32 @initio_state_7(%struct.initio_host*) #1

declare dso_local i32 @initio_bus_device_reset(%struct.initio_host*) #1

declare dso_local i32 @initio_bad_seq(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
