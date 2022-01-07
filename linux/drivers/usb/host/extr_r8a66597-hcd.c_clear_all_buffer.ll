; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_clear_all_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_clear_all_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_pipe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ACLRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_pipe*)* @clear_all_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_all_buffer(%struct.r8a66597* %0, %struct.r8a66597_pipe* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_pipe*, align 8
  %5 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_pipe* %1, %struct.r8a66597_pipe** %4, align 8
  %6 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %7 = icmp ne %struct.r8a66597_pipe* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %10 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  br label %46

15:                                               ; preds = %8
  %16 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %17 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %18 = call i32 @pipe_stop(%struct.r8a66597* %16, %struct.r8a66597_pipe* %17)
  %19 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %20 = load i32, i32* @ACLRM, align 4
  %21 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %22 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @r8a66597_bset(%struct.r8a66597* %19, i32 %20, i32 %23)
  %25 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %26 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %27 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @r8a66597_read(%struct.r8a66597* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %31 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %32 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @r8a66597_read(%struct.r8a66597* %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %36 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %37 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @r8a66597_read(%struct.r8a66597* %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %41 = load i32, i32* @ACLRM, align 4
  %42 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %43 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @r8a66597_bclr(%struct.r8a66597* %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @pipe_stop(%struct.r8a66597*, %struct.r8a66597_pipe*) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i32) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
