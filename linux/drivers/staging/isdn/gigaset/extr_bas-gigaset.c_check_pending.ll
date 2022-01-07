; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_check_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_check_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bas_cardstate = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BS_ATOPEN = common dso_local global i32 0, align 4
@BS_B1OPEN = common dso_local global i32 0, align 4
@BS_B2OPEN = common dso_local global i32 0, align 4
@BS_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unknown pending request 0x%02x cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bas_cardstate*)* @check_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pending(%struct.bas_cardstate* %0) #0 {
  %2 = alloca %struct.bas_cardstate*, align 8
  %3 = alloca i64, align 8
  store %struct.bas_cardstate* %0, %struct.bas_cardstate** %2, align 8
  %4 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %5 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %4, i32 0, i32 2
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %9 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %92 [
    i32 0, label %11
    i32 131, label %12
    i32 130, label %23
    i32 129, label %34
    i32 135, label %45
    i32 134, label %56
    i32 133, label %67
    i32 132, label %78
    i32 128, label %81
  ]

11:                                               ; preds = %1
  br label %103

12:                                               ; preds = %1
  %13 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %14 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BS_ATOPEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %21 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %12
  br label %103

23:                                               ; preds = %1
  %24 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %25 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BS_B1OPEN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %32 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %23
  br label %103

34:                                               ; preds = %1
  %35 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %36 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BS_B2OPEN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %43 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %34
  br label %103

45:                                               ; preds = %1
  %46 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %47 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BS_ATOPEN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %54 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %45
  br label %103

56:                                               ; preds = %1
  %57 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %58 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BS_B1OPEN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %65 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %56
  br label %103

67:                                               ; preds = %1
  %68 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %69 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BS_B2OPEN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %76 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %67
  br label %103

78:                                               ; preds = %1
  %79 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %80 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %103

81:                                               ; preds = %1
  %82 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %83 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BS_RESETTING, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %90 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %81
  br label %103

92:                                               ; preds = %1
  %93 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %94 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %98 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_warn(i32* %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %102 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %92, %91, %78, %77, %66, %55, %44, %33, %22, %11
  %104 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %105 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %110 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %109, i32 0, i32 3
  %111 = call i32 @del_timer(i32* %110)
  br label %112

112:                                              ; preds = %108, %103
  %113 = load %struct.bas_cardstate*, %struct.bas_cardstate** %2, align 8
  %114 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %113, i32 0, i32 2
  %115 = load i64, i64* %3, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
