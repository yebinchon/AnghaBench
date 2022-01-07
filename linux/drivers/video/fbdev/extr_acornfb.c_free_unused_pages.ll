; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_acornfb.c_free_unused_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_acornfb.c_free_unused_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"acornfb: freed %dK memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @free_unused_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_unused_pages(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @PAGE_ALIGN(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PAGE_ALIGN(i32 %9)
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %15, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.page* @virt_to_page(i32 %16)
  store %struct.page* %17, %struct.page** %6, align 8
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call i32 @__free_reserved_page(%struct.page* %18)
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = udiv i32 %23, 1024
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  ret void
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @__free_reserved_page(%struct.page*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
