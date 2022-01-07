; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbUpdateTSF.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbUpdateTSF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64 }

@MAC_REG_TSFOFST = common dso_local global i64 0, align 8
@MAC_REG_TFTCTL = common dso_local global i32 0, align 4
@TFTCTL_TSFSYNCEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARDbUpdateTSF(%struct.vnt_private* %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %10 = call i32 @CARDbGetCurrentTSF(%struct.vnt_private* %9, i64* %7)
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load i8, i8* %5, align 1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @CARDqGetTSFOffset(i8 zeroext %15, i64 %16, i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAC_REG_TSFOFST, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @VNSvOutPortD(i64 %23, i32 %25)
  %27 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAC_REG_TSFOFST, align 8
  %31 = add nsw i64 %29, %30
  %32 = add nsw i64 %31, 4
  %33 = load i64, i64* %8, align 8
  %34 = ashr i64 %33, 32
  %35 = trunc i64 %34 to i32
  %36 = call i32 @VNSvOutPortD(i64 %32, i32 %35)
  %37 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @MAC_REG_TFTCTL, align 4
  %41 = load i32, i32* @TFTCTL_TSFSYNCEN, align 4
  %42 = call i32 @MACvRegBitsOn(i64 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %14, %3
  ret i32 1
}

declare dso_local i32 @CARDbGetCurrentTSF(%struct.vnt_private*, i64*) #1

declare dso_local i64 @CARDqGetTSFOffset(i8 zeroext, i64, i64) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

declare dso_local i32 @MACvRegBitsOn(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
