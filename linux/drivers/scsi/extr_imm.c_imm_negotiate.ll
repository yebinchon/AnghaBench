; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_negotiate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16, i32 }

@.str = private unnamed_addr constant [54 x i8] c"IMM: IEEE1284 negotiate indicates no data available.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @imm_negotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_negotiate(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 4
  store i16 %9, i16* %4, align 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %15 [
    i32 129, label %13
    i32 128, label %14
  ]

13:                                               ; preds = %1
  store i8 0, i8* %6, align 1
  br label %16

14:                                               ; preds = %1
  store i8 1, i8* %6, align 1
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

16:                                               ; preds = %14, %13
  %17 = load i16, i16* %4, align 2
  %18 = call i32 @w_ctr(i16 zeroext %17, i32 4)
  %19 = call i32 @udelay(i32 5)
  %20 = load i16, i16* %4, align 2
  %21 = load i8, i8* %6, align 1
  %22 = call i32 @w_dtr(i16 zeroext %20, i8 zeroext %21)
  %23 = call i32 @udelay(i32 100)
  %24 = load i16, i16* %4, align 2
  %25 = call i32 @w_ctr(i16 zeroext %24, i32 6)
  %26 = call i32 @udelay(i32 5)
  %27 = load i16, i16* %4, align 2
  %28 = call i32 @r_str(i16 zeroext %27)
  %29 = and i32 %28, 32
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %5, align 1
  %34 = call i32 @udelay(i32 5)
  %35 = load i16, i16* %4, align 2
  %36 = call i32 @w_ctr(i16 zeroext %35, i32 7)
  %37 = call i32 @udelay(i32 5)
  %38 = load i16, i16* %4, align 2
  %39 = call i32 @w_ctr(i16 zeroext %38, i32 6)
  %40 = load i8, i8* %5, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %16
  %43 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = load i32, i32* @DID_ERROR, align 4
  %46 = call i32 @imm_fail(%struct.TYPE_4__* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %16
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @w_dtr(i16 zeroext, i8 zeroext) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @imm_fail(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
