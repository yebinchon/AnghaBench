; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sb_wdog.c_sbwdog_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sb_wdog.c_sbwdog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@sbwdog_gate = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@user_dog = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sbwdog_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbwdog_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = call i32 @stream_open(%struct.inode* %6, %struct.file* %7)
  %9 = call i64 @test_and_set_bit(i32 0, i32* @sbwdog_gate)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @THIS_MODULE, align 4
  %16 = call i32 @__module_get(i32 %15)
  %17 = load i32, i32* @user_dog, align 4
  %18 = load i32, i32* @timeout, align 4
  %19 = call i32 @sbwdog_set(i32 %17, i32 %18)
  %20 = load i32, i32* @user_dog, align 4
  %21 = call i32 @__raw_writeb(i32 1, i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @sbwdog_set(i32, i32) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
