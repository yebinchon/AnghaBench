; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_init_failed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_init_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.at_state_t }
%struct.at_state_t = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PC_INIT = common dso_local global i32 0, align 4
@MS_UNINITIALIZED = common dso_local global i32 0, align 4
@PC_CID = common dso_local global i32 0, align 4
@PC_NOCID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*, i32)* @init_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_failed(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.at_state_t*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @PC_INIT, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %8
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %16 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @MS_UNINITIALIZED, align 4
  %18 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %19 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %21 = call i32 @gigaset_free_channels(%struct.cardstate* %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %57, %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.at_state_t* %35, %struct.at_state_t** %6, align 8
  %36 = load %struct.at_state_t*, %struct.at_state_t** %6, align 8
  %37 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PC_CID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %28
  %43 = load i32, i32* @PC_CID, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.at_state_t*, %struct.at_state_t** %6, align 8
  %46 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @PC_NOCID, align 4
  %50 = load %struct.at_state_t*, %struct.at_state_t** %6, align 8
  %51 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %55 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %42, %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %22

60:                                               ; preds = %22
  ret void
}

declare dso_local i32 @gigaset_free_channels(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
