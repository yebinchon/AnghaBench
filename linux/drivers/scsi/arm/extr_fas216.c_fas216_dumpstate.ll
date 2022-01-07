; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_dumpstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_dumpstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_IS = common dso_local global i32 0, align 4
@REG_STAT = common dso_local global i32 0, align 4
@REG_INST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"FAS216: CTCL=%02X CTCM=%02X CMD=%02X STAT=%02X INST=%02X IS=%02X CFIS=%02X\00", align 1
@REG_CTCL = common dso_local global i32 0, align 4
@REG_CTCM = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@REG_CFIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c" CNTL1=%02X CNTL2=%02X CNTL3=%02X CTCH=%02X\0A\00", align 1
@REG_CNTL1 = common dso_local global i32 0, align 4
@REG_CNTL2 = common dso_local global i32 0, align 4
@REG_CNTL3 = common dso_local global i32 0, align 4
@REG_CTCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @fas216_dumpstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_dumpstate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @REG_IS, align 4
  %8 = call zeroext i8 @fas216_readb(i32* %6, i32 %7)
  store i8 %8, i8* %3, align 1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @REG_STAT, align 4
  %11 = call zeroext i8 @fas216_readb(i32* %9, i32 %10)
  store i8 %11, i8* %4, align 1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @REG_INST, align 4
  %14 = call zeroext i8 @fas216_readb(i32* %12, i32 %13)
  store i8 %14, i8* %5, align 1
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @REG_CTCL, align 4
  %17 = call zeroext i8 @fas216_readb(i32* %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @REG_CTCM, align 4
  %20 = call zeroext i8 @fas216_readb(i32* %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @REG_CMD, align 4
  %23 = call zeroext i8 @fas216_readb(i32* %21, i32 %22)
  %24 = load i8, i8* %4, align 1
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @REG_CFIS, align 4
  %31 = call zeroext i8 @fas216_readb(i32* %29, i32 %30)
  %32 = zext i8 %31 to i32
  %33 = call i32 (i8*, i8, i8, i8, i8, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8 zeroext %17, i8 zeroext %20, i8 zeroext %23, i8 zeroext %24, i32 %26, i32 %28, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @REG_CNTL1, align 4
  %36 = call zeroext i8 @fas216_readb(i32* %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @REG_CNTL2, align 4
  %39 = call zeroext i8 @fas216_readb(i32* %37, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @REG_CNTL3, align 4
  %42 = call zeroext i8 @fas216_readb(i32* %40, i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @REG_CTCH, align 4
  %45 = call zeroext i8 @fas216_readb(i32* %43, i32 %44)
  %46 = call i32 (i8*, i8, i8, i8, i8, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %36, i8 zeroext %39, i8 zeroext %42, i8 zeroext %45)
  ret void
}

declare dso_local zeroext i8 @fas216_readb(i32*, i32) #1

declare dso_local i32 @printk(i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
