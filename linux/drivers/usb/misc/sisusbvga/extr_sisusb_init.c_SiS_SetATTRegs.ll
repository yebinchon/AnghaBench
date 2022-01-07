; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetATTRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetATTRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetATTRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetATTRegs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %6, align 2
  br label %7

7:                                                ; preds = %43, %2
  %8 = load i16, i16* %6, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sle i32 %9, 19
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %5, align 1
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @SiS_GetRegByte(%struct.SiS_Private* %24, i32 %27)
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i16, i16* %6, align 2
  %34 = zext i16 %33 to i32
  %35 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %29, i32 %32, i32 %34)
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %38 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %36, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %11
  %44 = load i16, i16* %6, align 2
  %45 = add i16 %44, 1
  store i16 %45, i16* %6, align 2
  br label %7

46:                                               ; preds = %7
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %48 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %49 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SiS_GetRegByte(%struct.SiS_Private* %47, i32 %50)
  %52 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %52, i32 %55, i32 20)
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %57, i32 %60, i32 0)
  %62 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @SiS_GetRegByte(%struct.SiS_Private* %62, i32 %65)
  %67 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %67, i32 %70, i32 32)
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %74 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @SiS_GetRegByte(%struct.SiS_Private* %72, i32 %75)
  ret void
}

declare dso_local i32 @SiS_GetRegByte(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_SetRegByte(%struct.SiS_Private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
