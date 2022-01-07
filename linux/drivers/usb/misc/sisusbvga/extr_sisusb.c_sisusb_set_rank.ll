; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_set_rank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_set_rank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@SISSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32*, i32, i32, i32, [5 x i32]*, i32)* @sisusb_set_rank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_set_rank(%struct.sisusb_usb_data* %0, i32* %1, i32 %2, i32 %3, i32 %4, [5 x i32]* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sisusb_usb_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [5 x i32]*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store [5 x i32]* %5, [5 x i32]** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %32

22:                                               ; preds = %7
  %23 = load [5 x i32]*, [5 x i32]** %14, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 %25
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %8, align 4
  br label %81

32:                                               ; preds = %22, %7
  %33 = load [5 x i32]*, [5 x i32]** %14, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %33, i64 %35
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %36, i64 0, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 2
  %40 = load i32, i32* %15, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 32
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %12, align 4
  %45 = mul nsw i32 %43, %44
  %46 = icmp sgt i32 %45, 128
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %8, align 4
  br label %81

49:                                               ; preds = %32
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %54, %49
  %51 = load i32, i32* %17, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %17, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %18, align 4
  %56 = add nsw i32 %55, 16
  store i32 %56, i32* %18, align 4
  br label %50

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  %60 = shl i32 %59, 2
  %61 = load i32, i32* %18, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sdiv i32 %63, 64
  %65 = and i32 %64, 2
  %66 = load i32, i32* %18, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, 1
  %70 = load i32, i32* %18, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* @SISSR, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @SETIREG(i32 %72, i32 20, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %76 = call i32 @sisusb_triggersr16(%struct.sisusb_usb_data* %75, i32 0)
  %77 = load i32, i32* %16, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %16, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %57, %47, %30
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @SETIREG(i32, i32, i32) #1

declare dso_local i32 @sisusb_triggersr16(%struct.sisusb_usb_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
