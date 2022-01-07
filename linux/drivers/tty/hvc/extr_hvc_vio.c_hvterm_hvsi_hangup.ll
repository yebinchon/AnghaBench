; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_hvterm_hvsi_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_hvterm_hvsi_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvterm_priv = type { i32, i32 }
%struct.hvc_struct = type { i64 }

@hvterm_privs = common dso_local global %struct.hvterm_priv** null, align 8
@.str = private unnamed_addr constant [22 x i8] c"HVSI@%x: do hangup !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hvterm_hvsi_hangup(%struct.hvc_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.hvc_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hvterm_priv*, align 8
  store %struct.hvc_struct* %0, %struct.hvc_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hvterm_priv**, %struct.hvterm_priv*** @hvterm_privs, align 8
  %7 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %8 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.hvterm_priv*, %struct.hvterm_priv** %6, i64 %9
  %11 = load %struct.hvterm_priv*, %struct.hvterm_priv** %10, align 8
  store %struct.hvterm_priv* %11, %struct.hvterm_priv** %5, align 8
  %12 = load %struct.hvterm_priv*, %struct.hvterm_priv** %5, align 8
  %13 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_devel(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.hvterm_priv*, %struct.hvterm_priv** %5, align 8
  %17 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %16, i32 0, i32 0
  %18 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %19 = call i32 @hvsilib_close(i32* %17, %struct.hvc_struct* %18)
  %20 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @notifier_hangup_irq(%struct.hvc_struct* %20, i32 %21)
  ret void
}

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @hvsilib_close(i32*, %struct.hvc_struct*) #1

declare dso_local i32 @notifier_hangup_irq(%struct.hvc_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
