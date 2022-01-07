; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_iuu_phoenix.c_iuu_rgbf_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_iuu_phoenix.c_iuu_rgbf_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IUU_SET_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @iuu_rgbf_fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iuu_rgbf_fill_buffer(i8** %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8** %0, i8*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %17 = load i32, i32* @IUU_SET_LED, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8**, i8*** %9, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %9, align 8
  store i8* %19, i8** %20, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %9, align 8
  store i8* %22, i8** %23, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %9, align 8
  store i8* %25, i8** %26, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %9, align 8
  store i8* %28, i8** %29, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8**, i8*** %9, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %9, align 8
  store i8* %31, i8** %32, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %9, align 8
  store i8* %34, i8** %35, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load i8**, i8*** %9, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %9, align 8
  store i8* %37, i8** %38, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i8**, i8*** %9, align 8
  store i8* %40, i8** %41, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
