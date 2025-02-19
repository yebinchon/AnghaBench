; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@is_active = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Attempt to open already opened device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pcipcwd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcipcwd_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i64 @test_and_set_bit(i32 0, i32* @is_active)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i64, i64* @debug, align 8
  %10 = load i64, i64* @VERBOSE, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = call i32 (...) @pcipcwd_start()
  %19 = call i32 (...) @pcipcwd_keepalive()
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = call i32 @stream_open(%struct.inode* %20, %struct.file* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pcipcwd_start(...) #1

declare dso_local i32 @pcipcwd_keepalive(...) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
