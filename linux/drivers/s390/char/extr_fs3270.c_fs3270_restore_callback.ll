; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_fs3270.c_fs3270_restore_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_fs3270.c_fs3270_restore_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_request = type { i64, i64, i64 }
%struct.fs3270 = type { i32, i64, i64 }

@SIGHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270_request*, i8*)* @fs3270_restore_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs3270_restore_callback(%struct.raw3270_request* %0, i8* %1) #0 {
  %3 = alloca %struct.raw3270_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fs3270*, align 8
  store %struct.raw3270_request* %0, %struct.raw3270_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %7 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.fs3270*
  store %struct.fs3270* %9, %struct.fs3270** %5, align 8
  %10 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %11 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %16 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14, %2
  %20 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %21 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %26 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @SIGHUP, align 4
  %29 = call i32 @kill_pid(i64 %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %24, %19
  br label %31

31:                                               ; preds = %30, %14
  %32 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %33 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %35 = call i32 @raw3270_request_reset(%struct.raw3270_request* %34)
  %36 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %37 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %36, i32 0, i32 0
  %38 = call i32 @wake_up(i32* %37)
  ret void
}

declare dso_local i32 @kill_pid(i64, i32, i32) #1

declare dso_local i32 @raw3270_request_reset(%struct.raw3270_request*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
