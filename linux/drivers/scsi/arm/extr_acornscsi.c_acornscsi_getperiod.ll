; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_acornscsi.c_acornscsi_getperiod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_acornscsi.c_acornscsi_getperiod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8 }

@sync_xfer_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @acornscsi_getperiod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acornscsi_getperiod(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 240
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %3, align 1
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8 0, i8* %3, align 1
  br label %13

13:                                               ; preds = %12, %1
  store i32 1, i32* %4, align 4
  br label %14

14:                                               ; preds = %41, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sync_xfer_table, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sync_xfer_table, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %24, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sync_xfer_table, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %14

44:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
