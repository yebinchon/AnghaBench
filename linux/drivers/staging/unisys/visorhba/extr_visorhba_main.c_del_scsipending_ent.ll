; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_del_scsipending_ent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_del_scsipending_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorhba_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@MAX_PENDING_REQUESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.visorhba_devdata*, i32)* @del_scsipending_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @del_scsipending_ent(%struct.visorhba_devdata* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.visorhba_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.visorhba_devdata* %0, %struct.visorhba_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_PENDING_REQUESTS, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %14 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %18 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %7, align 8
  %26 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %27 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %34 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %41 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %12, %11
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
