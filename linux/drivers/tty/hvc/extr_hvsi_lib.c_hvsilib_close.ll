; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hvc_struct = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"HVSI@%x: close !\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"HVSI@%x: Not a console, tearing down\0A\00", align 1
@HUPCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hvsilib_close(%struct.hvsi_priv* %0, %struct.hvc_struct* %1) #0 {
  %3 = alloca %struct.hvsi_priv*, align 8
  %4 = alloca %struct.hvc_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %3, align 8
  store %struct.hvc_struct* %1, %struct.hvc_struct** %4, align 8
  %6 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %7 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pr_devel(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %11 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %2
  %15 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %16 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_devel(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.hvc_struct*, %struct.hvc_struct** %4, align 8
  %20 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %24 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.hvc_struct*, %struct.hvc_struct** %4, align 8
  %26 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %30 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %14
  %34 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %35 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HUPCL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33, %14
  %44 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %45 = call i32 @hvsilib_write_mctrl(%struct.hvsi_priv* %44, i32 0)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %48 = call i32 @hvsi_send_close(%struct.hvsi_priv* %47)
  br label %49

49:                                               ; preds = %46, %2
  %50 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %51 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @tty_kref_put(%struct.TYPE_4__* %52)
  %54 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %55 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %54, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %55, align 8
  ret void
}

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hvsilib_write_mctrl(%struct.hvsi_priv*, i32) #1

declare dso_local i32 @hvsi_send_close(%struct.hvsi_priv*) #1

declare dso_local i32 @tty_kref_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
