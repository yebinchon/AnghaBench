; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_alloc_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_alloc_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32 }
%struct.gigaset_driver = type { i32, i32, %struct.cardstate*, i64 }

@VALID_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cardstate* (%struct.gigaset_driver*)* @alloc_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cardstate* @alloc_cs(%struct.gigaset_driver* %0) #0 {
  %2 = alloca %struct.gigaset_driver*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca %struct.cardstate*, align 8
  store %struct.gigaset_driver* %0, %struct.gigaset_driver** %2, align 8
  store %struct.cardstate* null, %struct.cardstate** %6, align 8
  %7 = load %struct.gigaset_driver*, %struct.gigaset_driver** %2, align 8
  %8 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %7, i32 0, i32 1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.gigaset_driver*, %struct.gigaset_driver** %2, align 8
  %12 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %46

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.gigaset_driver*, %struct.gigaset_driver** %2, align 8
  %20 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.gigaset_driver*, %struct.gigaset_driver** %2, align 8
  %25 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %24, i32 0, i32 2
  %26 = load %struct.cardstate*, %struct.cardstate** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %26, i64 %28
  store %struct.cardstate* %29, %struct.cardstate** %5, align 8
  %30 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VALID_MINOR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @VALID_MINOR, align 4
  %38 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  store %struct.cardstate* %40, %struct.cardstate** %6, align 8
  br label %45

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %17

45:                                               ; preds = %36, %17
  br label %46

46:                                               ; preds = %45, %15
  %47 = load %struct.gigaset_driver*, %struct.gigaset_driver** %2, align 8
  %48 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %47, i32 0, i32 1
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  ret %struct.cardstate* %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
