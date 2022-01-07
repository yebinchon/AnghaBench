; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_opal.c_hvc_opal_hvsi_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_opal.c_hvc_opal_hvsi_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_opal_priv = type { i32 }
%struct.hvc_struct = type { i64 }

@hvc_opal_privs = common dso_local global %struct.hvc_opal_priv** null, align 8
@.str = private unnamed_addr constant [43 x i8] c"HVSI@%x: Set modem control, set=%x,clr=%x\0A\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvc_struct*, i32, i32)* @hvc_opal_hvsi_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_opal_hvsi_tiocmset(%struct.hvc_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hvc_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hvc_opal_priv*, align 8
  store %struct.hvc_struct* %0, %struct.hvc_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hvc_opal_priv**, %struct.hvc_opal_priv*** @hvc_opal_privs, align 8
  %9 = load %struct.hvc_struct*, %struct.hvc_struct** %4, align 8
  %10 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %8, i64 %11
  %13 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %12, align 8
  store %struct.hvc_opal_priv* %13, %struct.hvc_opal_priv** %7, align 8
  %14 = load %struct.hvc_struct*, %struct.hvc_struct** %4, align 8
  %15 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pr_devel(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @TIOCM_DTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %7, align 8
  %26 = getelementptr inbounds %struct.hvc_opal_priv, %struct.hvc_opal_priv* %25, i32 0, i32 0
  %27 = call i32 @hvsilib_write_mctrl(i32* %26, i32 1)
  br label %38

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TIOCM_DTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %7, align 8
  %35 = getelementptr inbounds %struct.hvc_opal_priv, %struct.hvc_opal_priv* %34, i32 0, i32 0
  %36 = call i32 @hvsilib_write_mctrl(i32* %35, i32 0)
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37, %24
  ret i32 0
}

declare dso_local i32 @pr_devel(i8*, i64, i32, i32) #1

declare dso_local i32 @hvsilib_write_mctrl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
