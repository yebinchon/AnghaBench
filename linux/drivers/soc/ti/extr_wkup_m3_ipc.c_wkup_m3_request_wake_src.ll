; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_request_wake_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_request_wake_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.wkup_m3_ipc = type { i32 }

@M3_WAKE_SRC_MASK = common dso_local global i32 0, align 4
@wakeups = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wkup_m3_ipc*)* @wkup_m3_request_wake_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wkup_m3_request_wake_src(%struct.wkup_m3_ipc* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wkup_m3_ipc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wkup_m3_ipc* %0, %struct.wkup_m3_ipc** %3, align 8
  %7 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %3, align 8
  %8 = call i32 @wkup_m3_ctrl_ipc_read(%struct.wkup_m3_ipc* %7, i32 6)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @M3_WAKE_SRC_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wakeups, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wakeups, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wakeups, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %2, align 8
  br label %45

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wakeups, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %38, %27
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i32 @wkup_m3_ctrl_ipc_read(%struct.wkup_m3_ipc*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
