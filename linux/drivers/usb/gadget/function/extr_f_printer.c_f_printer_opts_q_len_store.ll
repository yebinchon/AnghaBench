; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_f_printer_opts_q_len_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_f_printer_opts_q_len_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.f_printer_opts = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @f_printer_opts_q_len_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_printer_opts_q_len_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.f_printer_opts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.config_item*, %struct.config_item** %4, align 8
  %11 = call %struct.f_printer_opts* @to_f_printer_opts(%struct.config_item* %10)
  store %struct.f_printer_opts* %11, %struct.f_printer_opts** %7, align 8
  %12 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %13 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %16 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @kstrtou16(i8* %23, i32 0, i64* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %35

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %32 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %28, %27, %19
  %36 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %37 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.f_printer_opts* @to_f_printer_opts(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
