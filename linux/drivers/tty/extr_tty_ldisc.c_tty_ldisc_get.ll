; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc = type { %struct.tty_struct*, %struct.tty_ldisc_ops* }
%struct.tty_ldisc_ops = type { i32 }
%struct.tty_struct = type { i32 }

@N_TTY = common dso_local global i32 0, align 4
@NR_LDISCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_MODULE = common dso_local global i32 0, align 4
@tty_ldisc_autoload = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tty-ldisc-%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_ldisc* (%struct.tty_struct*, i32)* @tty_ldisc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_ldisc*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_ldisc*, align 8
  %7 = alloca %struct.tty_ldisc_ops*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @N_TTY, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NR_LDISCS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.tty_ldisc* @ERR_PTR(i32 %17)
  store %struct.tty_ldisc* %18, %struct.tty_ldisc** %3, align 8
  br label %60

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.tty_ldisc_ops* @get_ldops(i32 %20)
  store %struct.tty_ldisc_ops* %21, %struct.tty_ldisc_ops** %7, align 8
  %22 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %7, align 8
  %23 = call i64 @IS_ERR(%struct.tty_ldisc_ops* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load i32, i32* @CAP_SYS_MODULE, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @tty_ldisc_autoload, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.tty_ldisc* @ERR_PTR(i32 %34)
  store %struct.tty_ldisc* %35, %struct.tty_ldisc** %3, align 8
  br label %60

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @request_module(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.tty_ldisc_ops* @get_ldops(i32 %39)
  store %struct.tty_ldisc_ops* %40, %struct.tty_ldisc_ops** %7, align 8
  %41 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %7, align 8
  %42 = call i64 @IS_ERR(%struct.tty_ldisc_ops* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %7, align 8
  %46 = call %struct.tty_ldisc* @ERR_CAST(%struct.tty_ldisc_ops* %45)
  store %struct.tty_ldisc* %46, %struct.tty_ldisc** %3, align 8
  br label %60

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load i32, i32* @__GFP_NOFAIL, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.tty_ldisc* @kmalloc(i32 16, i32 %51)
  store %struct.tty_ldisc* %52, %struct.tty_ldisc** %6, align 8
  %53 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %7, align 8
  %54 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %55 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %54, i32 0, i32 1
  store %struct.tty_ldisc_ops* %53, %struct.tty_ldisc_ops** %55, align 8
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %58 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %57, i32 0, i32 0
  store %struct.tty_struct* %56, %struct.tty_struct** %58, align 8
  %59 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  store %struct.tty_ldisc* %59, %struct.tty_ldisc** %3, align 8
  br label %60

60:                                               ; preds = %48, %44, %32, %15
  %61 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  ret %struct.tty_ldisc* %61
}

declare dso_local %struct.tty_ldisc* @ERR_PTR(i32) #1

declare dso_local %struct.tty_ldisc_ops* @get_ldops(i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc_ops*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local %struct.tty_ldisc* @ERR_CAST(%struct.tty_ldisc_ops*) #1

declare dso_local %struct.tty_ldisc* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
