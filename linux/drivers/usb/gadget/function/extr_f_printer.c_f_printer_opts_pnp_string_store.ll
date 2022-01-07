; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_f_printer_opts_pnp_string_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_f_printer_opts_pnp_string_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.f_printer_opts = type { i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @f_printer_opts_pnp_string_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_printer_opts_pnp_string_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.f_printer_opts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.config_item*, %struct.config_item** %4, align 8
  %11 = call %struct.f_printer_opts* @to_f_printer_opts(%struct.config_item* %10)
  store %struct.f_printer_opts* %11, %struct.f_printer_opts** %7, align 8
  %12 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %13 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kstrndup(i8* %15, i64 %16, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %26 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %31 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @kfree(i8* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %36 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %39 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %34, %21
  %43 = load %struct.f_printer_opts*, %struct.f_printer_opts** %7, align 8
  %44 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %43, i32 0, i32 2
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.f_printer_opts* @to_f_printer_opts(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
