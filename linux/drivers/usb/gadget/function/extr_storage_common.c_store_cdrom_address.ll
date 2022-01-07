; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_store_cdrom_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_store_cdrom_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_cdrom_address(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 150
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = srem i32 %14, 75
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 75
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 60
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 60
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %30, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @put_unaligned_be32(i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
