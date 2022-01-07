; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_detect_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_detect_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_CMD = common dso_local global i32 0, align 4
@CMD_RESETCHIP = common dso_local global i32 0, align 4
@CMD_NOP = common dso_local global i32 0, align 4
@REG_CNTL3 = common dso_local global i32 0, align 4
@REG_CNTL2 = common dso_local global i32 0, align 4
@CNTL2_S2FE = common dso_local global i32 0, align 4
@TYPE_NCR53C90 = common dso_local global i32 0, align 4
@TYPE_NCR53C90A = common dso_local global i32 0, align 4
@CNTL3_ADIDCHK = common dso_local global i32 0, align 4
@CMD_WITHDMA = common dso_local global i32 0, align 4
@CNTL2_ENF = common dso_local global i32 0, align 4
@REG_ID = common dso_local global i32 0, align 4
@TYPE_Am53CF94 = common dso_local global i32 0, align 4
@TYPE_EmFAS216 = common dso_local global i32 0, align 4
@TYPE_QLFAS216 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"family %x rev %x\0A\00", align 1
@TYPE_NCR53C9x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fas216_detect_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fas216_detect_type(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @REG_CMD, align 4
  %8 = load i32, i32* @CMD_RESETCHIP, align 4
  %9 = call i32 @fas216_writeb(i32* %6, i32 %7, i32 %8)
  %10 = call i32 @udelay(i32 50)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @REG_CMD, align 4
  %13 = load i32, i32* @CMD_NOP, align 4
  %14 = call i32 @fas216_writeb(i32* %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @REG_CNTL3, align 4
  %17 = call i32 @fas216_writeb(i32* %15, i32 %16, i32 0)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @REG_CNTL2, align 4
  %20 = load i32, i32* @CNTL2_S2FE, align 4
  %21 = call i32 @fas216_writeb(i32* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @REG_CNTL2, align 4
  %24 = call i32 @fas216_readb(i32* %22, i32 %23)
  %25 = and i32 %24, -225
  %26 = load i32, i32* @CNTL2_S2FE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @TYPE_NCR53C90, align 4
  store i32 %29, i32* %2, align 4
  br label %108

30:                                               ; preds = %1
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @REG_CNTL2, align 4
  %33 = call i32 @fas216_writeb(i32* %31, i32 %32, i32 0)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @REG_CNTL3, align 4
  %36 = call i32 @fas216_writeb(i32* %34, i32 %35, i32 0)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @REG_CNTL3, align 4
  %39 = call i32 @fas216_writeb(i32* %37, i32 %38, i32 5)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @REG_CNTL3, align 4
  %42 = call i32 @fas216_readb(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 5
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @TYPE_NCR53C90A, align 4
  store i32 %45, i32* %2, align 4
  br label %108

46:                                               ; preds = %30
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @REG_CNTL3, align 4
  %49 = call i32 @fas216_writeb(i32* %47, i32 %48, i32 0)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @REG_CNTL3, align 4
  %52 = load i32, i32* @CNTL3_ADIDCHK, align 4
  %53 = call i32 @fas216_writeb(i32* %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @REG_CNTL3, align 4
  %56 = call i32 @fas216_writeb(i32* %54, i32 %55, i32 0)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @REG_CMD, align 4
  %59 = load i32, i32* @CMD_RESETCHIP, align 4
  %60 = call i32 @fas216_writeb(i32* %57, i32 %58, i32 %59)
  %61 = call i32 @udelay(i32 50)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @REG_CMD, align 4
  %64 = load i32, i32* @CMD_WITHDMA, align 4
  %65 = load i32, i32* @CMD_NOP, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @fas216_writeb(i32* %62, i32 %63, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @REG_CNTL2, align 4
  %70 = load i32, i32* @CNTL2_ENF, align 4
  %71 = call i32 @fas216_writeb(i32* %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @REG_CMD, align 4
  %74 = load i32, i32* @CMD_RESETCHIP, align 4
  %75 = call i32 @fas216_writeb(i32* %72, i32 %73, i32 %74)
  %76 = call i32 @udelay(i32 50)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @REG_CMD, align 4
  %79 = load i32, i32* @CMD_NOP, align 4
  %80 = call i32 @fas216_writeb(i32* %77, i32 %78, i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* @REG_ID, align 4
  %83 = call i32 @fas216_readb(i32* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 3
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, 7
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  switch i32 %88, label %102 [
    i32 1, label %89
    i32 2, label %95
  ]

89:                                               ; preds = %46
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @TYPE_Am53CF94, align 4
  store i32 %93, i32* %2, align 4
  br label %108

94:                                               ; preds = %89
  br label %103

95:                                               ; preds = %46
  %96 = load i32, i32* %5, align 4
  switch i32 %96, label %101 [
    i32 2, label %97
    i32 3, label %99
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* @TYPE_EmFAS216, align 4
  store i32 %98, i32* %2, align 4
  br label %108

99:                                               ; preds = %95
  %100 = load i32, i32* @TYPE_QLFAS216, align 4
  store i32 %100, i32* %2, align 4
  br label %108

101:                                              ; preds = %95
  br label %103

102:                                              ; preds = %46
  br label %103

103:                                              ; preds = %102, %101, %94
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* @TYPE_NCR53C9x, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %99, %97, %92, %44, %28
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @fas216_writeb(i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @fas216_readb(i32*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
