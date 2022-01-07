; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_fw.c__rtl88e_fw_block_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_fw.c__rtl88e_fw_block_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@FW_8192C_START_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i64)* @_rtl88e_fw_block_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88e_fw_block_write(%struct.adapter* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 8, i64* %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to i64*
  store i64* %15, i64** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = udiv i64 %16, %17
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = urem i64 %19, %20
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* @FW_8192C_START_ADDRESS, align 8
  store i64 %22, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %35, %3
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @usb_write32(%struct.adapter* %28, i64 %29, i64 %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %11, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %7, align 8
  %45 = mul i64 %43, %44
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32* %46, i32** %8, align 8
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %59, %41
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_write8(%struct.adapter* %52, i64 %53, i32 %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %11, align 8
  br label %47

64:                                               ; preds = %47
  ret void
}

declare dso_local i32 @usb_write32(%struct.adapter*, i64, i64) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
