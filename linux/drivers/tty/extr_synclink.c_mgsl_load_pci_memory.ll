; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_load_pci_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_load_pci_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_LOAD_INTERVAL = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i16)* @mgsl_load_pci_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgsl_load_pci_memory(i8* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %10 = load i16, i16* %6, align 2
  %11 = zext i16 %10 to i32
  %12 = sdiv i32 %11, 64
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %7, align 2
  store i16 0, i16* %8, align 2
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i16, i16* %8, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @memcpy(i8* %21, i8* %22, i16 zeroext 64)
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to i64*
  %26 = load volatile i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 64
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 64
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i16, i16* %8, align 2
  %33 = add i16 %32, 1
  store i16 %33, i16* %8, align 2
  br label %14

34:                                               ; preds = %14
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i16, i16* %6, align 2
  %38 = zext i16 %37 to i32
  %39 = srem i32 %38, 64
  %40 = trunc i32 %39 to i16
  %41 = call i32 @memcpy(i8* %35, i8* %36, i16 zeroext %40)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
