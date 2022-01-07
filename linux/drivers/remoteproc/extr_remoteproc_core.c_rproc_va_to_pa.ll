; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_va_to_pa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_va_to_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rproc_va_to_pa(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @is_vmalloc_addr(i8* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @vmalloc_to_page(i8* %8)
  %10 = call i64 @page_to_phys(i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @offset_in_page(i8* %11)
  %13 = add nsw i64 %10, %12
  store i64 %13, i64* %2, align 8
  br label %23

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @virt_addr_valid(i8* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @virt_to_phys(i8* %21)
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %14, %7
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local i64 @virt_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
