; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_geodewdt.c_geodewdt_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_geodewdt.c_geodewdt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@safe_close = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unexpected close - watchdog is not stopping\0A\00", align 1
@WDT_FLAGS_ORPHAN = common dso_local global i32 0, align 4
@wdt_flags = common dso_local global i32 0, align 4
@WDT_FLAGS_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @geodewdt_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geodewdt_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load i64, i64* @safe_close, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = call i32 (...) @geodewdt_disable()
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = call i32 @module_put(i32 %9)
  br label %16

11:                                               ; preds = %2
  %12 = call i32 @pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @geodewdt_ping()
  %14 = load i32, i32* @WDT_FLAGS_ORPHAN, align 4
  %15 = call i32 @set_bit(i32 %14, i32* @wdt_flags)
  br label %16

16:                                               ; preds = %11, %7
  %17 = load i32, i32* @WDT_FLAGS_OPEN, align 4
  %18 = call i32 @clear_bit(i32 %17, i32* @wdt_flags)
  store i64 0, i64* @safe_close, align 8
  ret i32 0
}

declare dso_local i32 @geodewdt_disable(...) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @geodewdt_ping(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
