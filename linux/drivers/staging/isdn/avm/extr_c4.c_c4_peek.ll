; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_c4.c_c4_peek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_c4.c_c4_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@HZ = common dso_local global i32 0, align 4
@MBOX_PEEK_POKE = common dso_local global i64 0, align 8
@DOORBELL = common dso_local global i64 0, align 8
@DBELL_RNWR = common dso_local global i64 0, align 8
@DBELL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64*)* @c4_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4_peek(%struct.TYPE_4__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = load i32, i32* @HZ, align 4
  %10 = sdiv i32 %9, 10
  %11 = call i64 @wait_for_doorbell(%struct.TYPE_4__* %8, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MBOX_PEEK_POKE, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @c4outmeml(i64 %19, i64 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DOORBELL, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @DBELL_RNWR, align 8
  %28 = load i64, i64* @DBELL_ADDR, align 8
  %29 = or i64 %27, %28
  %30 = call i32 @c4outmeml(i64 %26, i64 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = load i32, i32* @HZ, align 4
  %33 = sdiv i32 %32, 10
  %34 = call i64 @wait_for_doorbell(%struct.TYPE_4__* %31, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %45

37:                                               ; preds = %14
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MBOX_PEEK_POKE, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @c4inmeml(i64 %42)
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %36, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @wait_for_doorbell(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @c4outmeml(i64, i64) #1

declare dso_local i64 @c4inmeml(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
