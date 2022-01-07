; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_vc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vc_data* }
%struct.vc_data = type { i32 }
%struct.inode = type { i32 }

@fg_console = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vc_data* (%struct.inode*, i32*)* @vcs_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vc_data* @vcs_vc(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call i32 @console(%struct.inode* %6)
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @fg_console, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %11
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.vc_data*, %struct.vc_data** %31, align 8
  ret %struct.vc_data* %32
}

declare dso_local i32 @console(%struct.inode*) #1

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
