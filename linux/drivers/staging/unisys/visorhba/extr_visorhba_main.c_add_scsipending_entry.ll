; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_add_scsipending_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_add_scsipending_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorhba_devdata = type { i32, i32, %struct.scsipending* }
%struct.scsipending = type { i8, i32, i32* }

@MAX_PENDING_REQUESTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visorhba_devdata*, i8, i8*)* @add_scsipending_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_scsipending_entry(%struct.visorhba_devdata* %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.visorhba_devdata*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scsipending*, align 8
  %10 = alloca i32, align 4
  store %struct.visorhba_devdata* %0, %struct.visorhba_devdata** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %11 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %12 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %45, %3
  %19 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %20 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %19, i32 0, i32 2
  %21 = load %struct.scsipending*, %struct.scsipending** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %21, i64 %23
  %25 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @MAX_PENDING_REQUESTS, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %35 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %40 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %83

45:                                               ; preds = %28
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %48 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %47, i32 0, i32 2
  %49 = load %struct.scsipending*, %struct.scsipending** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %49, i64 %51
  store %struct.scsipending* %52, %struct.scsipending** %9, align 8
  %53 = load %struct.scsipending*, %struct.scsipending** %9, align 8
  %54 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %53, i32 0, i32 1
  %55 = call i32 @memset(i32* %54, i32 0, i32 4)
  %56 = load i8, i8* %6, align 1
  %57 = load %struct.scsipending*, %struct.scsipending** %9, align 8
  %58 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %57, i32 0, i32 0
  store i8 %56, i8* %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load i8*, i8** %7, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.scsipending*, %struct.scsipending** %9, align 8
  %65 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  br label %71

66:                                               ; preds = %46
  %67 = load %struct.scsipending*, %struct.scsipending** %9, align 8
  %68 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %67, i32 0, i32 1
  %69 = load %struct.scsipending*, %struct.scsipending** %9, align 8
  %70 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* @MAX_PENDING_REQUESTS, align 4
  %75 = srem i32 %73, %74
  %76 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %77 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %79 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %78, i32 0, i32 1
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %71, %38
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
