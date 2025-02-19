; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_raw_console_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_raw_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_raw_console_write(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = call i64 (...) @xen_domain()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @dom0_write_console(i32 0, i8* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = call i32 (...) @xen_hvm_domain()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %9
  br label %26

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @xen_hvm_early_write(i32 0, i8* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %20
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xen_domain(...) #1

declare dso_local i32 @dom0_write_console(i32, i8*, i32) #1

declare dso_local i32 @xen_hvm_domain(...) #1

declare dso_local i32 @xen_hvm_early_write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
