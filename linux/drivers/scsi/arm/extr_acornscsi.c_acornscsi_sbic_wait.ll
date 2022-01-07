; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_acornscsi.c_acornscsi_sbic_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_acornscsi.c_acornscsi_sbic_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SBIC_ASR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"scsi%d: timeout while %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i8*)* @acornscsi_sbic_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acornscsi_sbic_wait(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  br label %13

13:                                               ; preds = %25, %5
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = load i32, i32* @SBIC_ASR, align 4
  %16 = call i32 @sbic_arm_read(%struct.TYPE_6__* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %37

23:                                               ; preds = %13
  %24 = call i32 @udelay(i32 1)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %13, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35)
  store i32 -1, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @sbic_arm_read(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
