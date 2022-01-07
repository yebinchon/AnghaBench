; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_cons_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_cons_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ops = type { i32 }

@dom0_hvc_ops = common dso_local global %struct.hv_ops zeroinitializer, align 4
@domU_hvc_ops = common dso_local global %struct.hv_ops zeroinitializer, align 4
@HVC_COOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xen_cons_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_cons_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hv_ops*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @xen_domain()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %28

7:                                                ; preds = %0
  %8 = call i64 (...) @xen_initial_domain()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store %struct.hv_ops* @dom0_hvc_ops, %struct.hv_ops** %2, align 8
  br label %24

11:                                               ; preds = %7
  store %struct.hv_ops* @domU_hvc_ops, %struct.hv_ops** %2, align 8
  %12 = call i64 (...) @xen_hvm_domain()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @xen_hvm_console_init()
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @xen_pv_console_init()
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  store i32 %22, i32* %1, align 4
  br label %28

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* @HVC_COOKIE, align 4
  %26 = load %struct.hv_ops*, %struct.hv_ops** %2, align 8
  %27 = call i32 @hvc_instantiate(i32 %25, i32 0, %struct.hv_ops* %26)
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %21, %6
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @xen_domain(...) #1

declare dso_local i64 @xen_initial_domain(...) #1

declare dso_local i64 @xen_hvm_domain(...) #1

declare dso_local i32 @xen_hvm_console_init(...) #1

declare dso_local i32 @xen_pv_console_init(...) #1

declare dso_local i32 @hvc_instantiate(i32, i32, %struct.hv_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
