; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_free_etd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_free_etd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx21 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@USB_NUM_ETD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"BAD etd=%d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ETD %d already free!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx21*, i32)* @free_etd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_etd(%struct.imx21* %0, i32 %1) #0 {
  %3 = alloca %struct.imx21*, align 8
  %4 = alloca i32, align 4
  store %struct.imx21* %0, %struct.imx21** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %47

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @USB_NUM_ETD, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.imx21*, %struct.imx21** %3, align 8
  %14 = getelementptr inbounds %struct.imx21, %struct.imx21* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %47

18:                                               ; preds = %8
  %19 = load %struct.imx21*, %struct.imx21** %3, align 8
  %20 = getelementptr inbounds %struct.imx21, %struct.imx21* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.imx21*, %struct.imx21** %3, align 8
  %30 = getelementptr inbounds %struct.imx21, %struct.imx21* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %47

34:                                               ; preds = %18
  %35 = load %struct.imx21*, %struct.imx21** %3, align 8
  %36 = call i32 @debug_etd_freed(%struct.imx21* %35)
  %37 = load %struct.imx21*, %struct.imx21** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @reset_etd(%struct.imx21* %37, i32 %38)
  %40 = load %struct.imx21*, %struct.imx21** %3, align 8
  %41 = getelementptr inbounds %struct.imx21, %struct.imx21* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = call i32 @memset(%struct.TYPE_2__* %45, i32 0, i32 8)
  br label %47

47:                                               ; preds = %34, %28, %12, %7
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @debug_etd_freed(%struct.imx21*) #1

declare dso_local i32 @reset_etd(%struct.imx21*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
