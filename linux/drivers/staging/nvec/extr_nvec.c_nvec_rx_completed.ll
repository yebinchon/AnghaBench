; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_rx_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_rx_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_chip = type { i32, i32, %struct.TYPE_4__*, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"RX incomplete: Expected %u bytes, got %u\0A\00", align 1
@NVEC_BAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvec_chip*)* @nvec_rx_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvec_rx_completed(%struct.nvec_chip* %0) #0 {
  %2 = alloca %struct.nvec_chip*, align 8
  store %struct.nvec_chip* %0, %struct.nvec_chip** %2, align 8
  %3 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %4 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %9 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i64 @nvec_msg_size(%struct.TYPE_4__* %10)
  %12 = icmp ne i64 %7, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %15 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %18 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i64 @nvec_msg_size(%struct.TYPE_4__* %19)
  %21 = trunc i64 %20 to i32
  %22 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %23 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %27)
  %29 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %30 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %31 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @nvec_msg_free(%struct.nvec_chip* %29, %struct.TYPE_4__* %32)
  %34 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %35 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %37 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NVEC_BAT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %13
  %46 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %47 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %46, i32 0, i32 1
  %48 = call i32 @complete(i32* %47)
  br label %49

49:                                               ; preds = %45, %13
  br label %79

50:                                               ; preds = %1
  %51 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %52 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %51, i32 0, i32 4
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %55 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %59 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %58, i32 0, i32 5
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %62 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %61, i32 0, i32 4
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %65 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %67 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @nvec_msg_is_event(%struct.TYPE_4__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %50
  %72 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %73 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %72, i32 0, i32 1
  %74 = call i32 @complete(i32* %73)
  br label %75

75:                                               ; preds = %71, %50
  %76 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %77 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %76, i32 0, i32 0
  %78 = call i32 @schedule_work(i32* %77)
  br label %79

79:                                               ; preds = %75, %49
  ret void
}

declare dso_local i64 @nvec_msg_size(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @nvec_msg_free(%struct.nvec_chip*, %struct.TYPE_4__*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nvec_msg_is_event(%struct.TYPE_4__*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
