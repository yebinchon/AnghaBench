; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_issue_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_issue_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.raw3270_request = type { %struct.con3270*, i32 }

@con3270_read_callback = common dso_local global i32 0, align 4
@TC_READMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con3270*)* @con3270_issue_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_issue_read(%struct.con3270* %0) #0 {
  %2 = alloca %struct.con3270*, align 8
  %3 = alloca %struct.raw3270_request*, align 8
  %4 = alloca i32, align 4
  store %struct.con3270* %0, %struct.con3270** %2, align 8
  %5 = load %struct.con3270*, %struct.con3270** %2, align 8
  %6 = getelementptr inbounds %struct.con3270, %struct.con3270* %5, i32 0, i32 2
  %7 = call %struct.raw3270_request* @xchg(i32* %6, i32 0)
  store %struct.raw3270_request* %7, %struct.raw3270_request** %3, align 8
  %8 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %9 = icmp ne %struct.raw3270_request* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* @con3270_read_callback, align 4
  %13 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %14 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.con3270*, %struct.con3270** %2, align 8
  %16 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %17 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %16, i32 0, i32 0
  store %struct.con3270* %15, %struct.con3270** %17, align 8
  %18 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %19 = load i32, i32* @TC_READMOD, align 4
  %20 = call i32 @raw3270_request_set_cmd(%struct.raw3270_request* %18, i32 %19)
  %21 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %22 = load %struct.con3270*, %struct.con3270** %2, align 8
  %23 = getelementptr inbounds %struct.con3270, %struct.con3270* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.con3270*, %struct.con3270** %2, align 8
  %28 = getelementptr inbounds %struct.con3270, %struct.con3270* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @raw3270_request_set_data(%struct.raw3270_request* %21, i32 %26, i32 %31)
  %33 = load %struct.con3270*, %struct.con3270** %2, align 8
  %34 = getelementptr inbounds %struct.con3270, %struct.con3270* %33, i32 0, i32 0
  %35 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %36 = call i32 @raw3270_start_irq(i32* %34, %struct.raw3270_request* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %11
  %40 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %41 = call i32 @raw3270_request_reset(%struct.raw3270_request* %40)
  br label %42

42:                                               ; preds = %10, %39, %11
  ret void
}

declare dso_local %struct.raw3270_request* @xchg(i32*, i32) #1

declare dso_local i32 @raw3270_request_set_cmd(%struct.raw3270_request*, i32) #1

declare dso_local i32 @raw3270_request_set_data(%struct.raw3270_request*, i32, i32) #1

declare dso_local i32 @raw3270_start_irq(i32*, %struct.raw3270_request*) #1

declare dso_local i32 @raw3270_request_reset(%struct.raw3270_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
