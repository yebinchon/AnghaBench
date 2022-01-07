; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sa1100_wdt.c_sa1100dog_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sa1100_wdt.c_sa1100dog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@sa1100wdt_users = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@OSCR = common dso_local global i32 0, align 4
@pre_margin = common dso_local global i32 0, align 4
@OSMR3 = common dso_local global i32 0, align 4
@OSSR_M3 = common dso_local global i32 0, align 4
@OSSR = common dso_local global i32 0, align 4
@OWER_WME = common dso_local global i32 0, align 4
@OWER = common dso_local global i32 0, align 4
@OIER = common dso_local global i32 0, align 4
@OIER_E3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sa1100dog_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100dog_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i64 @test_and_set_bit(i32 1, i32* @sa1100wdt_users)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* @OSCR, align 4
  %13 = call i32 @readl_relaxed(i32 %12)
  %14 = load i32, i32* @pre_margin, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @OSMR3, align 4
  %17 = call i32 @writel_relaxed(i32 %15, i32 %16)
  %18 = load i32, i32* @OSSR_M3, align 4
  %19 = load i32, i32* @OSSR, align 4
  %20 = call i32 @writel_relaxed(i32 %18, i32 %19)
  %21 = load i32, i32* @OWER_WME, align 4
  %22 = load i32, i32* @OWER, align 4
  %23 = call i32 @writel_relaxed(i32 %21, i32 %22)
  %24 = load i32, i32* @OIER, align 4
  %25 = call i32 @readl_relaxed(i32 %24)
  %26 = load i32, i32* @OIER_E3, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @OIER, align 4
  %29 = call i32 @writel_relaxed(i32 %27, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = call i32 @stream_open(%struct.inode* %30, %struct.file* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %11, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
