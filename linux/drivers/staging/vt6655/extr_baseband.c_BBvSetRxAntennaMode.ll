; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_baseband.c_BBvSetRxAntennaMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_baseband.c_BBvSetRxAntennaMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@ANT_DIVERSITY = common dso_local global i8 0, align 1
@ANT_A = common dso_local global i8 0, align 1
@ANT_B = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BBvSetRxAntennaMode(%struct.vnt_private* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %7 = call i32 @BBbReadEmbedded(%struct.vnt_private* %6, i32 10, i8* %5)
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @ANT_DIVERSITY, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %15, 1
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  br label %46

18:                                               ; preds = %2
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @ANT_A, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 252
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %5, align 1
  br label %45

29:                                               ; preds = %18
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @ANT_B, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 254
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %5, align 1
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, 2
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %5, align 1
  br label %44

44:                                               ; preds = %35, %29
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45, %13
  %47 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %48 = load i8, i8* %5, align 1
  %49 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %47, i32 10, i8 zeroext %48)
  ret void
}

declare dso_local i32 @BBbReadEmbedded(%struct.vnt_private*, i32, i8*) #1

declare dso_local i32 @BBbWriteEmbedded(%struct.vnt_private*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
